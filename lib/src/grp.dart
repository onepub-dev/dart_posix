import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart';
import 'package:posix/src/posix_exception.dart';
import 'package:posix/src/unistd/errno.dart';
import 'package:posix/src/util/conversions.dart';

import 'libc.dart';

class _IO_FILE extends ffi.Struct {}

/// Rewind the group-file stream.
///
/// This function is a possible cancellation point and therefore not
/// marked with __THROW.
void setgrent() {
  clear_errno();
  _setgrent ??=
      Libc().dylib.lookupFunction<_c_setgrent, _dart_setgrent>('setgrent');
  return _setgrent();
}

_dart_setgrent _setgrent;

/// Close the group-file stream.
///
/// This function is a possible cancellation point and therefore not
/// marked with __THROW.
void endgrent() {
  clear_errno();
  _endgrent ??=
      Libc().dylib.lookupFunction<_c_endgrent, _dart_endgrent>('endgrent');
  return _endgrent();
}

_dart_endgrent _endgrent;

/// Read an entry from the group-file stream, opening it if necessary.
///
/// This function is a possible cancellation point and therefore not
/// marked with __THROW.
Group getgrent() {
  clear_errno();
  _getgrent ??=
      Libc().dylib.lookupFunction<_c_getgrent, _dart_getgrent>('getgrent');
  return _buildGroup(_getgrent(),
      'Error occured attempting to get the next group entry from the group database stream');
}

_dart_getgrent _getgrent;

/// Read a group entry from STREAM.
///
/// This function is not part of POSIX and therefore no official
/// cancellation point.  But due to similarity with an POSIX interface
/// or due to the implementation it is a cancellation point and
/// therefore not marked with __THROW.
Group native_fgetgrent(
  ffi.Pointer<_IO_FILE> __stream,
) {
  clear_errno();
  _fgetgrent ??=
      Libc().dylib.lookupFunction<_c_fgetgrent, _dart_fgetgrent>('fgetgrent');

  return _buildGroup(_fgetgrent(__stream),
      'Error occured attempting to get the next group entry from the group database stream');
}

_dart_fgetgrent _fgetgrent;

/// Search for an entry with a matching group ID.
///
/// This function is a possible cancellation point and therefore not
/// marked with __THROW.
Group getgrgid(
  int gid,
) {
  clear_errno();
  _getgrgid ??=
      Libc().dylib.lookupFunction<_c_getgrgid, _dart_getgrgid>('getgrgid');
  return _buildGroup(
      _getgrgid(
        gid,
      ),
      'Error occured attempting to get the next group entry for gid: $gid');
}

_dart_getgrgid _getgrgid;

/// Search for an entry with a matching group name.
///
/// This function is a possible cancellation point and therefore not
/// marked with __THROW.
Group getgrnam(
  String group,
) {
  clear_errno();

  var c_name = Utf8.toUtf8(group);

  _getgrnam ??=
      Libc().dylib.lookupFunction<_c_getgrnam, _dart_getgrnam>('getgrnam');
  final _group = _buildGroup(
      _getgrnam(
        c_name,
      ),
      'Error occured attempting to get the next group entry for group: $group');

  free(c_name);

  return _group;
}

_dart_getgrnam _getgrnam;

// /// Search for an entry with a matching group ID.
// ///
// /// This function is a possible cancellation point and therefore not
// /// marked with __THROW.
// int getgrgid_r(
//   int __gid,
//   ffi.Pointer<group> __resultbuf,
//   ffi.Pointer<ffi.Int8> __buffer,
//   int __buflen,
//   ffi.Pointer<ffi.Pointer<group>> __result,
// ) {
//   _getgrgid_r ??= Libc()
//       .dylib
//       .lookupFunction<_c_getgrgid_r, _dart_getgrgid_r>('getgrgid_r');
//   return _getgrgid_r(
//     __gid,
//     __resultbuf,
//     __buffer,
//     __buflen,
//     __result,
//   );
// }

// _dart_getgrgid_r _getgrgid_r;

// /// Search for an entry with a matching group name.
// ///
// /// This function is a possible cancellation point and therefore not
// /// marked with __THROW.
// int getgrnam_r(
//   ffi.Pointer<ffi.Int8> __name,
//   ffi.Pointer<group> __resultbuf,
//   ffi.Pointer<ffi.Int8> __buffer,
//   int __buflen,
//   ffi.Pointer<ffi.Pointer<group>> __result,
// ) {
//   _getgrnam_r ??= Libc()
//       .dylib
//       .lookupFunction<_c_getgrnam_r, _dart_getgrnam_r>('getgrnam_r');
//   return _getgrnam_r(
//     __name,
//     __resultbuf,
//     __buffer,
//     __buflen,
//     __result,
//   );
// }

// _dart_getgrnam_r _getgrnam_r;

// /// Read a group entry from STREAM.  This function is not standardized
// /// an probably never will.
// ///
// /// This function is not part of POSIX and therefore no official
// /// cancellation point.  But due to similarity with an POSIX interface
// /// or due to the implementation it is a cancellation point and
// /// therefore not marked with __THROW.
// int fgetgrent_r(
//   ffi.Pointer<_IO_FILE> __stream,
//   ffi.Pointer<group> __resultbuf,
//   ffi.Pointer<ffi.Int8> __buffer,
//   int __buflen,
//   ffi.Pointer<ffi.Pointer<group>> __result,
// ) {
//   _fgetgrent_r ??= Libc()
//       .dylib
//       .lookupFunction<_c_fgetgrent_r, _dart_fgetgrent_r>('fgetgrent_r');
//   return _fgetgrent_r(
//     __stream,
//     __resultbuf,
//     __buffer,
//     __buflen,
//     __result,
//   );
// }

// _dart_fgetgrent_r _fgetgrent_r;

// /// Set the group set for the current user to GROUPS (N of them).
// int setgroups(
//   int __n,
//   ffi.Pointer<ffi.Uint32> __groups,
// ) {
//   _setgroups ??=
//       Libc().dylib.lookupFunction<_c_setgroups, _dart_setgroups>('setgroups');
//   return _setgroups(
//     __n,
//     __groups,
//   );
// }

// _dart_setgroups _setgroups;

// /// Store at most *NGROUPS members of the group set for USER into
// /// GROUPS.  Also include GROUP.  The actual number of groups found is
// /// returned in *NGROUPS.  Return -1 if the if *NGROUPS is too small.
// ///
// /// This function is not part of POSIX and therefore no official
// /// cancellation point.  But due to similarity with an POSIX interface
// /// or due to the implementation it is a cancellation point and
// /// therefore not marked with __THROW.
// int getgrouplist(
//   ffi.Pointer<ffi.Int8> __user,
//   int __group,
//   ffi.Pointer<ffi.Uint32> __groups,
//   ffi.Pointer<ffi.Int32> __ngroups,
// ) {
//   _getgrouplist ??= Libc()
//       .dylib
//       .lookupFunction<_c_getgrouplist, _dart_getgrouplist>('getgrouplist');
//   return _getgrouplist(
//     __user,
//     __group,
//     __groups,
//     __ngroups,
//   );
// }

// _dart_getgrouplist _getgrouplist;

// /// Initialize the group set for the current user
// /// by reading the group database and using all groups
// /// of which USER is a member.  Also include GROUP.
// ///
// /// This function is not part of POSIX and therefore no official
// /// cancellation point.  But due to similarity with an POSIX interface
// /// or due to the implementation it is a cancellation point and
// /// therefore not marked with __THROW.
// int initgroups(
//   ffi.Pointer<ffi.Int8> __user,
//   int __group,
// ) {
//   _initgroups ??= Libc()
//       .dylib
//       .lookupFunction<_c_initgroups, _dart_initgroups>('initgroups');
//   return _initgroups(
//     __user,
//     __group,
//   );
// }

// _dart_initgroups _initgroups;

class Group {
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

Group _buildGroup(ffi.Pointer<group> _gr_group, String error) {
  if (_gr_group == null) throw PosixException(error, errno());

  final group = Group();

  group.name = copyCBuffToDartString(_gr_group.ref.gr_name, free: false);
  group.password = copyCBuffToDartString(_gr_group.ref.gr_passwd, free: false);
  group.gid = _gr_group.ref.gr_gid;
  group.members = copyCStringListToDartList(_gr_group.ref.gr_mem, free: false);

  /// We don't own the pointer so no need to free it.
  /// free(_gr_group);
  return group;
}

class group extends ffi.Struct {
  /// Group name.
  ffi.Pointer<ffi.Int8> gr_name;

  /// Password.
  ffi.Pointer<ffi.Int8> gr_passwd;

  /// Group ID.
  @ffi.Uint32()
  int gr_gid;

  /// Member list.
  ffi.Pointer<ffi.Pointer<ffi.Int8>> gr_mem;
}

typedef _c_setgrent = ffi.Void Function();

typedef _dart_setgrent = void Function();

typedef _c_endgrent = ffi.Void Function();

typedef _dart_endgrent = void Function();

typedef _c_getgrent = ffi.Pointer<group> Function();

typedef _dart_getgrent = ffi.Pointer<group> Function();

typedef _c_fgetgrent = ffi.Pointer<group> Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_fgetgrent = ffi.Pointer<group> Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_getgrgid = ffi.Pointer<group> Function(
  ffi.Uint32 __gid,
);

typedef _dart_getgrgid = ffi.Pointer<group> Function(
  int __gid,
);

typedef _c_getgrnam = ffi.Pointer<group> Function(
  ffi.Pointer<Utf8> __name,
);

typedef _dart_getgrnam = ffi.Pointer<group> Function(
  ffi.Pointer<Utf8> __name,
);

// typedef _c_getgrgid_r = ffi.Int32 Function(
//   ffi.Uint32 __gid,
//   ffi.Pointer<group> __resultbuf,
//   ffi.Pointer<ffi.Int8> __buffer,
//   ffi.Uint64 __buflen,
//   ffi.Pointer<ffi.Pointer<group>> __result,
// );

// typedef _dart_getgrgid_r = int Function(
//   int __gid,
//   ffi.Pointer<group> __resultbuf,
//   ffi.Pointer<ffi.Int8> __buffer,
//   int __buflen,
//   ffi.Pointer<ffi.Pointer<group>> __result,
// );

// typedef _c_getgrnam_r = ffi.Int32 Function(
//   ffi.Pointer<ffi.Int8> __name,
//   ffi.Pointer<group> __resultbuf,
//   ffi.Pointer<ffi.Int8> __buffer,
//   ffi.Uint64 __buflen,
//   ffi.Pointer<ffi.Pointer<group>> __result,
// );

// typedef _dart_getgrnam_r = int Function(
//   ffi.Pointer<ffi.Int8> __name,
//   ffi.Pointer<group> __resultbuf,
//   ffi.Pointer<ffi.Int8> __buffer,
//   int __buflen,
//   ffi.Pointer<ffi.Pointer<group>> __result,
// );

// typedef _c_fgetgrent_r = ffi.Int32 Function(
//   ffi.Pointer<_IO_FILE> __stream,
//   ffi.Pointer<group> __resultbuf,
//   ffi.Pointer<ffi.Int8> __buffer,
//   ffi.Uint64 __buflen,
//   ffi.Pointer<ffi.Pointer<group>> __result,
// );

// typedef _dart_fgetgrent_r = int Function(
//   ffi.Pointer<_IO_FILE> __stream,
//   ffi.Pointer<group> __resultbuf,
//   ffi.Pointer<ffi.Int8> __buffer,
//   int __buflen,
//   ffi.Pointer<ffi.Pointer<group>> __result,
// );

// typedef _c_setgroups = ffi.Int32 Function(
//   ffi.Uint64 __n,
//   ffi.Pointer<ffi.Uint32> __groups,
// );

// typedef _dart_setgroups = int Function(
//   int __n,
//   ffi.Pointer<ffi.Uint32> __groups,
// );

// typedef _c_getgrouplist = ffi.Int32 Function(
//   ffi.Pointer<ffi.Int8> __user,
//   ffi.Uint32 __group,
//   ffi.Pointer<ffi.Uint32> __groups,
//   ffi.Pointer<ffi.Int32> __ngroups,
// );

// typedef _dart_getgrouplist = int Function(
//   ffi.Pointer<ffi.Int8> __user,
//   int __group,
//   ffi.Pointer<ffi.Uint32> __groups,
//   ffi.Pointer<ffi.Int32> __ngroups,
// );

// typedef _c_initgroups = ffi.Int32 Function(
//   ffi.Pointer<ffi.Int8> __user,
//   ffi.Uint32 __group,
// );

// typedef _dart_initgroups = int Function(
//   ffi.Pointer<ffi.Int8> __user,
//   int __group,
// );
