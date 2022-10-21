/* Copyright (C) S. Brett Sutton - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential
 * Written by Brett Sutton <bsutton@onepub.dev>, Jan 2022
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
