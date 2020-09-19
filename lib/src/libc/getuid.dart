import 'dart:ffi';

import 'libc.dart';

/// geteuid
typedef _getuid_func = Int32 Function();
typedef _getuid = int Function();

/// Gets the real user id (ruid)
/// The real user id is the uid used to create the current
/// processes.
///
/// See: geteuid
int  getuid() {
  final getuidPointer = Libc().lookup<_getuid_func>('getuid');
  final getuid = getuidPointer.asFunction<_getuid>();
  var uid = getuid();

  return uid;
}
