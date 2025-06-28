/*
 * Copyright (c) 2025 S. Brett Sutton 2022+
 *
 * This software is licensed under the MIT License.
 * SPDX-License-Identifier: MIT
 */

import 'dart:ffi' as ffi;
import 'dart:io' show Platform;

import '../posix.dart';

// ignore: constant_identifier_names
const int NULL = 0;

class Libc {
  factory Libc() => _self;
  Libc._internal() {
    var path = 'libc.so.6';
    if (Platform.isMacOS) {
      path = '/usr/lib/libSystem.dylib';
    }
    if (Platform.isWindows) {
      path = r'primitives_library\Debug\primitives.dll';
    }
    _dylib = ffi.DynamicLibrary.open(path);
  }
  static final Libc _self = Libc._internal();

  ffi.DynamicLibrary? _dylib;

  ffi.DynamicLibrary get dylib {
    if (_dylib == null) {
      throw PosixException('Posix is not supported on this platform.', 1);
    }
    return _dylib!;
  }

  /// Returns true if posix is supported on this platform.
  ///
  /// Internally we check to see if the required shared library
  /// (.so, .dylib, .dll)
  /// is available.
  bool get isPosixSupported => _dylib != null;

  /// Returns the entry point for [funcname].
  /// If posix is not supported then a [PosixException] is thrown.
  ffi.Pointer<T> lookup<T extends ffi.NativeType>(String funcname) {
    if (_dylib != null) {
      try {
        return _dylib!.lookup(funcname);
        // ignore: avoid_catching_errors
      } on ArgumentError catch (_) {
        throw PosixException(
            'The $funcname is not supported by posix on this platform.', 1);
      }
    } else {
      throw PosixException(
          'Posix is not supported on this platform as a result an attempt to '
          'call $funcname failed.',
          1);
    }
  }

  // F lookupFunction<T extends Function, F extends Function>(String symbolName)
  // =>
  //     dylib.lookupFunction(symbolName);
}
