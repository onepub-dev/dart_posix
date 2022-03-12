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
