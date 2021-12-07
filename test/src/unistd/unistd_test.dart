import 'dart:io';
import 'package:posix/posix.dart';
import 'package:test/test.dart';
import 'package:dcli/dcli.dart' show withTempFile;

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

  /// This test requires sudo to run
  test('chown', () {
    chown('/tmp', 1000, 1000);
  }, skip: true, tags: ['sudo']);

  test('chmod', () {
    withTempFile((file) {
      var _stat = stat(file);
      chmod(file, '777');
      _stat = stat(file);
      expect(_stat.mode.isOwnerReadable, isTrue);
      expect(_stat.mode.isOwnerWritable, isTrue);
      expect(_stat.mode.isOwnerExecutable, isTrue);
      expect(_stat.mode.isGroupReadable, isTrue);
      expect(_stat.mode.isGroupWritable, isTrue);
      expect(_stat.mode.isGroupExecutable, isTrue);
      expect(_stat.mode.isOtherReadable, isTrue);
      expect(_stat.mode.isOtherWritable, isTrue);
      expect(_stat.mode.isOtherExecutable, isTrue);

      chmod(file, '666');
      _stat = stat(file);
      expect(_stat.mode.isOwnerReadable, isTrue);
      expect(_stat.mode.isOwnerWritable, isTrue);
      expect(_stat.mode.isOwnerExecutable, isFalse);
      expect(_stat.mode.isGroupReadable, isTrue);
      expect(_stat.mode.isGroupWritable, isTrue);
      expect(_stat.mode.isGroupExecutable, isFalse);
      expect(_stat.mode.isOtherReadable, isTrue);
      expect(_stat.mode.isOtherWritable, isTrue);
      expect(_stat.mode.isOtherExecutable, isFalse);

      chmod(file, '444');
      _stat = stat(file);
      expect(_stat.mode.isOwnerReadable, isTrue);
      expect(_stat.mode.isOwnerWritable, isFalse);
      expect(_stat.mode.isOwnerExecutable, isFalse);
      expect(_stat.mode.isGroupReadable, isTrue);
      expect(_stat.mode.isGroupWritable, isFalse);
      expect(_stat.mode.isGroupExecutable, isFalse);
      expect(_stat.mode.isOtherReadable, isTrue);
      expect(_stat.mode.isOtherWritable, isFalse);
      expect(_stat.mode.isOtherExecutable, isFalse);

      chmod(file, '222');
      _stat = stat(file);
      expect(_stat.mode.isOwnerReadable, isFalse);
      expect(_stat.mode.isOwnerWritable, isTrue);
      expect(_stat.mode.isOwnerExecutable, isFalse);
      expect(_stat.mode.isGroupReadable, isFalse);
      expect(_stat.mode.isGroupWritable, isTrue);
      expect(_stat.mode.isGroupExecutable, isFalse);
      expect(_stat.mode.isOtherReadable, isFalse);
      expect(_stat.mode.isOtherWritable, isTrue);
      expect(_stat.mode.isOtherExecutable, isFalse);
    });
  }, skip: true, tags: ['sudo']);
}
