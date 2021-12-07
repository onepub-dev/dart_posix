import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart';

import '../../posix.dart';
import '../libc.dart';

import 'mode.dart';
import 'os.dart';
import 'stat.dart';

late final mac_lstat = MacStatCall('lstat\$INODE64');
late final mac_stat = MacStatCall('stat\$INODE64');

class MacStatCall extends OsStatCall {
  MacStatCall(String name) : super(name);

  @override
  Stat sysCall(ffi.Pointer<Utf8> pathToFile_ptr) {
    final buffer_ptr = _alloc();
    final result = _call(pathToFile_ptr, buffer_ptr);
    if (result != 0) {
      _free(buffer_ptr);
      throw PosixException('$name call failed', errno());
    }
    final stat = _copy(buffer_ptr.ref);
    _free(buffer_ptr);
    return stat;
  }

  late final _call = 
    Libc().dylib.lookupFunction<MacStatCall_c, MacStatCall_dart>(name);

  ffi.Pointer<MacStatStruct> _alloc() =>
    malloc(ffi.sizeOf<MacStatStruct>());

  Stat _copy(MacStatStruct ref) =>
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
      lastAccess: fromSeconds(ref.st_atimespec.tv_sec, ref.st_atimespec.tv_nsec),
      lastModified: fromSeconds(ref.st_mtimespec.tv_sec, ref.st_mtimespec.tv_nsec),
      lastStatusChange: fromSeconds(ref.st_ctimespec.tv_sec, ref.st_ctimespec.tv_nsec),
    );

  void _free(ffi.Pointer<MacStatStruct> ptr) =>
    malloc.free(ptr);
}

typedef MacStatCall_c = ffi.Int32 Function(
  ffi.Pointer<Utf8>,
  ffi.Pointer<MacStatStruct>
);

typedef MacStatCall_dart = int Function(
  ffi.Pointer<Utf8>,
  ffi.Pointer<MacStatStruct>
);

class MacStatStruct extends ffi.Struct {
  @ffi.Uint32()
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

  external MacTimespecStruct st_atimespec;

  external MacTimespecStruct st_mtimespec;

  external MacTimespecStruct st_ctimespec;

  external MacTimespecStruct st_birthtimespec;

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
  // ignore: unused_field
  external int _unique_st_qspare_item_0;
  @ffi.Int64()
  // ignore: unused_field
  external int _unique_st_qspare_item_1;
}

class MacTimespecStruct extends ffi.Struct {
  @ffi.Int64()
  external int tv_sec;

  @ffi.Int64()
  external int tv_nsec;
}