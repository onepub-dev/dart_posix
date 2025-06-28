/*
 * Copyright (c) 2025 S. Brett Sutton 2022+
 *
 * This software is licensed under the MIT License.
 * SPDX-License-Identifier: MIT
 */

import 'dart:convert';
import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart' as pffi;
import 'package:ffi/ffi.dart';

/// Copies a dart list of integers into a c buffer.
/// You MUST free the returned buffer by calling malloc.free;
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
    final _value = cStringList[count];

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

extension Utf8String on ffi.Array<ffi.Int8> {
  String toDartString(int maxLength) {
    final codeUnits = asTypedList(maxLength).takeWhile((c) => c != 0);
    return utf8.decode(codeUnits.toList());
  }
}

extension TypedInt8List on ffi.Array<ffi.Int8> {
  // https://github.com/dart-lang/sdk/issues/45508
  List<int> asTypedList(int length) => <int>[
        for (var i = 0; i < length; ++i) this[i],
      ];
}
