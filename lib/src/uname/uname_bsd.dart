/*
 * Copyright (c) 2025 S. Brett Sutton 2022+
 *
 * This software is licensed under the MIT License.
 * SPDX-License-Identifier: MIT
 */

// ignore_for_file: constant_identifier_names

part of 'uname.dart';

const _UTSNAME_BSD_LENGTH = 256;

final class _utsname_bsd_t extends ffi.Struct {
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
        domain: '(none)',
      );
}

// ignore: avoid_private_typedef_functions
typedef _dart_utsname_bsd = int Function(
  ffi.Pointer<_utsname_bsd_t> __info,
);
