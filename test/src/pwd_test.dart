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
  test('pwd ...', () async {
    var passwd = getpwnam(Platform.environment['USER']!);

    print(passwd);

    passwd = getpwuid(passwd.uid);

    print(passwd);
  }, skip: Platform.isWindows);

  test('pwd list users', () async {
    getUsers().forEach(print);
  }, skip: Platform.isWindows);
}
