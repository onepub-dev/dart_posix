import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart';

import '../../posix.dart';

typedef c_func<T extends ffi.Struct> = ffi.Int32 Function(
  ffi.Pointer<Utf8> __file,
  ffi.Pointer<T> __buf,
);

typedef dart_func<T extends ffi.Struct> = int Function(
  ffi.Pointer<Utf8> __file,
  ffi.Pointer<T> __buf,
);

abstract class stat_call<T extends ffi.Struct> {
  stat_call(this.name) {
    func = lookup(name);
  }

  final String name;

  late final dart_func<T> func;

  // Ideally this method could be implemented
  // here, in the base class, but
  //
  //    malloc(ffi.sizeOf<T>())
  //
  // doesn't work but it needs a concrete class
  // rather than a generic.
  //
  ffi.Pointer<T> alloc();

  Stat call(String pathToFile) {
    final file_ptr = pathToFile.toNativeUtf8();
    final stat_ptr = alloc();
    final result = func(file_ptr, stat_ptr);
    malloc.free(file_ptr);
    if (result != 0) {
      malloc.free(stat_ptr);
      throw 'yikes!';
    }

    final stat = copy(stat_ptr);
    malloc.free(stat_ptr);
    return stat;
  }

  Stat copy(ffi.Pointer<T> stat_ptr);

  DateTime fromSeconds(int seconds, [int nanoseconds = 0]) =>
    DateTime.fromMicrosecondsSinceEpoch(seconds * 1000000 + nanoseconds ~/ 1000);

  // See the comment for alloc() above
  // for why this is virtual.
  //
  dart_func<T> lookup(String name);
}