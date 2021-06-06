import 'package:posix/posix.dart';

/// the simplified library provides a number of more obvious entry points
/// for common operations.
///
/// These functions simply wrap existing posix functions using modern naming
/// conventions.

String getUserNameByUID(int uid) {
  final pwd = getpwuid(uid);

  return pwd.username;
}
