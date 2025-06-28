/*
 * Copyright (c) 2025 S. Brett Sutton 2022+
 *
 * This software is licensed under the MIT License.
 * SPDX-License-Identifier: MIT
 */

import 'package:posix/src/uname/uname.dart';
import 'package:test/test.dart';

void main() {
  test('uname', () async {
    final utsname = uname();
    print(utsname);

    expect(utsname.sysname, isNotEmpty);
    expect(utsname.nodename, isNotEmpty);
    expect(utsname.release, isNotEmpty);
    expect(utsname.version, isNotEmpty);
    expect(utsname.machine, isNotEmpty);
  });
}
