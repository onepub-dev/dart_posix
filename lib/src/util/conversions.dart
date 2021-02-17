import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart' as pffi;
import 'package:ffi/ffi.dart';

/// Copies a dart list of integers into a c buffer.
/// You MUST free the returned buffer by calling [free];
ffi.Pointer<ffi.Int8> copyDartListToCBuff(List<int> buf) {
  var c_buf = pffi.malloc.allocate<ffi.Int8>(buf.length);

  for (var i = 0; i < buf.length; i++) {
    c_buf[i] = buf.indexOf(i);
  }

  return c_buf;
}

List<String> copyCStringListToDartList(
    ffi.Pointer<ffi.Pointer<ffi.Int8>> c_string_list,
    {bool free = true}) {
  final list = <String>[];

  var count = 0;
  while (true) {
    final _value = c_string_list.elementAt(count).value;

    if (_value.address == 0) {
      break;
    }

    list.add(_value.cast<Utf8>().toDartString());
    count += 1;
  }

  if (free) {
    pffi.malloc.free(c_string_list);
  }
  return list;
}

/// Copies the passed [c_buf] to a Dart String frees
/// the [c_buf] allocated memory and returns
/// its contents of [c_buf] as a Dart String.
String copyCBuffToDartString<T extends ffi.NativeType>(ffi.Pointer<T> c_buf,
    {bool free = true}) {
  var string = c_buf.cast<Utf8>().toDartString();

  if (free) {
    pffi.malloc.free(c_buf);
  }

  return string;
}
