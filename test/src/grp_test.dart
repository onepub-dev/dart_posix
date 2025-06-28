/*
 * Copyright (c) 2025 S. Brett Sutton 2022+
 *
 * This software is licensed under the MIT License.
 * SPDX-License-Identifier: MIT
 */

import 'dart:io';

import 'package:posix/posix.dart';
import 'package:test/test.dart';

void main() {
  test('grp ...', () async {
    var group = getgrnam(Platform.isMacOS ? 'admin' : 'adm');

    print(group);

    group = getgrgid(group.gid);

    print(group);
  });
}
