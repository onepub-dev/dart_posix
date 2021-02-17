import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart';
import 'package:posix/src/util/conversions.dart';

import '../posix.dart';

/// We provide a wrapper for each posix method that takes and return dart types.
///
/// We recommend using the dart wrappers as they deal with memory allocation/cleanup
/// and type conversion.
///

/// Gets the absolute pathname of the current working directory.
/// If an error occurs a a [PosixException] is thrown with the error.
String getcwd() {
  var c_buf = malloc.allocate<ffi.Int8>(PATH_MAX);

  var result = native_getwd(
    c_buf,
  );

  if (result == ffi.nullptr) {
    var error = copyCBuffToDartString(c_buf);
    throw PosixException(error, -1);
  }

  return copyCBuffToDartString(c_buf);
}

/// Return the session ID of the given process.
int getsid(int pid) {
  return native_getsid(pid);
}

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
  var c_name = native_ttyname(fd);

  return c_name.cast<Utf8>().toDartString();
}
