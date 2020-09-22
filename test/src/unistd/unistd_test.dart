import 'package:posix/posix.dart';
import 'package:test/test.dart';

void main() {
  test('unistd ...', () async {
    print(getcwd());
  });
}
