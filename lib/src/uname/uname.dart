/*
 * Copyright (c) 2025 S. Brett Sutton 2022+
 *
 * This software is licensed under the MIT License.
 * SPDX-License-Identifier: MIT
 */

import 'dart:ffi' as ffi;
import 'dart:io';

import 'package:ffi/ffi.dart' as ffi;
import 'package:meta/meta.dart';

import '../libc.dart';
import '../posix_exception.dart';
import '../unistd/errno.dart';
import '../util/conversions.dart';

part 'uname_bsd.dart';
part 'uname_gnu.dart';

/// Returns name and information about current kernel.
// Utsname uname() => ffi.using((arena) {

//   return Platform.isMacOS
//     ? _uname(arena<_utsname_bsd_t>()).toUtsname()
//     : _uname(arena<_utsname_gnu_t>()).toUtsname();
// });

Utsname uname() => Platform.isMacOS ? _unameBsd() : _unameGnu();

Utsname _unameBsd() {
  final f = _uname_bsd_f ??= Libc().dylib.lookupFunction<
      ffi.Int32 Function(ffi.Pointer<_utsname_bsd_t> __info),
      _dart_utsname_bsd>('uname');

  final buf = ffi.malloc<_utsname_bsd_t>();
  final res = f(buf);
  if (res != 0) {
    throw PosixException('uname', errno());
  }
  final utsName = buf.toUtsname();

  ffi.malloc.free(buf);
  return utsName;
}

Utsname _unameGnu() {
  final f = _uname_gnu_f ??= Libc().dylib.lookupFunction<
      ffi.Int32 Function(ffi.Pointer<_utsname_gnu_t> __info),
      _dart_utsname_gnu>('uname');

  final buf = ffi.malloc<_utsname_gnu_t>();
  final res = f(buf);
  if (res != 0) {
    throw PosixException('uname', errno());
  }
  final utsName = buf.toUtsname();

  ffi.malloc.free(buf);
  return utsName;
}

/// Name and information about current kernel.
@immutable
class Utsname {
  /// Constructs a new [Utsname] instance.
  const Utsname({
    required this.sysname,
    required this.nodename,
    required this.release,
    required this.version,
    required this.machine,
    required this.domain,
  });

  /// Operating system name (e.g., "Linux")
  final String sysname;

  /// Name within "some implementation-defined network"
  final String nodename;

  /// Operating system release (e.g., "2.6.28")
  final String release;

  /// Operating system version
  final String version;

  /// Hardware identifier
  final String machine;

  /// NIS or YP domain name
  final String domain;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    return other is Utsname &&
        sysname == other.sysname &&
        nodename == other.nodename &&
        release == other.release &&
        version == other.version &&
        machine == other.machine &&
        domain == other.domain;
  }

  @override
  int get hashCode => Object.hash(
        sysname,
        nodename,
        release,
        version,
        machine,
        domain,
      );

  @override
  String toString() =>
      'Utsname(sysname: $sysname, nodename: $nodename, release: $release, '
      'version: $version, machine: $machine, domain: $domain)';
}

// ignore: non_constant_identifier_names
int Function(ffi.Pointer<_utsname_bsd_t>)? _uname_bsd_f;

// ignore: non_constant_identifier_names
int Function(ffi.Pointer<_utsname_gnu_t>)? _uname_gnu_f;
