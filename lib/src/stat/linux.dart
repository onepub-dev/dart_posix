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

final linuxLStat = LinuxStatCall('__lxstat');
final linuxStat = LinuxStatCall('__xstat');

class LinuxStatCall extends OsStatCall {
  LinuxStatCall(super.name);

  @override
  Stat sysCall(ffi.Pointer<Utf8> pathToFilePtr) {
    final bufferPtr = _alloc();
    final result = _call(1, pathToFilePtr, bufferPtr);
    if (result != 0) {
      _free(bufferPtr);
      throw PosixException('Call to $name', errno());
    }
    final stat = _copy(bufferPtr.ref);
    _free(bufferPtr);
    return stat;
  }

  late final _call =
      Libc().dylib.lookupFunction<LinuxStatCall_c, LinuxStatCall_dart>(name);

  ffi.Pointer<LinuxStatStruct> _alloc() =>
      malloc(ffi.sizeOf<LinuxStatStruct>());

  Stat _copy(LinuxStatStruct ref) => Stat(
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
        lastAccess: fromSeconds(ref.atim.sec, ref.atim.nsec),
        lastModified: fromSeconds(ref.mtim.sec, ref.mtim.nsec),
        lastStatusChange: fromSeconds(ref.ctim.sec, ref.ctim.nsec),
      );

  void _free(ffi.Pointer<LinuxStatStruct> ptr) => malloc.free(ptr);
}

typedef LinuxStatCall_c = ffi.Int32 Function(
    ffi.Int32, ffi.Pointer<Utf8>, ffi.Pointer<LinuxStatStruct>);

typedef LinuxStatCall_dart = int Function(
    int, ffi.Pointer<Utf8>, ffi.Pointer<LinuxStatStruct>);

final class LinuxStatStruct extends ffi.Struct {
  @ffi.Uint64()
  external int dev;

  @ffi.Uint64()
  external int ino;

  @ffi.Uint64()
  external int nlink;

  @ffi.Uint32()
  external int mode;

  @ffi.Uint32()
  external int uid;

  @ffi.Uint32()
  external int gid;

  @ffi.Int32()
  external int pad0;

  @ffi.Uint64()
  external int rdev;

  @ffi.Int64()
  external int size;

  @ffi.Int64()
  external int blksize;

  @ffi.Int64()
  external int blocks;

  external LinuxTimespecStruct atim;

  external LinuxTimespecStruct mtim;

  external LinuxTimespecStruct ctim;

  @ffi.Int64()
  // ignore: unused_field, non_constant_identifier_names
  external int _unique___glibc_reserved_item_0;
  @ffi.Int64()
  // ignore: unused_field, non_constant_identifier_names
  external int _unique___glibc_reserved_item_1;
  @ffi.Int64()
  // ignore: unused_field, non_constant_identifier_names
  external int _unique___glibc_reserved_item_2;
}

final class LinuxTimespecStruct extends ffi.Struct {
  @ffi.Int64()
  external int sec;

  @ffi.Int64()
  external int nsec;
}
