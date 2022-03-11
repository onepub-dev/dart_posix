import 'dart:io';

import 'package:posix/src/pwd.dart';
import 'package:test/test.dart';

void main() {
  test('pwd ...', () async {
    var passwd = getpwnam(Platform.environment['USER']!);

    print(passwd);

    passwd = getpwuid(passwd.uid);

    print(passwd);
  }, skip: !Platform.isLinux); // TODO: fix macOS (_passwd.gecos == nullptr)
}
