/* Copyright (C) S. Brett Sutton - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential
 * Written by Brett Sutton <bsutton@onepub.dev>, Jan 2022
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
