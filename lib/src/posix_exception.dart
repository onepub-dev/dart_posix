class PosixException implements Exception {
  String message;
  int code;
  PosixException(this.message, this.code);

  @override
  String toString() => 'Error: $code Message: $message';
}
