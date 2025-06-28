/*
 * Copyright (c) 2025 S. Brett Sutton 2022+
 *
 * This software is licensed under the MIT License.
 * SPDX-License-Identifier: MIT
 */

import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart';

import '../../posix.dart';

abstract class OsStatCall {
  OsStatCall(this.name);

  final String name;

  Stat call(String pathToFile) {
    final pathToFilePtr = pathToFile.toNativeUtf8();
    try {
      return sysCall(pathToFilePtr);
    } finally {
      malloc.free(pathToFilePtr);
    }
  }

  DateTime fromSeconds(int seconds, [int nanoseconds = 0]) =>
      DateTime.fromMicrosecondsSinceEpoch(
          seconds * 1000000 + nanoseconds ~/ 1000);

  Stat sysCall(ffi.Pointer<Utf8> pathToFilePtr);
}
