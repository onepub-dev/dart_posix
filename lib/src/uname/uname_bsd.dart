/* Copyright (C) S. Brett Sutton - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential
 * Written by Brett Sutton <bsutton@onepub.dev>, Jan 2022
 */

// ignore_for_file: constant_identifier_names

part of 'uname.dart';

const _UTSNAME_BSD_LENGTH = 256;

class _utsname_bsd_t extends ffi.Struct {
  @ffi.Array.multi([_UTSNAME_BSD_LENGTH])
  external ffi.Array<ffi.Int8> sysname;

  @ffi.Array.multi([_UTSNAME_BSD_LENGTH])
  external ffi.Array<ffi.Int8> nodename;

  @ffi.Array.multi([_UTSNAME_BSD_LENGTH])
  external ffi.Array<ffi.Int8> release;

  @ffi.Array.multi([_UTSNAME_BSD_LENGTH])
  external ffi.Array<ffi.Int8> version;

  @ffi.Array.multi([_UTSNAME_BSD_LENGTH])
  external ffi.Array<ffi.Int8> machine;
}

extension _UtsnameBsd on ffi.Pointer<_utsname_bsd_t> {
  Utsname toUtsname() => Utsname(
        sysname: ref.sysname.toDartString(_UTSNAME_BSD_LENGTH),
        nodename: ref.nodename.toDartString(_UTSNAME_BSD_LENGTH),
        release: ref.release.toDartString(_UTSNAME_BSD_LENGTH),
        version: ref.version.toDartString(_UTSNAME_BSD_LENGTH),
        machine: ref.machine.toDartString(_UTSNAME_BSD_LENGTH),
      );
}
