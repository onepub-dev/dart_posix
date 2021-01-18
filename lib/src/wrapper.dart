import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart';
import 'package:posix/src/util/conversions.dart';

import '../posix.dart';

/// We provide a wrapper for each posix method that takes and return dart types.
///
/// We recommend using the dart wrappers as they deal with memory allocation/cleanup
/// and type conversion.
///

/// Get the process ID of the current process.
int getpid() {
  return p_getpid();
}

/// Get the process ID of the current process's parent.
int getppid() {
  return p_getppid();
}

/// Gets the absolute pathname of the current working directory.
/// If an error occurs a a [PosixException] is thrown with the error.
String getcwd() {
  var c_buf = allocate<ffi.Int8>(count: PATH_MAX);

  var result = p_getwd(
    c_buf,
  );

  if (result == null) {
    var error = copyCBuffToDartString(c_buf);
    throw PosixException(error, -1);
  }

  return copyCBuffToDartString(c_buf);
}

/// Add [increment]] to priority of the current process
/// and returns the new process priority.
int nice(int increment) {
  return p_nice(increment);
}

/// Get the real user ID of the calling process.
int getuid() {
  return p_getuid();
}

/// Get the effective group ID of the calling process.
///
///
int getegid() {
  return p_getegid();
}

/// Return the session ID of the given process.
int getsid(int pid) {
  return p_getsid(pid);
}

/// Set the user ID of the calling process to UID.
/// If the calling process is the super-user, set the real
/// and effective user IDs, and the saved set-user-ID to UID;
/// if not, the effective user ID is set to UID.
void setuid(int uid) {
  p_setuid(uid);
}

/// Set the real user ID of the calling process to RUID,
/// and the effective user ID of the calling process to EUID.
/// Throws [PosixException] if the operation fails.
void setreuid(
  int ruid,
  int euid,
) {
  p_setreuid(ruid, euid);
}

/// Set the effective user ID of the calling process to UID.
void seteuid(
  int uid,
) {
  p_seteuid(uid);
}

/// Set the group ID of the calling process to GID.
/// If the calling process is the super-user, set the real
/// and effective group IDs, and the saved set-group-ID to GID;
/// if not, the effective group ID is set to GID.
/// Throws [PosixException] if the operation fails.
void setgid(
  int gid,
) {
  p_setgid(gid);
}

/// Set the real group ID of the calling process to RGID,
/// and the effective group ID of the calling process to EGID.
/// Throws [PosixException] if the operation fails.
void setregid(
  int rgid,
  int egid,
) {
  p_setregid(rgid, egid);
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
  var c_name = p_ttyname(fd);

  return Utf8.fromUtf8(c_name.cast());
}

/// Return the number of bytes in a page.  This is the system's page size,
/// which is not necessarily the same as the hardware page size.
int getpagesize() {
  return p_getpagesize();
}
