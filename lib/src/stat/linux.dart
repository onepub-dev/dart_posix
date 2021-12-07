import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart';

import '../../posix.dart';
import '../libc.dart';

import 'mode.dart';
import 'os.dart';
import 'stat.dart';

late final linux_lstat = LinuxStatCall('__lxstat');
late final linux_stat = LinuxStatCall('__xstat');

class LinuxStatCall extends OsStatCall {
  LinuxStatCall(String name) : super(name);

  @override
  Stat sysCall(ffi.Pointer<Utf8> pathToFile_ptr) {
    final buffer_ptr = _alloc();
    final result = _call(1, pathToFile_ptr, buffer_ptr);
    if (result != 0) {
      _free(buffer_ptr);
      throw PosixException('$name call failed', errno());
    }
    final stat = _copy(buffer_ptr.ref);
    _free(buffer_ptr);
    return stat;
  }

  late final _call = 
    Libc().dylib.lookupFunction<LinuxStatCall_c, LinuxStatCall_dart>(name);

  ffi.Pointer<LinuxStatStruct> _alloc() =>
    malloc(ffi.sizeOf<LinuxStatStruct>());

  Stat _copy(LinuxStatStruct ref) =>
    Stat(
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

  void _free(ffi.Pointer<LinuxStatStruct> ptr) =>
    malloc.free(ptr);
}

typedef LinuxStatCall_c = ffi.Int32 Function(
  ffi.Int32,
  ffi.Pointer<Utf8>,
  ffi.Pointer<LinuxStatStruct>
);

typedef LinuxStatCall_dart = int Function(
  int,
  ffi.Pointer<Utf8>,
  ffi.Pointer<LinuxStatStruct>
);

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