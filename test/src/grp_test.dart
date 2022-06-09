/* Copyright (C) S. Brett Sutton - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential
 * Written by Brett Sutton <bsutton@onepub.dev>, Jan 2022
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
