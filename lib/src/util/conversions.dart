import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart' as pffi;
import 'package:ffi/ffi.dart';

/// Copies a dart list of integers into a c buffer.
/// You MUST free the returned buffer by calling [pffi.malloc.free];
ffi.Pointer<ffi.Int8> copyDartListToCBuff(List<int> buf) {
  final cBuf = pffi.malloc.allocate<ffi.Int8>(buf.length);

  for (var i = 0; i < buf.length; i++) {
    cBuf[i] = buf.indexOf(i);
  }

  return cBuf;
}

List<String> copyCStringListToDartList(
    ffi.Pointer<ffi.Pointer<ffi.Int8>> cStringList,
    {bool free = true}) {
  final list = <String>[];

  var count = 0;
  while (true) {
    final _value = cStringList.elementAt(count).value;

    if (_value.address == 0) {
      break;
    }

    list.add(_value.cast<Utf8>().toDartString());
    count += 1;
  }

  if (free) {
    pffi.malloc.free(cStringList);
  }
  return list;
}

/// Copies the passed [cBuf] to a Dart String frees
/// the [cBuf] allocated memory and returns
/// its contents of [cBuf] as a Dart String.
String copyCBuffToDartString<T extends ffi.NativeType>(ffi.Pointer<T> cBuf,
    {bool free = true}) {
  final string = cBuf.cast<Utf8>().toDartString();

  if (free) {
    pffi.malloc.free(cBuf);
  }

  return string;
}
