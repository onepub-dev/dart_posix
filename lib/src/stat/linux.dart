import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart';

import '../../posix.dart';
import '../libc.dart';

import 'base.dart';
import 'mode.dart';
import 'stat.dart';

late final linux_lstat = _stat_call('__xlstat');
late final linux_stat = _stat_call('__lstat');

class _stat_call extends stat_call<_stat_struct> {
  _stat_call(String name) : super(name);

  @override
  ffi.Pointer<_stat_struct> alloc() =>
    malloc(ffi.sizeOf<_stat_struct>());

  @override
  Stat copy(ffi.Pointer<_stat_struct> os) {
    final ref = os.ref;
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
  dart_func<_stat_struct> lookup(String name) =>
    Libc().dylib.lookupFunction<
      c_func<_stat_struct>,
      dart_func<_stat_struct>
    >(name);
}
class _stat_struct extends ffi.Struct {
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

  external _timespec_struct st_atim;

  external _timespec_struct st_mtim;

  external _timespec_struct st_ctim;

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

class _timespec_struct extends ffi.Struct {
  @ffi.Int64()
  external int tv_sec;

  @ffi.Int64()
  external int tv_nsec;
}