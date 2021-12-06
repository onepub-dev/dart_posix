import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart';

import '../../posix.dart';

abstract class OsStatCall<T extends ffi.Struct> {
  OsStatCall(this._sysCallName) {
    _sysCall = lookupSystemCall(_sysCallName);
  }

  final String _sysCallName;

  late final OsStatCall_dart<T> _sysCall;

  Stat call(String pathToFile) {
    final file_ptr = pathToFile.toNativeUtf8();
    final stat_ptr = newBuffer();
    final result = _sysCall(file_ptr, stat_ptr);
    malloc.free(file_ptr);
    if (result != 0) {
      malloc.free(stat_ptr);
      throw PosixException('$_sysCallName call failed', errno());
    }

    final stat = toStat(stat_ptr);
    malloc.free(stat_ptr);
    return stat;
  }
  DateTime fromSeconds(int seconds, [int nanoseconds = 0]) =>
    DateTime.fromMicrosecondsSinceEpoch(seconds * 1000000 + nanoseconds ~/ 1000);

  // Ideally this method could be implemented
  // here, in the base class, but the ffi stuff
  // needs concrete types and not just generics.
  //
  OsStatCall_dart<T> lookupSystemCall(String name);

  // Ideally this method could be implemented
  // here, in the base class, but the ffi stuff
  // needs concrete types and not just generics.
  //
  ffi.Pointer<T> newBuffer();

  Stat toStat(ffi.Pointer<T> stat_ptr);

}

typedef OsStatCall_c<T extends ffi.Struct> = ffi.Int32 Function(
  ffi.Pointer<Utf8> __file,
  ffi.Pointer<T> __buf,
);

typedef OsStatCall_dart<T extends ffi.Struct> = int Function(
  ffi.Pointer<Utf8> __file,
  ffi.Pointer<T> __buf,
);