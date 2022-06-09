/* Copyright (C) S. Brett Sutton - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential
 * Written by Brett Sutton <bsutton@onepub.dev>, Jan 2022
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
