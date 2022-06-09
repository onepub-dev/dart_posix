/* Copyright (C) S. Brett Sutton - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential
 * Written by Brett Sutton <bsutton@onepub.dev>, Jan 2022
 */

import 'dart:io';

import 'package:posix/src/pwd.dart';
import 'package:test/test.dart';

void main() {
  test('pwd ...', () async {
    var passwd = getpwnam(Platform.environment['USER']!);

    print(passwd);

    passwd = getpwuid(passwd.uid);

    print(passwd);
  },
      skip: !Platform
          .isLinux); // TODO(jpnurmi): fix macOS (_passwd.gecos == nullptr)
}
