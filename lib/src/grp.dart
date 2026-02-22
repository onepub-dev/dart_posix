/*
 * Copyright (c) 2025 S. Brett Sutton 2022+
 *
 * This software is licensed under the MIT License.
 * SPDX-License-Identifier: MIT
 */

import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart';

import '../posix.dart';
import 'libc.dart';
import 'util/conversions.dart';

final class IO_FILE extends ffi.Opaque {}

/// Rewind the group-file stream.
///
/// This function is a possible cancellation point and therefore not
/// marked with __THROW.
void setgrent() {
  clearErrno();
  _setgrent ??= Libc()
      .dylib
      .lookupFunction<ffi.Void Function(), _dart_setgrent>('setgrent');
  _setgrent!();
}

_dart_setgrent? _setgrent;

/// Close the group-file stream.
///
/// This function is a possible cancellation point and therefore not
/// marked with __THROW.
void endgrent() {
  clearErrno();
  _endgrent ??= Libc()
      .dylib
      .lookupFunction<ffi.Void Function(), _dart_endgrent>('endgrent');
  _endgrent!();
}

_dart_endgrent? _endgrent;

/// Read an entry from the group-file stream, opening it if necessary.
///
/// This function is a possible cancellation point and therefore not
/// marked with __THROW.
Group getgrent() {
  clearErrno();
  _getgrent ??= Libc()
      .dylib
      .lookupFunction<ffi.Pointer<group> Function(), _dart_getgrent>(
          'getgrent');
  return _buildGroup(
      _getgrent!(),
      'Error occured attempting to get the next group entry from '
      'the group database stream');
}

_dart_getgrent? _getgrent;

/// Read a group entry from STREAM.
///
/// This function is not part of POSIX and therefore no official
/// cancellation point.  But due to similarity with an POSIX interface
/// or due to the implementation it is a cancellation point and
/// therefore not marked with __THROW.
// ignore: non_constant_identifier_names
Group native_fgetgrent(
  ffi.Pointer<IO_FILE> __stream,
) {
  clearErrno();
  _fgetgrent ??= Libc().dylib.lookupFunction<
      ffi.Pointer<group> Function(ffi.Pointer<IO_FILE>),
      _dart_fgetgrent>('fgetgrent');

  return _buildGroup(
      _fgetgrent!(__stream),
      'Error occured attempting to get the next group entry from the group'
      ' database stream');
}

_dart_fgetgrent? _fgetgrent;

/// Search for an entry with a matching group ID.
///
/// This function is a possible cancellation point and therefore not
/// marked with __THROW.
Group getgrgid(
  int gid,
) {
  clearErrno();
  _getgrgid ??= Libc()
      .dylib
      .lookupFunction<ffi.Pointer<group> Function(ffi.Uint32), _dart_getgrgid>(
          'getgrgid');
  return _buildGroup(
      _getgrgid!(
        gid,
      ),
      'Error occured attempting to get the next group entry for gid: $gid');
}

_dart_getgrgid? _getgrgid;

/// Search for an entry with a matching group name.
///
/// This function is a possible cancellation point and therefore not
/// marked with __THROW.
Group getgrnam(
  String group,
) {
  clearErrno();

  final cName = group.toNativeUtf8();

  _getgrnam ??=
      Libc().dylib.lookupFunction<_c_getgrnam, _dart_getgrnam>('getgrnam');

  final _group = _buildGroup(
      _getgrnam!(
        cName,
      ),
      'Error occured attempting to get the next group entry for group: $group');

  malloc.free(cName);

  return _group;
}

_dart_getgrnam? _getgrnam;

/// Initialize the group set for the current user
/// by reading the group database and using all groups
/// of which USER is a member.  Also adds [group]
/// to the list of groups if passed.
///
/// This function is not part of POSIX and therefore no official
/// cancellation point.  But due to similarity with an POSIX interface
/// or due to the implementation it is a cancellation point and
/// therefore not marked with __THROW.
///
/// The initgroups() function returns 0 on success.
/// On error, -1 is returned, and errno is set appropriately.
void initgroups(String user, {int? group}) {
  // If the user doesn't pass a group we use getegid as the list of
  // groups should already have the users effective group.
  // We do this as we can't find any doco on what group should
  // be set to if you don't wont' to add a group (-1 doesn't work).
  group ??= getegid();
  final cUser = user.toNativeUtf8();

  _initgroups ??= Libc().dylib.lookupFunction<
      ffi.Int32 Function(ffi.Pointer<Utf8>, ffi.Uint32),
      _dart_initgroups>('initgroups');

  final err = _initgroups!(
    cUser,
    group,
  );
  malloc.free(cUser);

  if (err != 0) {
    throw PosixException('initgroups failed for $user', errno());
  }
}

_dart_initgroups? _initgroups;

/// Retrieves the list of groups for the current users.
List<int> getgroups() {
  final groups = <int>[];

  _getgroups ??= Libc().dylib.lookupFunction<
      ffi.Int32 Function(ffi.Int32, ffi.Pointer<ffi.Uint32>),
      _dart_getgroups>('getgroups');

  /// get how many groups there are.
  final size = _getgroups!(0, ffi.nullptr);

  using((arena) {
    // allocate the list.
    final list = arena<ffi.Uint32>(size);

    final count = _getgroups!(
      size,
      list,
    );

    if (count == -1) {
      throw PosixException('getgroups call failed', errno());
    }

    for (var i = 0; i < size; i++) {
      groups.add(list[i]);
    }
  });
  return groups;
}

typedef _dart_getgroups = int Function(
  int size,
  ffi.Pointer<ffi.Uint32> __list,
);

_dart_getgroups? _getgroups;

class Group {
  Group(
      {required this.name,
      required this.password,
      required this.gid,
      required this.members});

  /// Group name.
  String name;

  /// Password.
  String password;

  /// Group ID.
  int gid;

  List<String> members;

  @override
  String toString() => 'group: $name gid: $gid members: ${members.join(', ')}';
}

Group _buildGroup(ffi.Pointer<group> grGroup, String error) {
  if (grGroup == ffi.nullptr) {
    throw PosixException(error, errno());
  }

  final name = copyCBuffToDartString(grGroup.ref.name, free: false);
  final password = copyCBuffToDartString(grGroup.ref.passwd, free: false);
  final gid = grGroup.ref.gid;
  final members = copyCStringListToDartList(grGroup.ref.mem, free: false);

  /// We don't own the pointer so no need to free it.
  /// free(_gr_group);
  return Group(name: name, password: password, gid: gid, members: members);
}

final class group extends ffi.Struct {
  /// Group name.
  external ffi.Pointer<ffi.Int8> name;

  /// Password.
  external ffi.Pointer<ffi.Int8> passwd;

  /// Group ID.
  @ffi.Uint32()
  external int gid;

  /// Member list.
  external ffi.Pointer<ffi.Pointer<ffi.Int8>> mem;
}

typedef _dart_setgrent = void Function();

typedef _dart_endgrent = void Function();

typedef _dart_getgrent = ffi.Pointer<group> Function();

typedef _dart_fgetgrent = ffi.Pointer<group> Function(
  ffi.Pointer<IO_FILE> __stream,
);

typedef _dart_getgrgid = ffi.Pointer<group> Function(
  int __gid,
);

typedef _dart_getgrnam = ffi.Pointer<group> Function(
  ffi.Pointer<Utf8> __name,
);
// ignore: avoid_private_typedef_functions
typedef _c_getgrnam = ffi.Pointer<group> Function(
  ffi.Pointer<Utf8> __name,
);

typedef _dart_initgroups = int Function(
  ffi.Pointer<Utf8> __user,
  int __group,
);
