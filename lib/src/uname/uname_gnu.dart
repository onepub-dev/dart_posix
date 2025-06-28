/*
 * Copyright (c) 2025 S. Brett Sutton 2022+
 *
 * This software is licensed under the MIT License.
 * SPDX-License-Identifier: MIT
 */

// ignore_for_file: constant_identifier_names

part of 'uname.dart';

const _UTSNAME_GNU_LENGTH = 65;

final class _utsname_gnu_t extends ffi.Struct {
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

  @ffi.Array.multi([_UTSNAME_GNU_LENGTH])
  external ffi.Array<ffi.Int8> domain;
}

extension _UtsnameGnu on ffi.Pointer<_utsname_gnu_t> {
  Utsname toUtsname() => Utsname(
        sysname: ref.sysname.toDartString(_UTSNAME_GNU_LENGTH),
        nodename: ref.nodename.toDartString(_UTSNAME_GNU_LENGTH),
        release: ref.release.toDartString(_UTSNAME_GNU_LENGTH),
        version: ref.version.toDartString(_UTSNAME_GNU_LENGTH),
        machine: ref.machine.toDartString(_UTSNAME_GNU_LENGTH),
        domain: ref.domain.toDartString(_UTSNAME_GNU_LENGTH),
      );
}

// ignore: avoid_private_typedef_functions
typedef _dart_utsname_gnu = int Function(
  ffi.Pointer<_utsname_gnu_t> __info,
);
