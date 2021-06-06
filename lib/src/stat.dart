import 'dart:ffi' as ffi;
import 'dart:io';

import 'package:ffi/ffi.dart';

import '../posix.dart';
import 'libc.dart';

late final _native_stat_func =
    Libc().dylib.lookupFunction<_c_stat_1, _dart_stat_1>('stat');

/// Get file attributes for FILE and put them in BUF.
int native_stat(
  ffi.Pointer<Utf8> __file,
  ffi.Pointer<_stat_struct> __buf,
) {
  return _native_stat_func(
    __file,
    __buf,
  );
}

Stat stat(String pathToFile) {
  var c_stat_struct = malloc.allocate<_stat_struct>(ffi.sizeOf<_stat_struct>());
  var c_pathToFile = pathToFile.toNativeUtf8();

  int result;
  if (Platform.isMacOS) {
    result = native_stat(c_pathToFile, c_stat_struct);
  } else {
    result = native_xstat(c_pathToFile, c_stat_struct);
  }

  malloc.free(c_pathToFile);

  Stat stat;
  if (result == 0) {
    stat = Stat._fromNativeStat(c_stat_struct.ref);
    malloc.free(c_stat_struct);
  } else {
    malloc.free(c_stat_struct);
    throw PosixException('Call to stat() failed.', errno());
  }

  return stat;
}

int native_xstat(
  ffi.Pointer<Utf8> __filename,
  ffi.Pointer<_stat_struct> __stat_buf,
) {
  return _native_xstat_func(
    1,
    __filename,
    __stat_buf,
  );
}

late final _native_xstat_func =
    Libc().dylib.lookupFunction<_c___xstat, _dart___xstat>('__xstat');

class Stat {
  Stat._fromNativeStat(_stat_struct _stat)
      : deviceId = _stat.st_dev,
        inode = _stat.st_ino,
        mode = Mode.fromInt(_stat.st_mode),
        nlink = _stat.st_nlink,
        uid = _stat.st_uid,
        gid = _stat.st_gid,
        rdev = _stat.st_rdev,
        size = _stat.st_size,
        blockSize = _stat.st_blksize,
        blocks = _stat.st_blocks,
        lastAccess =
            DateTime.fromMillisecondsSinceEpoch(_stat.st_atim.tv_sec * 1000),
        lastModified =
            DateTime.fromMillisecondsSinceEpoch(_stat.st_mtim.tv_sec * 1000),
        lastStatusChange =
            DateTime.fromMillisecondsSinceEpoch(_stat.st_ctim.tv_sec * 1000);

  /// st_dev - ID of device containing filesystem entity
  final int deviceId;

  /// st_ino - Inode number of filesystem entity
  final int inode;

  /// st_mode - File type and mode
  late final Mode mode;

  /// st_nlink Number of hard links to the filesystem entity
  final int nlink;

  /// st_uid - User ID of the filesystem entity owner
  final int uid;

  /// st_gid -  Group ID of the filesystem entity owner
  final int gid;

  /// st_rdev -  Device ID (if special filesystem entity)
  final int rdev;

  /// st_size - Total size of filesystem entity, in bytes
  final int size;

  /// st_blksize -  This field gives the "preferred" blocksize for efficient
  /// filesystem I/O.  (Writing to a file in smaller chunks may
  /// cause an inefficient read-modify-rewrite.)
  final int blockSize;

  /// st_blocks - Number of 512B blocks allocated
  final int blocks;

  /* Since Linux 2.6, the kernel supports nanosecond
                  precision for the following timestamp fields.
                  For the details before Linux 2.6, see NOTES. */

  ///  st_atim -  Time of last access to the filesystem entity
  final DateTime lastAccess;

  /// st_mtim -  Time of last modification to the filesystem entity
  final DateTime lastModified;

  /// st_ctim - Time of last status change for the filesystem entity
  /// It is changed by writing or by setting inode information (i.e.,
  ///   owner, group, link count, mode, etc.).
  final DateTime lastStatusChange;
}

class Mode {
  final int _mode;

  Mode.fromInt(this._mode);

  bool get isFile => _mode & _S_IFREG == 1;
  bool get isDirectory => _mode & _S_IFDIR == 1;
  bool get isCharacterDevice => _mode & _S_IFCHR == 1;
  bool get isBlockDevice => _mode & _S_IFBLK == 1;
  bool get isNamedPipe => _mode & _S_IFIFO == 1;
  bool get isLink => _mode & S_IFLNK == 1;
  bool get isSocket => _mode & S_IFSOCK == 1;

  bool get isUserReadable => _mode & S_IRUSR == 1;
  bool get isUserWritable => _mode & S_IWUSR == 1;
  bool get isUserExecutable => _mode & S_IXUSR == 1;

  bool get isGroupReadable => _mode & S_IRGRP == 1;
  bool get isGroupWritable => _mode & S_IWGRP == 1;
  bool get isGroupExecutable => _mode & S_IXGRP == 1;

  bool get isOtherReadable => _mode & S_IROTH == 1;
  bool get isOtherWritable => _mode & S_IWOTH == 1;
  bool get isOtherExecutable => _mode & S_IXOTH == 1;

  bool get isSticky => _mode & S_ISVTX == 1;
  bool get isSetUserID => _mode & S_ISUID == 1;
  bool get isSetGroupID => _mode & S_ISGID == 1;
}

typedef _c_stat_1 = ffi.Int32 Function(
  ffi.Pointer<Utf8> __file,
  ffi.Pointer<_stat_struct> __buf,
);

typedef _dart_stat_1 = int Function(
  ffi.Pointer<Utf8> __file,
  ffi.Pointer<_stat_struct> __buf,
);

typedef _c___xstat = ffi.Int32 Function(
  ffi.Int32 __ver,
  ffi.Pointer<Utf8> __filename,
  ffi.Pointer<_stat_struct> __stat_buf,
);

typedef _dart___xstat = int Function(
  int __ver,
  ffi.Pointer<Utf8> __filename,
  ffi.Pointer<_stat_struct> __stat_buf,
);

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

  external timespec st_atim;

  external timespec st_mtim;

  external timespec st_ctim;

  @ffi.Int64()
  external int _unique___glibc_reserved_item_0;
  @ffi.Int64()
  external int _unique___glibc_reserved_item_1;
  @ffi.Int64()
  external int _unique___glibc_reserved_item_2;

  /// Helper for array `__glibc_reserved`.
  // ignore: unused_element
  ArrayHelper_stat___glibc_reserved_level0 get __glibc_reserved =>
      ArrayHelper_stat___glibc_reserved_level0(this, [3], 0, 0);
}

class timespec extends ffi.Struct {
  @ffi.Int64()
  external int tv_sec;

  @ffi.Int64()
  external int tv_nsec;
}

/// Helper for array `__glibc_reserved` in struct `stat`.
class ArrayHelper_stat___glibc_reserved_level0 {
  final _stat_struct _struct;
  final List<int> dimensions;
  final int level;
  final int _absoluteIndex;
  int get length => dimensions[level];
  ArrayHelper_stat___glibc_reserved_level0(
      this._struct, this.dimensions, this.level, this._absoluteIndex);
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
        return _struct._unique___glibc_reserved_item_0;
      case 1:
        return _struct._unique___glibc_reserved_item_1;
      case 2:
        return _struct._unique___glibc_reserved_item_2;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }

  void operator []=(int index, int value) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        _struct._unique___glibc_reserved_item_0 = value;
        break;
      case 1:
        _struct._unique___glibc_reserved_item_1 = value;
        break;
      case 2:
        _struct._unique___glibc_reserved_item_2 = value;
        break;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }
}

// ignore: unused_element
const int _S_IFMT = 61440;

const int _S_IFDIR = 16384;

const int _S_IFCHR = 8192;

const int _S_IFBLK = 24576;

const int _S_IFREG = 32768;

const int _S_IFIFO = 4096;

const int S_IFLNK = 40960;

const int S_IFSOCK = 49152;

const int S_ISUID = 2048;

const int S_ISGID = 1024;

const int S_ISVTX = 512;

const int S_IRUSR = 256;

const int S_IWUSR = 128;

const int S_IXUSR = 64;

const int S_IRWXU = 448;

const int S_IREAD = 256;

const int S_IWRITE = 128;

const int S_IEXEC = 64;

const int S_IRGRP = 32;

const int S_IWGRP = 16;

const int S_IXGRP = 8;

const int S_IRWXG = 56;

const int S_IROTH = 4;

const int S_IWOTH = 2;

const int S_IXOTH = 1;

const int S_IRWXO = 7;
