import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart';

import '../../posix.dart';

abstract class OsStatCall {
  OsStatCall(this.name);

  final String name;

  Stat call(String pathToFile) {
    final pathToFile_ptr = pathToFile.toNativeUtf8();
    try {
      return sysCall(pathToFile_ptr);
    } finally {
      malloc.free(pathToFile_ptr);
    }
  }

  DateTime fromSeconds(int seconds, [int nanoseconds = 0]) =>
    DateTime.fromMicrosecondsSinceEpoch(seconds * 1000000 + nanoseconds ~/ 1000);

  Stat sysCall(ffi.Pointer<Utf8> pathToFile_ptr);
}