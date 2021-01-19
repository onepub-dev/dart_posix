import 'package:posix/src/pwd.dart';
import 'package:test/test.dart';

void main() {
  test('pwd ...', () async {
    var passwd = getpwnam('bsutton');

    print(passwd);

    passwd = getpwuid(passwd.uid);

    print(passwd);
  });
}
