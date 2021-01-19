import 'dart:ffi' as ffi;
import 'dart:io' show Platform;

class Libc {
  static final Libc _self = Libc._internal();

  ffi.DynamicLibrary dylib;

  factory Libc() => _self;

  Libc._internal() {
    var path = 'libc.so.6';
    if (Platform.isMacOS) path = '/usr/lib/libSystem.dylib';
    if (Platform.isWindows) path = r'primitives_library\Debug\primitives.dll';
    dylib = ffi.DynamicLibrary.open(path);
  }

  ffi.Pointer<T> lookup<T extends ffi.NativeType>(String funcname) =>
      dylib.lookup(funcname);

  // F lookupFunction<T extends Function, F extends Function>(String symbolName) =>
  //     dylib.lookupFunction(symbolName);
}
