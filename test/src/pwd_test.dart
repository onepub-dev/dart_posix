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
    final passwd = getpwnam(Platform.environment['USER']!);

    print(passwd);
    expect(passwd.username, equals(Platform.environment['USER']));
    expect(passwd.uid, greaterThanOrEqualTo(0));
    expect(passwd.gid, greaterThanOrEqualTo(0));

    final byUid = getpwuid(passwd.uid);

    print(byUid);
    expect(byUid.uid, equals(passwd.uid));
    expect(byUid.username, equals(passwd.username));
    expect(byUid.homePathTo, equals(passwd.homePathTo));
  }, skip: Platform.isWindows);

  test('pwd list users', () async {
    final users = getUsers();
    for (final user in users) {
      print(user);
    }
    expect(users, isNotEmpty);
  }, skip: Platform.isWindows);
}
