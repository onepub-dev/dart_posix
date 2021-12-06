import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart';

import '../../posix.dart';
import '../libc.dart';

import 'base.dart';
import 'mode.dart';
import 'stat.dart';

late final mac_lstat = _stat_call('lstat\$INODE64');
late final mac_stat = _stat_call('stat\$INODE64');

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
      lastAccess: fromSeconds(ref.st_atimespec.tv_sec, ref.st_atimespec.tv_nsec),
      lastModified: fromSeconds(ref.st_mtimespec.tv_sec, ref.st_mtimespec.tv_nsec),
      lastStatusChange: fromSeconds(ref.st_ctimespec.tv_sec, ref.st_ctimespec.tv_nsec),
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

  external _timespec_struct st_atimespec;

  external _timespec_struct st_mtimespec;

  external _timespec_struct st_ctimespec;

  external _timespec_struct st_birthtimespec;

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

class _timespec_struct extends ffi.Struct {
  @ffi.Int64()
  external int tv_sec;

  @ffi.Int64()
  external int tv_nsec;
}