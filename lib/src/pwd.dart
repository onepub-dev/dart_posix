import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart';
import 'package:posix/posix.dart';
import 'package:posix/src/util/conversions.dart';

import 'libc.dart';

/// Rewind the user database stream.
///
/// This function is a possible cancellation point and therefore not
/// marked with __THROW.
void setpwent() {
  _setpwent ??=
      Libc().dylib.lookupFunction<_c_setpwent, _dart_setpwent>('setpwent');
  return _setpwent();
}

_dart_setpwent _setpwent;

/// Close the user database stream.
///
/// This function is a possible cancellation point and therefore not
/// marked with __THROW.
void endpwent() {
  _endpwent ??=
      Libc().dylib.lookupFunction<_c_endpwent, _dart_endpwent>('endpwent');
  return _endpwent();
}

_dart_endpwent _endpwent;

/// Read an entry from the user database stream, opening it if necessary.
///
/// This function is a possible cancellation point and therefore not
/// marked with __THROW.
Passwd getpwent() {
  _getpwent ??=
      Libc().dylib.lookupFunction<_c_getpwent, _dart_getpwent>('getpwent');
  return _buildPasswd(_getpwent(),
      'Error occured attempting to read the next entry from the user database stream');
}

_dart_getpwent _getpwent;

// /// Read a user database entry from STREAM.
// ///
// /// This function is not part of POSIX and therefore no official
// /// cancellation point.  But due to similarity with an POSIX interface
// /// or due to the implementation it is a cancellation point and
// /// therefore not marked with __THROW.
// Passwd fgetpwent(
//   ffi.Pointer<_IO_FILE> __stream,
// ) {
//   _fgetpwent ??=
//       Libc().dylib.lookupFunction<_c_fgetpwent, _dart_fgetpwent>('fgetpwent');
//   ffi.Pointer<_passwd> _pw_passwd = _fgetpwent(
//     __stream,
//   );

//   Passwd passwd = _buildPasswd(_pw_passwd);
//   return passwd;
// }

// _dart_fgetpwent _fgetpwent;

// /// Write a given user database entry onto the given stream.
// ///
// /// This function is not part of POSIX and therefore no official
// /// cancellation point.  But due to similarity with an POSIX interface
// /// or due to the implementation it is a cancellation point and
// /// therefore not marked with __THROW.
// int putpwent(
//   ffi.Pointer<_passwd> __p,
//   ffi.Pointer<_IO_FILE> __f,
// ) {
//   _putpwent ??=
//       Libc().dylib.lookupFunction<_c_putpwent, _dart_putpwent>('putpwent');
//   return _putpwent(
//     __p,
//     __f,
//   );
// }

// _dart_putpwent _putpwent;

/// Retrieve the user database entry for the given user ID.
///
/// This function is a possible cancellation point and therefore not
/// marked with __THROW.
Passwd getpwuid(
  int uid,
) {
  _getpwuid ??=
      Libc().dylib.lookupFunction<_c_getpwuid, _dart_getpwuid>('getpwuid');
  return _buildPasswd(
      _getpwuid(
        uid,
      ),
      'Error occured attempting to Passwd for uid: $uid');
}

_dart_getpwuid _getpwuid;

/// Retrieve the user database entry for the given username.
///
/// This function is a possible cancellation point and therefore not
/// marked with __THROW.
Passwd getpwnam(String username) {
  clear_errno();
  var c_name = Utf8.toUtf8(username);
  

  _getpwnam ??=
      Libc().dylib.lookupFunction<_c_getpwnam, _dart_getpwnam>('getpwnam');
  final passwd = _buildPasswd(
      _getpwnam(
        c_name,
      ),
      'Error occured attempting to Passwd for username: $username');

  free(c_name);

  return passwd;
}

_dart_getpwnam _getpwnam;

// /// This function is not part of POSIX and therefore no official
// /// cancellation point.  But due to similarity with an POSIX interface
// /// or due to the implementation it is a cancellation point and
// /// therefore not marked with __THROW.
// int getpwent_r(
//   ffi.Pointer<_passwd> __resultbuf,
//   ffi.Pointer<ffi.Int8> __buffer,
//   int __buflen,
//   ffi.Pointer<ffi.Pointer<_passwd>> __result,
// ) {
//   _getpwent_r ??= Libc()
//       .dylib
//       .lookupFunction<_c_getpwent_r, _dart_getpwent_r>('getpwent_r');
//   return _getpwent_r(
//     __resultbuf,
//     __buffer,
//     __buflen,
//     __result,
//   );
// }

// _dart_getpwent_r _getpwent_r;

// int getpwuid_r(
//   int __uid,
//   ffi.Pointer<_passwd> __resultbuf,
//   ffi.Pointer<ffi.Int8> __buffer,
//   int __buflen,
//   ffi.Pointer<ffi.Pointer<_passwd>> __result,
// ) {
//   _getpwuid_r ??= Libc()
//       .dylib
//       .lookupFunction<_c_getpwuid_r, _dart_getpwuid_r>('getpwuid_r');
//   return _getpwuid_r(
//     __uid,
//     __resultbuf,
//     __buffer,
//     __buflen,
//     __result,
//   );
// }

// _dart_getpwuid_r _getpwuid_r;

// int getpwnam_r(
//   ffi.Pointer<ffi.Int8> __name,
//   ffi.Pointer<_passwd> __resultbuf,
//   ffi.Pointer<ffi.Int8> __buffer,
//   int __buflen,
//   ffi.Pointer<ffi.Pointer<_passwd>> __result,
// ) {
//   _getpwnam_r ??= Libc()
//       .dylib
//       .lookupFunction<_c_getpwnam_r, _dart_getpwnam_r>('getpwnam_r');
//   return _getpwnam_r(
//     __name,
//     __resultbuf,
//     __buffer,
//     __buflen,
//     __result,
//   );
// }

// _dart_getpwnam_r _getpwnam_r;

// /// Read a user database entry from STREAM.  This function is not
// /// standardized and probably never will.
// ///
// /// This function is not part of POSIX and therefore no official
// /// cancellation point.  But due to similarity with an POSIX interface
// /// or due to the implementation it is a cancellation point and
// /// therefore not marked with __THROW.
// int fgetpwent_r(
//   ffi.Pointer<_IO_FILE> __stream,
//   ffi.Pointer<_passwd> __resultbuf,
//   ffi.Pointer<ffi.Int8> __buffer,
//   int __buflen,
//   ffi.Pointer<ffi.Pointer<_passwd>> __result,
// ) {
//   _fgetpwent_r ??= Libc()
//       .dylib
//       .lookupFunction<_c_fgetpwent_r, _dart_fgetpwent_r>('fgetpwent_r');
//   return _fgetpwent_r(
//     __stream,
//     __resultbuf,
//     __buffer,
//     __buflen,
//     __result,
//   );
// }

// _dart_fgetpwent_r _fgetpwent_r;

/// Dart implemenation of posix passwd structure
class Passwd {
  String username;

  /// Hashed passphrase, if shadow database
  /// not in use (see shadow.h).
  String password;

  /// User ID.
  int uid;

  /// Group ID.
  int gid;

  /// Comma delimited set of fields about the user (name, phone, ...) = pw_gecos in posix.
  String user_info;

  /// Home directory - pw_dir in posix
  String homePathTo;

  /// Shell program - pw_shell in posix
  String shellPathTo;

  @override
  String toString() {
    return 'username: $username uid: $uid gid: $gid home: $homePathTo shell: $shellPathTo';
  }
}

Passwd _buildPasswd(ffi.Pointer<_passwd> _pw_passwd, String error) {
  if (_pw_passwd == null) throw PosixException(error, errno());

  final passwd = Passwd();

  passwd.username = copyCBuffToDartString(_pw_passwd.ref.pw_name, free: false);
  passwd.password = copyCBuffToDartString(_pw_passwd.ref.pw_passwd, free: false);
  passwd.user_info =
      copyCBuffToDartString(_pw_passwd.ref.pw_gecos, free: false);
  passwd.uid = _pw_passwd.ref.pw_uid;
  passwd.gid = _pw_passwd.ref.pw_gid;
  passwd.homePathTo = copyCBuffToDartString(_pw_passwd.ref.pw_dir, free: false);
  passwd.shellPathTo =
      copyCBuffToDartString(_pw_passwd.ref.pw_shell, free: false);

  /// We don't own the pointer so no need to free it.
  /// free(_pw_passwd);
  return passwd;
}

/// A record in the user database.
class _passwd extends ffi.Struct {
  /// Username.
  ffi.Pointer<ffi.Int8> pw_name;

  /// Hashed passphrase, if shadow database
  /// not in use (see shadow.h).
  ffi.Pointer<ffi.Int8> pw_passwd;

  /// User ID.
  @ffi.Uint32()
  int pw_uid;

  /// Group ID.
  @ffi.Uint32()
  int pw_gid;

  /// Real name.
  ffi.Pointer<ffi.Int8> pw_gecos;

  /// Home directory.
  ffi.Pointer<ffi.Int8> pw_dir;

  /// Shell program.
  ffi.Pointer<ffi.Int8> pw_shell;
}

// class _IO_FILE extends ffi.Struct {}

/////////////////////////////////////////////////////////////
///
/// typedefs
///
/////////////////////////////////////////////////////////////

typedef _c_setpwent = ffi.Void Function();

typedef _dart_setpwent = void Function();

typedef _c_endpwent = ffi.Void Function();

typedef _dart_endpwent = void Function();

typedef _c_getpwent = ffi.Pointer<_passwd> Function();

typedef _dart_getpwent = ffi.Pointer<_passwd> Function();

// typedef _c_fgetpwent = ffi.Pointer<_passwd> Function(
//   ffi.Pointer<_IO_FILE> __stream,
// );

// typedef _dart_fgetpwent = ffi.Pointer<_passwd> Function(
//   ffi.Pointer<_IO_FILE> __stream,
// );

// typedef _c_putpwent = ffi.Int32 Function(
//   ffi.Pointer<_passwd> __p,
//   ffi.Pointer<_IO_FILE> __f,
// );

// typedef _dart_putpwent = int Function(
//   ffi.Pointer<_passwd> __p,
//   ffi.Pointer<_IO_FILE> __f,
// );

typedef _c_getpwuid = ffi.Pointer<_passwd> Function(
  ffi.Uint32 __uid,
);

typedef _dart_getpwuid = ffi.Pointer<_passwd> Function(
  int __uid,
);

typedef _c_getpwnam = ffi.Pointer<_passwd> Function(
  ffi.Pointer<Utf8> __name,
);

typedef _dart_getpwnam = ffi.Pointer<_passwd> Function(
  ffi.Pointer<Utf8> __name,
);

// typedef _c_getpwent_r = ffi.Int32 Function(
//   ffi.Pointer<_passwd> __resultbuf,
//   ffi.Pointer<ffi.Int8> __buffer,
//   ffi.Uint64 __buflen,
//   ffi.Pointer<ffi.Pointer<_passwd>> __result,
// );

// typedef _dart_getpwent_r = int Function(
//   ffi.Pointer<_passwd> __resultbuf,
//   ffi.Pointer<ffi.Int8> __buffer,
//   int __buflen,
//   ffi.Pointer<ffi.Pointer<_passwd>> __result,
// );

// typedef _c_getpwuid_r = ffi.Int32 Function(
//   ffi.Uint32 __uid,
//   ffi.Pointer<_passwd> __resultbuf,
//   ffi.Pointer<ffi.Int8> __buffer,
//   ffi.Uint64 __buflen,
//   ffi.Pointer<ffi.Pointer<_passwd>> __result,
// );

// typedef _dart_getpwuid_r = int Function(
//   int __uid,
//   ffi.Pointer<_passwd> __resultbuf,
//   ffi.Pointer<ffi.Int8> __buffer,
//   int __buflen,
//   ffi.Pointer<ffi.Pointer<_passwd>> __result,
// );

// typedef _c_getpwnam_r = ffi.Int32 Function(
//   ffi.Pointer<ffi.Int8> __name,
//   ffi.Pointer<_passwd> __resultbuf,
//   ffi.Pointer<ffi.Int8> __buffer,
//   ffi.Uint64 __buflen,
//   ffi.Pointer<ffi.Pointer<_passwd>> __result,
// );

// typedef _dart_getpwnam_r = int Function(
//   ffi.Pointer<ffi.Int8> __name,
//   ffi.Pointer<_passwd> __resultbuf,
//   ffi.Pointer<ffi.Int8> __buffer,
//   int __buflen,
//   ffi.Pointer<ffi.Pointer<_passwd>> __result,
// );

// typedef _c_fgetpwent_r = ffi.Int32 Function(
//   ffi.Pointer<_IO_FILE> __stream,
//   ffi.Pointer<_passwd> __resultbuf,
//   ffi.Pointer<ffi.Int8> __buffer,
//   ffi.Uint64 __buflen,
//   ffi.Pointer<ffi.Pointer<_passwd>> __result,
// );

// typedef _dart_fgetpwent_r = int Function(
//   ffi.Pointer<_IO_FILE> __stream,
//   ffi.Pointer<_passwd> __resultbuf,
//   ffi.Pointer<ffi.Int8> __buffer,
//   int __buflen,
//   ffi.Pointer<ffi.Pointer<_passwd>> __result,
// );
