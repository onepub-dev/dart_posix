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
    final expectedName = Platform.isMacOS ? 'admin' : 'adm';
    final group = getgrnam(expectedName);

    print(group);
    expect(group.name, equals(expectedName));
    expect(group.gid, greaterThan(0));
    expect(group.members, isNotNull);

    final byId = getgrgid(group.gid);

    print(byId);
    expect(byId.gid, equals(group.gid));
    expect(byId.name, equals(group.name));
    expect(byId.members, isNotEmpty);
  });
}
