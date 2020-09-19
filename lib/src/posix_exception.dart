class PosixException implements Exception {
  String message;
  int code;
  PosixException(String message, int code);
}
