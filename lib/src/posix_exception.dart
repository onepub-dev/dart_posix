import 'package:posix/src/string/string.dart';

class PosixException implements Exception {
  String message;
  int code;

  /// An optional value which allows the caller to over-ride the
  /// standard error returned vi [sterror(error)]. If not supplied then
  /// we call [strerror(error)] to get the posix error description.
  String? posixError;
  PosixException(this.message, this.code, {this.posixError});

  @override
  String toString() {
    posixError ??= strerror(code);

    return 'Error: $code $posixError Message: $message';
  }
}
