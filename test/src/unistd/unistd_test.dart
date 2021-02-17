import 'dart:io';
import 'package:posix/posix.dart';
import 'package:test/test.dart';

void main() {
  test('getcwd ...', () async {
    /// call the dart version which wraps the posix version.
    expect(getcwd(), equals(Directory.current.path));
  });

  test('gethostname ...', () async {
    late String _hostname;
    await Process.run('hostname', []).then((ProcessResult results) {
      _hostname = results.stdout.toString().split('\n')[0];
    });

    expect(gethostname(), equals(_hostname));
  });
  test('getpid ...', () async {
    expect(getpid(), equals(pid));
  });

  test('getppid ...', () async {
    expect(getppid(), equals(isPositive));
    expect(getppid(), isNot(equals(pid)));
  });

  test('chown', () {
    chown('/tmp', 1000, 1000);
  });
}
