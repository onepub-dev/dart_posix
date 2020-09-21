import 'dart:ffi';
import 'dart:io' show Platform;

class Libc {
  static final Libc _self = Libc._internal();

  DynamicLibrary dylib;

  factory Libc() => _self;

  Libc._internal() {
    var path = 'libc.so.6';
    if (Platform.isMacOS) path = '/usr/lib/libSystem.dylib';
    if (Platform.isWindows) path = r'primitives_library\Debug\primitives.dll';
    dylib = DynamicLibrary.open(path);
  }

  Pointer<NativeFunction<F>> lookup<F extends Function>(String funcname) =>
      dylib.lookup<NativeFunction<F>>(funcname);

  F lookupFunction<T extends Function, F extends Function>(String symbolName) =>
      dylib.lookupFunction(symbolName);
}
