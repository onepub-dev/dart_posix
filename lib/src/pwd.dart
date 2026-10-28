/*
 * Copyright (c) 2025 S. Brett Sutton 2022+
 *
 * This software is licensed under the MIT License.
 * SPDX-License-Identifier: MIT
 */

import 'dart:ffi' as ffi;
import 'dart:io' show Platform;

import 'package:ffi/ffi.dart';

import '../posix.dart';
import 'libc.dart';
import 'util/conversions.dart';

/// Rewind the user database stream.
///
/// This function is a possible cancellation point and therefore not
/// marked with __THROW.
void setpwent() {
  _setpwent ??= Libc()
      .dylib
      .lookupFunction<ffi.Void Function(), _dart_setpwent>('setpwent');
  return _setpwent!();
}

_dart_setpwent? _setpwent;

/// Close the user database stream.
///
/// This function is a possible cancellation point and therefore not
/// marked with __THROW.
void endpwent() {
  _endpwent ??= Libc()
      .dylib
      .lookupFunction<ffi.Void Function(), _dart_endpwent>('endpwent');
  return _endpwent!();
}

_dart_endpwent? _endpwent;

/// Read an entry from the user database stream, opening it if necessary.
///
/// Repeated calls to getpwent will return the next use in the user database.
/// When all users have been read null will be returned.
///
/// Once you have finished reading fromthe stream  you MUST call endpwent() to
/// close the stream otherwise a memory leak will occur.
Passwd? getpwent() {
  _getpwent ??= Libc()
      .dylib
      .lookupFunction<ffi.Pointer<_passwd> Function(), _dart_getpwent>(
          'getpwent');

  final pwent = _getpwent!();
  if (pwent == ffi.nullptr) {
    return null;
  }
  return _buildPasswd(
      pwent,
      'Error occured attempting to read the next entry from the user '
      'database stream');
}

_dart_getpwent? _getpwent;

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
//       Libc().dylib.lookupFunction<_c_fgetpwent,
// _dart_fgetpwent>('fgetpwent');
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
/// Throws a [PosixException] if [uid] is not a know uid.
///
/// This function is a possible cancellation point and therefore not
/// marked with __THROW.
Passwd getpwuid(
  int uid,
) {
  _getpwuid ??= Libc().dylib.lookupFunction<
      ffi.Pointer<_passwd> Function(ffi.Uint32), _dart_getpwuid>('getpwuid');
  return _buildPasswd(
      _getpwuid!(
        uid,
      ),
      'Error occured attempting to retrieve Passwd for uid: $uid');
}

_dart_getpwuid? _getpwuid;

/// Retrieve the user database entry for the given username.
///
/// Throws a [PosixException] if [username] is is not a known
/// user.
///
/// This function is a possible cancellation point and therefore not
/// marked with __THROW.
Passwd getpwnam(String username) {
  clearErrno();
  final cName = toNativeUtf8Checked(username);
  try {
    _getpwnam ??= Libc().dylib.lookupFunction<
        ffi.Pointer<_passwd> Function(ffi.Pointer<Utf8>),
        _dart_getpwnam>('getpwnam');
    return _buildPasswd(
        _getpwnam!(
          cName,
        ),
        'Error occured attempting to retrieve Passwd for username: $username');
  } finally {
    malloc.free(cName);
  }
}

_dart_getpwnam? _getpwnam;

// _dart_fgetpwent_r _fgetpwent_r;

/// Dart implemenation of posix passwd structure
class Passwd {
  Passwd(
      {required this.username,
      required this.password,
      required this.uid,
      required this.gid,
      required this.userInfo,
      required this.homePathTo,
      required this.shellPathTo});
  String username;

  /// Hashed passphrase, if shadow database
  /// not in use (see shadow.h).
  String password;

  /// User ID.
  int uid;

  /// Group ID.
  int gid;

  /// Comma delimited set of fields about the user (name, phone, ...)
  /// = pw_gecos in posix.
  /// May be empty.
  String userInfo;

  /// Home directory - pw_dir in posix
  String homePathTo;

  /// Shell program - pw_shell in posix
  String shellPathTo;

  @override
  String toString() =>
      'username: $username uid: $uid gid: $gid home: $homePathTo shell: '
      '$shellPathTo gecos: $userInfo';
}

Passwd _buildPasswd(ffi.Pointer<_passwd> pwPasswd, String error) {
  if (pwPasswd == ffi.nullptr) {
    throw PosixException(error, errno());
  }

  if (Platform.isMacOS) {
    final mac = pwPasswd.cast<_passwdMac>().ref;
    return _copyPasswd(
      mac.name,
      mac.password,
      mac.uid,
      mac.gid,
      mac.gecos,
      mac.dir,
      mac.shell,
    );
  }
  final linux = pwPasswd.ref;
  return _copyPasswd(
    linux.name,
    linux.password,
    linux.uid,
    linux.gid,
    linux.gecos,
    linux.dir,
    linux.shell,
  );
}

Passwd _copyPasswd(
  ffi.Pointer<ffi.Int8> name,
  ffi.Pointer<ffi.Int8> passwordPointer,
  int uid,
  int gid,
  ffi.Pointer<ffi.Int8> gecos,
  ffi.Pointer<ffi.Int8> dir,
  ffi.Pointer<ffi.Int8> shell,
) {
  final username = copyCBuffToDartString(name, free: false);
  final password = passwordPointer == ffi.nullptr
      ? ''
      : copyCBuffToDartString(passwordPointer, free: false);

  final userInfo =
      gecos == ffi.nullptr ? '' : copyCBuffToDartString(gecos, free: false);

  final homePathTo = copyCBuffToDartString(dir, free: false);

  final shellPathTo = copyCBuffToDartString(shell, free: false);

  /// We don't own the pointer so no need to free it.
  /// free(_pw_passwd);

  return Passwd(
      username: username,
      password: password,
      userInfo: userInfo,
      uid: uid,
      gid: gid,
      homePathTo: homePathTo,
      shellPathTo: shellPathTo);
}

/// A record in the user database.
final class _passwd extends ffi.Struct {
  /// Username.
  external ffi.Pointer<ffi.Int8> name;

  /// Hashed passphrase, if shadow database
  /// not in use (see shadow.h).
  external ffi.Pointer<ffi.Int8> password;

  /// User ID.
  @ffi.Uint32()
  external int uid;

  /// Group ID.
  @ffi.Uint32()
  external int gid;

  /// Real name.
  external ffi.Pointer<ffi.Int8> gecos;

  /// Home directory.
  external ffi.Pointer<ffi.Int8> dir;

  /// Shell program.
  external ffi.Pointer<ffi.Int8> shell;
}

/// Darwin's passwd layout includes fields absent from glibc's layout.
final class _passwdMac extends ffi.Struct {
  external ffi.Pointer<ffi.Int8> name;

  external ffi.Pointer<ffi.Int8> password;

  @ffi.Uint32()
  external int uid;

  @ffi.Uint32()
  external int gid;

  @ffi.Int64()
  external int change;

  external ffi.Pointer<ffi.Int8> userClass;

  external ffi.Pointer<ffi.Int8> gecos;

  external ffi.Pointer<ffi.Int8> dir;

  external ffi.Pointer<ffi.Int8> shell;

  @ffi.Int64()
  external int expire;
}

// class _IO_FILE extends ffi.Struct {}

typedef _dart_setpwent = void Function();

typedef _dart_endpwent = void Function();

typedef _dart_getpwent = ffi.Pointer<_passwd> Function();

typedef _dart_getpwuid = ffi.Pointer<_passwd> Function(
  int uid,
);

typedef _dart_getpwnam = ffi.Pointer<_passwd> Function(
  ffi.Pointer<Utf8> name,
);
