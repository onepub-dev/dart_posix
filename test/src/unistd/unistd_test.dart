/* Copyright (C) S. Brett Sutton - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential
 * Written by Brett Sutton <bsutton@onepub.dev>, Jan 2022
 */

import 'dart:io';

import 'package:dcli/dcli.dart' as dcli;
import 'package:dcli_core/dcli_core.dart' as core;
import 'package:path/path.dart' hide equals;
import 'package:posix/posix.dart';
import 'package:test/test.dart';

void main() {
  test('getcwd ...', () async {
    /// call the dart version which wraps the posix version.
    expect(getcwd(), equals(Directory.current.path));
  });

  test('gethostname ...', () async {
    late String _hostname;
    await Process.run('hostname', []).then((results) {
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

  test('chmod', () async {
    await core.withTempFile((file) async {
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

  test('setuid', () async {
    final pathToTest = dcli.DartProject.self.pathToTestDir;
    final pathToSript = join(pathToTest, 'src', 'unistd', 'unistd_test.sh');

    final euid = geteuid();

    var lines = pathToSript.toList(runInShell: true);
    expect(lines[0], equals('$euid'));

    final users = getUsers();

    final altEuid =
        users.firstWhere((user) => user.uid != euid && user.uid != 0).uid;
    expect(altEuid != 0, isTrue);

    seteuid(altEuid);
    expect(geteuid() == altEuid, isTrue);

    lines = pathToSript.toList(runInShell: true);

    expect(lines[0], equals('$altEuid'));

    seteuid(euid);

    lines = pathToSript.toList(runInShell: true);

    expect(lines[0], equals('$euid'));
  }, skip: true, tags: ['sudo']);
}
