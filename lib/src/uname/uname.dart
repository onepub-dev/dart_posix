/* Copyright (C) S. Brett Sutton - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential
 * Written by Brett Sutton <bsutton@onepub.dev>, Jan 2022
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
Utsname uname() => ffi.using((arena) => Platform.isMacOS
    ? _uname(arena<_utsname_bsd_t>()).toUtsname()
    : _uname(arena<_utsname_gnu_t>()).toUtsname());

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
        machine == other.machine;
  }

  @override
  int get hashCode => Object.hash(
        sysname,
        nodename,
        release,
        version,
        machine,
      );

  @override
  String toString() =>
      'Utsname(sysname: $sysname, nodename: $nodename, release: $release, '
      'version: $version, machine: $machine)';
}

typedef _dart_uname = int Function(ffi.Pointer buf);
// ignore: avoid_private_typedef_functions
typedef _c_uname = ffi.Int32 Function(ffi.Pointer buf);

// ignore: non_constant_identifier_names
_dart_uname? _uname_f;

ffi.Pointer<T> _uname<T extends ffi.NativeType>(ffi.Pointer<T> buf) {
  _uname_f ??= Libc().dylib.lookupFunction<_c_uname, _dart_uname>('uname');

  final res = _uname_f!(buf);
  if (res != 0) {
    throw PosixException('uname', errno());
  }
  return buf;
}
