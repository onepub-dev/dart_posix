import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart';

import '../../posix.dart';
import '../libc.dart';

import 'mode.dart';
import 'os.dart';
import 'stat.dart';

late final linux_lstat = LinuxStatCall('__xlstat');
late final linux_stat = LinuxStatCall('__lstat');

class LinuxStatCall extends OsStatCall<LinuxStatStruct> {
  LinuxStatCall(String sysCallName) : super(sysCallName);

  @override
  ffi.Pointer<LinuxStatStruct> newBuffer() =>
    malloc(ffi.sizeOf<LinuxStatStruct>());

  @override
  Stat toStat(ffi.Pointer<LinuxStatStruct> ptr) {
    final ref = ptr.ref;
    return Stat(
      deviceId: ref.st_dev,
      inode: ref.st_ino,
      mode: Mode.fromInt(ref.st_mode),
      nlink: ref.st_nlink,
      uid: ref.st_uid,
      gid: ref.st_gid,
      rdev: ref.st_rdev,
      size: ref.st_size,
      blockSize: ref.st_blksize,
      blocks: ref.st_blocks,
      lastAccess: fromSeconds(ref.st_atim.tv_sec, ref.st_atim.tv_nsec),
      lastModified: fromSeconds(ref.st_mtim.tv_sec, ref.st_mtim.tv_nsec),
      lastStatusChange: fromSeconds(ref.st_ctim.tv_sec, ref.st_ctim.tv_nsec),
    );
  }

  @override
  OsStatCall_dart<LinuxStatStruct> lookupSystemCall(String name) =>
    Libc().dylib.lookupFunction<OsStatCall_c<LinuxStatStruct>, OsStatCall_dart<LinuxStatStruct>>(name);
}
class LinuxStatStruct extends ffi.Struct {
  @ffi.Uint64()
  external int st_dev;

  @ffi.Uint64()
  external int st_ino;

  @ffi.Uint64()
  external int st_nlink;

  @ffi.Uint32()
  external int st_mode;

  @ffi.Uint32()
  external int st_uid;

  @ffi.Uint32()
  external int st_gid;

  @ffi.Int32()
  external int pad0;

  @ffi.Uint64()
  external int st_rdev;

  @ffi.Int64()
  external int st_size;

  @ffi.Int64()
  external int st_blksize;

  @ffi.Int64()
  external int st_blocks;

  external LinuxTimespecStruct st_atim;

  external LinuxTimespecStruct st_mtim;

  external LinuxTimespecStruct st_ctim;

  @ffi.Int64()
  // ignore: unused_field
  external int _unique___glibc_reserved_item_0;
  @ffi.Int64()
  // ignore: unused_field
  external int _unique___glibc_reserved_item_1;
  @ffi.Int64()
  // ignore: unused_field
  external int _unique___glibc_reserved_item_2;
}

class LinuxTimespecStruct extends ffi.Struct {
  @ffi.Int64()
  external int tv_sec;

  @ffi.Int64()
  external int tv_nsec;
}