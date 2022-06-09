/* Copyright (C) S. Brett Sutton - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential
 * Written by Brett Sutton <bsutton@onepub.dev>, Jan 2022
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
