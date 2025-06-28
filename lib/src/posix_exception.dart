/*
 * Copyright (c) 2025 S. Brett Sutton 2022+
 *
 * This software is licensed under the MIT License.
 * SPDX-License-Identifier: MIT
 */

import 'string/string.dart';

class PosixException implements Exception {
  PosixException(this.message, this.code, {this.posixError});
  String message;

  /// This should be the value returned by errno().
  int code;

  /// An optional value which allows the caller to over-ride the
  /// standard error returned vi [sterror(errno)]. If not supplied then
  /// we call [strerror(errno)] to get the posix error description.
  String? posixError;

  @override
  String toString() {
    posixError ??= strerror(code);

    return 'Error: $code $posixError Message: $message';
  }
}
