/*
 * Copyright (c) 2025 S. Brett Sutton 2022+
 *
 * This software is licensed under the MIT License.
 * SPDX-License-Identifier: MIT
 */

import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart';

import '../../posix.dart';
import '../libc.dart';
import 'os.dart';

// ignore: non_constant_identifier_names
final macLStat = MacStatCall(r'lstat$INODE64');
final macStat = MacStatCall(r'stat$INODE64');

class MacStatCall extends OsStatCall {
  MacStatCall(super.name);

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

final class MacStatStruct extends ffi.Struct {
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

final class MacTimespecStruct extends ffi.Struct {
  @ffi.Int64()
  external int sec;

  @ffi.Int64()
  external int nsec;
}
