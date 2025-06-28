/*
 * Copyright (c) 2025 S. Brett Sutton 2022+
 *
 * This software is licensed under the MIT License.
 * SPDX-License-Identifier: MIT
 */

// ignore_for_file: non_constant_identifier_names

part of 'mac.dart';

final class timespec extends ffi.Struct {
  @ffi.Int64()
  external int tv_sec;

  @ffi.Int64()
  external int tv_nsec;
}

final class timeval extends ffi.Struct {
  /// seconds
  @ffi.Int64()
  external int tv_sec;

  /// and microseconds
  @ffi.Int32()
  external int tv_usec;
}

final class fssearchblock extends ffi.Opaque {}

final class searchstate extends ffi.Opaque {}

final class passwd extends ffi.Struct {
  /// user name
  external ffi.Pointer<ffi.Int8> pw_name;

  /// encrypted password
  external ffi.Pointer<ffi.Int8> pw_passwd;

  /// user uid
  @ffi.Uint32()
  external int pw_uid;

  /// user gid
  @ffi.Uint32()
  external int pw_gid;

  /// password change time
  @ffi.Int64()
  external int pw_change;

  /// user access class
  external ffi.Pointer<ffi.Int8> pw_class;

  /// Honeywell login info
  external ffi.Pointer<ffi.Int8> pw_gecos;

  /// home directory
  external ffi.Pointer<ffi.Int8> pw_dir;

  /// default shell
  external ffi.Pointer<ffi.Int8> pw_shell;

  /// account expiration
  @ffi.Int64()
  external int pw_expire;
}

final class group extends ffi.Struct {
  /// XBD group name
  external ffi.Pointer<ffi.Int8> gr_name;

  /// ??? group password
  external ffi.Pointer<ffi.Int8> gr_passwd;

  /// XBD group id
  @ffi.Uint32()
  external int gr_gid;

  /// XBD group members
  external ffi.Pointer<ffi.Pointer<ffi.Int8>> gr_mem;
}

/// XXX So deprecated, it would make your head spin
///
/// The old stat structure.  In fact, this is not used by the kernel at all,
/// and should not be used by user space, and should be removed from this
/// header file entirely (along with the unused cvtstat() prototype in
/// vnode_internal.h).
final class ostat extends ffi.Struct {
  /// inode's device
  @ffi.Uint16()
  external int st_dev;

  /// inode's number
  @ffi.Uint64()
  external int st_ino;

  /// inode protection mode
  @ffi.Uint16()
  external int st_mode;

  /// number of hard links
  @ffi.Uint16()
  external int st_nlink;

  /// user ID of the file's owner
  @ffi.Uint16()
  external int st_uid;

  /// group ID of the file's group
  @ffi.Uint16()
  external int st_gid;

  /// device type
  @ffi.Uint16()
  external int st_rdev;

  /// file size, in bytes
  @ffi.Int32()
  external int st_size;

  /// time of last access
  external timespec st_atimespec;

  /// time of last data modification
  external timespec st_mtimespec;

  /// time of last file status change
  external timespec st_ctimespec;

  /// optimal blocksize for I/O
  @ffi.Int32()
  external int st_blksize;

  /// blocks allocated for file
  @ffi.Int32()
  external int st_blocks;

  /// user defined flags for file
  @ffi.Uint32()
  external int st_flags;

  /// file generation number
  @ffi.Uint32()
  external int st_gen;
}

final class stat extends ffi.Struct {
  @ffi.Int32()
  external int st_dev;

  @ffi.Uint16()
  external int st_mode;

  @ffi.Uint16()
  external int st_nlink;

  @ffi.Uint64()
  external int st_ino;

  @ffi.Uint32()
  external int st_uid;

  @ffi.Uint32()
  external int st_gid;

  @ffi.Int32()
  external int st_rdev;

  external timespec st_atimespec;

  external timespec st_mtimespec;

  external timespec st_ctimespec;

  external timespec st_birthtimespec;

  @ffi.Int64()
  external int st_size;

  @ffi.Int64()
  external int st_blocks;

  @ffi.Int32()
  external int st_blksize;

  @ffi.Uint32()
  external int st_flags;

  @ffi.Uint32()
  external int st_gen;

  @ffi.Int32()
  external int st_lspare;

  @ffi.Int64()
  external int _unique_st_qspare_item_0;
  @ffi.Int64()
  external int _unique_st_qspare_item_1;

  /// Helper for array `st_qspare`.
  ArrayHelper_stat_st_qspare_level0 get st_qspare =>
      ArrayHelper_stat_st_qspare_level0(this, [2], 0, 0);
}

/// Helper for array `st_qspare` in struct `stat`.
class ArrayHelper_stat_st_qspare_level0 {
  ArrayHelper_stat_st_qspare_level0(
      this._struct, this.dimensions, this.level, this._absoluteIndex);
  final stat _struct;
  final List<int> dimensions;
  final int level;
  final int _absoluteIndex;
  int get length => dimensions[level];
  void _checkBounds(int index) {
    if (index >= length || index < 0) {
      throw RangeError(
          'Dimension $level: index not in range 0..$length exclusive.');
    }
  }

  int operator [](int index) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        return _struct._unique_st_qspare_item_0;
      case 1:
        return _struct._unique_st_qspare_item_1;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }

  void operator []=(int index, int value) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        _struct._unique_st_qspare_item_0 = value;
      case 1:
        _struct._unique_st_qspare_item_1 = value;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }
}

final class stat64 extends ffi.Struct {
  @ffi.Int32()
  external int st_dev;

  @ffi.Uint16()
  external int st_mode;

  @ffi.Uint16()
  external int st_nlink;

  @ffi.Uint64()
  external int st_ino;

  @ffi.Uint32()
  external int st_uid;

  @ffi.Uint32()
  external int st_gid;

  @ffi.Int32()
  external int st_rdev;

  external timespec st_atimespec;

  external timespec st_mtimespec;

  external timespec st_ctimespec;

  external timespec st_birthtimespec;

  @ffi.Int64()
  external int st_size;

  @ffi.Int64()
  external int st_blocks;

  @ffi.Int32()
  external int st_blksize;

  @ffi.Uint32()
  external int st_flags;

  @ffi.Uint32()
  external int st_gen;

  @ffi.Int32()
  external int st_lspare;

  @ffi.Int64()
  external int _unique_st_qspare_item_0;
  @ffi.Int64()
  external int _unique_st_qspare_item_1;

  /// Helper for array `st_qspare`.
  ArrayHelper_stat64_st_qspare_level0 get st_qspare =>
      ArrayHelper_stat64_st_qspare_level0(this, [2], 0, 0);
}

/// Helper for array `st_qspare` in struct `stat64`.
class ArrayHelper_stat64_st_qspare_level0 {
  ArrayHelper_stat64_st_qspare_level0(
      this._struct, this.dimensions, this.level, this._absoluteIndex);
  final stat64 _struct;
  final List<int> dimensions;
  final int level;
  final int _absoluteIndex;
  int get length => dimensions[level];
  void _checkBounds(int index) {
    if (index >= length || index < 0) {
      throw RangeError(
          'Dimension $level: index not in range 0..$length exclusive.');
    }
  }

  int operator [](int index) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        return _struct._unique_st_qspare_item_0;
      case 1:
        return _struct._unique_st_qspare_item_1;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }

  void operator []=(int index, int value) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        _struct._unique_st_qspare_item_0 = value;
      case 1:
        _struct._unique_st_qspare_item_1 = value;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }
}

final class filesec extends ffi.Opaque {}
