/*
 * Copyright (c) 2025 S. Brett Sutton 2022+
 *
 * This software is licensed under the MIT License.
 * SPDX-License-Identifier: MIT
 */

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart' as ffi;
import 'package:meta/meta.dart';

import 'libc.dart';
import 'posix_exception.dart';
import 'unistd/errno.dart';

/// Return system information.
Sysinfo sysinfo() {
  _sysinfo ??= Libc().dylib.lookupFunction<
      ffi.Int32 Function(ffi.Pointer<_sysinfo_t> __info),
      _dart_sysinfo>('sysinfo');

  final ptr = ffi.malloc<_sysinfo_t>();
  final res = _sysinfo!(ptr);
  if (res != 0) {
    ffi.malloc.free(ptr);
    throw PosixException('sysinfo call failed', errno());
  }

  final info = Sysinfo(
    uptime: Duration(seconds: ptr.ref.uptime),
    loads: [ptr.ref.loads[0], ptr.ref.loads[1], ptr.ref.loads[2]],
    totalram: ptr.ref.totalram,
    sharedram: ptr.ref.sharedram,
    bufferram: ptr.ref.bufferram,
    totalswap: ptr.ref.totalswap,
    freeswap: ptr.ref.freeswap,
    procs: ptr.ref.procs,
    totalhigh: ptr.ref.totalhigh,
    freehigh: ptr.ref.freehigh,
    mem_unit: ptr.ref.mem_unit,
  );

  ffi.malloc.free(ptr);
  return info;
}

_dart_sysinfo? _sysinfo;

/// Certain statistics on memory and swap usage, as well as the load average.
@immutable
class Sysinfo {
  /// Constructs a new [Sysinfo] instance.
  const Sysinfo({
    required this.uptime,
    required this.loads,
    required this.totalram,
    required this.sharedram,
    required this.bufferram,
    required this.totalswap,
    required this.freeswap,
    required this.procs,
    required this.totalhigh,
    required this.freehigh,
    required this.mem_unit,
  });

  /// Duration since boot
  final Duration uptime;

  /// 1, 5, and 15 minute load averages
  final List<int> loads;

  /// Available memory size
  final int totalram;

  /// Amount of shared memory
  final int sharedram;

  /// Memory used by buffers
  final int bufferram;

  /// Total swap space size
  final int totalswap;

  /// Swap space still available
  final int freeswap;

  /// Number of current processes
  final int procs;

  /// Total high memory size
  final int totalhigh;

  /// Available high memory size
  final int freehigh;

  /// Memory unit size in bytes
  final int mem_unit;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    return other is Sysinfo &&
        uptime == other.uptime &&
        _compareList(other.loads, loads) &&
        totalram == other.totalram &&
        sharedram == other.sharedram &&
        bufferram == other.bufferram &&
        totalswap == other.totalswap &&
        freeswap == other.freeswap &&
        procs == other.procs &&
        totalhigh == other.totalhigh &&
        freehigh == other.freehigh &&
        mem_unit == other.mem_unit;
  }

  bool _compareList<T>(List<T> lhs, List<T> rhs) {
    if (lhs.length != rhs.length) {
      return false;
    }

    for (var i = 0; i < lhs.length; i++) {
      if (lhs[i] != rhs[i]) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode => Object.hash(
        uptime,
        loads,
        totalram,
        sharedram,
        bufferram,
        totalswap,
        freeswap,
        procs,
        totalhigh,
        freehigh,
        mem_unit,
      );

  @override
  String toString() =>
      'Sysinfo(uptime: $uptime, loads: $loads, totalram: $totalram, '
      'sharedram: $sharedram, bufferram: $bufferram, totalswap: $totalswap, '
      'freeswap: $freeswap, procs: $procs, totalhigh: $totalhigh, '
      'freehigh: $freehigh, mem_unit: $mem_unit)';
}

final class _sysinfo_t extends ffi.Struct {
  @ffi.Int64()
  external int uptime;

  @ffi.Uint64()
  external int _unique_loads_item_0;
  @ffi.Uint64()
  external int _unique_loads_item_1;
  @ffi.Uint64()
  external int _unique_loads_item_2;

  /// Helper for array `loads`.
  _ArrayHelper_sysinfo_loads_level0 get loads =>
      _ArrayHelper_sysinfo_loads_level0(this, [3], 0, 0);
  @ffi.Uint64()
  external int totalram;

  @ffi.Uint64()
  external int freeram;

  @ffi.Uint64()
  external int sharedram;

  @ffi.Uint64()
  external int bufferram;

  @ffi.Uint64()
  external int totalswap;

  @ffi.Uint64()
  external int freeswap;

  @ffi.Uint16()
  external int procs;

  @ffi.Uint16()
  external int pad;

  @ffi.Uint64()
  external int totalhigh;

  @ffi.Uint64()
  external int freehigh;

  @ffi.Uint32()
  external int mem_unit;

  /// Helper for array `_f`.
  // ignore: unused_element
  _ArrayHelper_sysinfo__f_level0 get _f =>
      _ArrayHelper_sysinfo__f_level0(this, [0], 0, 0);
}

/// Helper for array `loads` in struct `sysinfo`.
class _ArrayHelper_sysinfo_loads_level0 {
  final _sysinfo_t _struct;
  final List<int> dimensions;
  final int level;
  final int _absoluteIndex;
  int get length => dimensions[level];
  // ignore: sort_constructors_first
  _ArrayHelper_sysinfo_loads_level0(
      this._struct, this.dimensions, this.level, this._absoluteIndex);
  void _checkBounds(int index) {
    if (index >= length || index < 0) {
      throw RangeError(
          'Dimension $level: index not in range 0..$length exclusive.');
    }
  }

  int operator [](int index) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        return _struct._unique_loads_item_0;
      case 1:
        return _struct._unique_loads_item_1;
      case 2:
        return _struct._unique_loads_item_2;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }

  void operator []=(int index, int value) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        _struct._unique_loads_item_0 = value;
      case 1:
        _struct._unique_loads_item_1 = value;
      case 2:
        _struct._unique_loads_item_2 = value;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }
}

/// Helper for array `_f` in struct `sysinfo`.
class _ArrayHelper_sysinfo__f_level0 {
  // ignore: unused_field
  final _sysinfo_t _struct;
  final List<int> dimensions;
  final int level;
  final int _absoluteIndex;
  int get length => dimensions[level];
  // ignore: sort_constructors_first
  _ArrayHelper_sysinfo__f_level0(
      this._struct, this.dimensions, this.level, this._absoluteIndex);
  void _checkBounds(int index) {
    if (index >= length || index < 0) {
      throw RangeError(
          'Dimension $level: index not in range 0..$length exclusive.');
    }
  }

  int operator [](int index) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }

  void operator []=(int index, int value) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }
}

const int SI_LOAD_SHIFT = 16;

typedef _dart_sysinfo = int Function(
  ffi.Pointer<_sysinfo_t> __info,
);
