// ignore_for_file: constant_identifier_names

part of 'uname.dart';

const _UTSNAME_GNU_LENGTH = 65;

class _utsname_gnu_t extends ffi.Struct {
  @ffi.Array.multi([_UTSNAME_GNU_LENGTH])
  external ffi.Array<ffi.Int8> sysname;

  @ffi.Array.multi([_UTSNAME_GNU_LENGTH])
  external ffi.Array<ffi.Int8> nodename;

  @ffi.Array.multi([_UTSNAME_GNU_LENGTH])
  external ffi.Array<ffi.Int8> release;

  @ffi.Array.multi([_UTSNAME_GNU_LENGTH])
  external ffi.Array<ffi.Int8> version;

  @ffi.Array.multi([_UTSNAME_GNU_LENGTH])
  external ffi.Array<ffi.Int8> machine;
}

extension _UtsnameGnu on ffi.Pointer<_utsname_gnu_t> {
  Utsname toUtsname() => Utsname(
        sysname: ref.sysname.toDartString(_UTSNAME_GNU_LENGTH),
        nodename: ref.nodename.toDartString(_UTSNAME_GNU_LENGTH),
        release: ref.release.toDartString(_UTSNAME_GNU_LENGTH),
        version: ref.version.toDartString(_UTSNAME_GNU_LENGTH),
        machine: ref.machine.toDartString(_UTSNAME_GNU_LENGTH),
      );
}
