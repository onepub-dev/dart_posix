/*
 * Copyright (c) 2025 S. Brett Sutton 2022+
 *
 * This software is licensed under the MIT License.
 * SPDX-License-Identifier: MIT
 */

import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart';

import '../posix.dart';

/// We provide a wrapper for each posix method that takes and return dart types.
///
/// We recommend using the dart wrappers as they deal with memory allocation/cleanup
/// and type conversion.
///

/// Gets the absolute pathname of the current working directory.
/// If an error occurs a a [PosixException] is thrown with the error.
String getcwd() {
  var size = 256;
  while (true) {
    final cBuf = malloc.allocate<ffi.Int8>(size);
    try {
      final result = native_getcwd(cBuf, size);
      if (result != ffi.nullptr) {
        return cBuf.cast<Utf8>().toDartString();
      }
      final error = errno();
      if (error != ERANGE) {
        throw PosixException('getcwd failed: ${strerror(error)}', error);
      }
    } finally {
      malloc.free(cBuf);
    }
    size *= 2;
  }
}

/// Return the session ID of the given process.
int getsid(int pid) => native_getsid(pid);

/// Set the real group ID of the calling process to RGID,
/// and the effective group ID of the calling process to EGID.
/// Throws [PosixException] if the operation fails.
void setregid(
  int rgid,
  int egid,
) {
  native_setregid(rgid, egid);
}

/// Return the pathname of the terminal associate with the [fd] or
/// null if no terminal is associated with the [fd]
///
/// Throws a [PosixException] if an error occurs.
///
/// This method is not thread safe.
String ttyname(
  int fd,
) {
  final cName = native_ttyname(fd);

  return cName.cast<Utf8>().toDartString();
}
