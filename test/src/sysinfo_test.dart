/*
 * Copyright (c) 2025 S. Brett Sutton 2022+
 *
 * This software is licensed under the MIT License.
 * SPDX-License-Identifier: MIT
 */

import 'dart:io';

import 'package:posix/src/sysinfo.dart';
import 'package:test/test.dart';

void main() {
  test('sysinfo', () async {
    final info = sysinfo();
    print(info);

    expect(info.uptime, isNot(equals(Duration.zero)));
    expect(info.loads, hasLength(3));
    for (final load in info.loads) {
      expect(load, isPositive);
    }
    expect(info.totalram, isPositive);
    expect(info.sharedram, isPositive);
    expect(info.bufferram, isNonNegative);
    expect(info.totalswap, isNonNegative);
    expect(info.freeswap, isNonNegative);
    expect(info.procs, isPositive);
    expect(info.totalhigh, isNonNegative);
    expect(info.freehigh, isNonNegative);
    expect(info.mem_unit, isPositive);
  },
      skip: !Platform
          .isLinux); // TODO(jpnurmi): fix macOS (undefined symbol "sysinfo")
}
