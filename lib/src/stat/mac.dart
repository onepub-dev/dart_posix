/* Copyright (C) S. Brett Sutton - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential
 * Written by Brett Sutton <bsutton@onepub.dev>, Jan 2022
 */

import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart';

import '../../posix.dart';
import '../libc.dart';

import 'os.dart';

// ignore: non_constant_identifier_names
late final mac_lstat = MacStatCall(r'lstat$INODE64');
// ignore: non_constant_identifier_names
late final mac_stat = MacStatCall(r'stat$INODE64');

class MacStatCall extends OsStatCall {
  MacStatCall(String name) : super(name);

  @override
  Stat sysCall(ffi.Pointer<Utf8> pathToFilePtr) {
    final bufferPtr = _alloc();
    final result = _call(pathToFilePtr, bufferPtr);
    if (result != 0) {
      _free(bufferPtr);
      throw PosixException('$name call failed', errno());
    }
    final stat = _copy(bufferPtr.ref);
    _free(bufferPtr);
    return stat;
  }

  late final _call =
      Libc().dylib.lookupFunction<MacStatCall_c, MacStatCall_dart>(name);

  ffi.Pointer<MacStatStruct> _alloc() => malloc(ffi.sizeOf<MacStatStruct>());

  Stat _copy(MacStatStruct ref) => Stat(
        deviceId: ref.dev,
        inode: ref.ino,
        mode: Mode.fromInt(ref.mode),
        nlink: ref.nlink,
        uid: ref.uid,
        gid: ref.gid,
        rdev: ref.rdev,
        size: ref.size,
        blockSize: ref.blksize,
        blocks: ref.blocks,
        lastAccess: fromSeconds(ref.atimespec.sec, ref.atimespec.nsec),
        lastModified: fromSeconds(ref.mtimespec.sec, ref.mtimespec.nsec),
        lastStatusChange: fromSeconds(ref.ctimespec.sec, ref.ctimespec.nsec),
      );

  void _free(ffi.Pointer<MacStatStruct> ptr) => malloc.free(ptr);
}

typedef MacStatCall_c = ffi.Int32 Function(
    ffi.Pointer<Utf8>, ffi.Pointer<MacStatStruct>);

typedef MacStatCall_dart = int Function(
    ffi.Pointer<Utf8>, ffi.Pointer<MacStatStruct>);

class MacStatStruct extends ffi.Struct {
  @ffi.Uint32()
  external int dev;

  @ffi.Uint16()
  external int mode;

  @ffi.Uint16()
  external int nlink;

  @ffi.Uint64()
  external int ino;

  @ffi.Uint32()
  external int uid;

  @ffi.Uint32()
  external int gid;

  @ffi.Int32()
  external int rdev;

  external MacTimespecStruct atimespec;

  external MacTimespecStruct mtimespec;

  external MacTimespecStruct ctimespec;

  external MacTimespecStruct birthtimespec;

  @ffi.Int64()
  external int size;

  @ffi.Int64()
  external int blocks;

  @ffi.Int32()
  external int blksize;

  @ffi.Uint32()
  external int flags;

  @ffi.Uint32()
  external int gen;

  @ffi.Int32()
  external int lspare;

  @ffi.Int64()
  // ignore: unused_field, non_constant_identifier_names
  external int _unique_st_qspare_item_0;
  @ffi.Int64()
  // ignore: unused_field, non_constant_identifier_names
  external int _unique_st_qspare_item_1;
}

class MacTimespecStruct extends ffi.Struct {
  @ffi.Int64()
  external int sec;

  @ffi.Int64()
  external int nsec;
}
