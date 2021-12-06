import 'dart:convert';

import 'package:dcli/dcli.dart' as dcli;
import 'package:posix/posix.dart' show lstat, stat, Mode, Stat;
import 'package:test/test.dart';

void main() {
    group('stat:', () {
      late final String scratch;

      setUpAll(() async {
        scratch = _runScript('mytest', 'setup').first;
      });

      tearDownAll(() async {
        _runScript('mytest', 'teardown');
      });

      Stat basicCheck(String path) =>
        _basicCheck(path.startsWith('/') ? path : '$scratch/$path');

      test('file', () {
        final struct = basicCheck('test_file');

        expect(struct.mode.isFile, true);
        expect(struct.mode.isDirectory, false);

        expect(struct.nlink, 3, reason: 'nlink should be 3');
      });

      test('directory', () {
        final struct = basicCheck('test_dir');

        expect(struct.mode.isFile, false);
        expect(struct.mode.isDirectory, true);
      });

      test('character device (/dev/tty)', () {
        final struct = basicCheck('/dev/tty');

        expect(struct.mode.isFile, false);
        expect(struct.mode.isDirectory, false);
        expect(struct.mode.isCharacterDevice, true);

        expect(struct.uid, 0, reason: 'should be owned by root(?)');
      });
    });
}

Stat _basicCheck(String path) {
  // Load the data from the actual system call
  final sys = lstat(path);

  // Get information for the same path from the command line
  final cli = _fromMap(jsonDecode(_runScript('mystat', '"$path"').join('\n')));

  expect(sys.deviceId, cli.deviceId, reason: 'deviceId');
  expect(sys.inode, cli.inode, reason: 'inode');
  expect(sys.mode, cli.mode, reason: 'mode');
  expect(sys.nlink, cli.nlink, reason: 'nlink');
  expect(sys.uid, cli.uid, reason: 'uid');
  expect(sys.gid, cli.gid, reason: 'gid');
  expect(sys.rdev, cli.rdev, reason: 'rdev');
  expect(sys.size, cli.size, reason: 'size');
  expect(sys.blocks, cli.blocks, reason: 'blocks');

  // check dates
  // The simple `mystat` script returns times rounded down
  // to the nearest second, so we can't check anything more precise.
  //
  expect(_inSeconds(sys.lastAccess), cli.lastAccess, reason: 'lastAccess');
  expect(_inSeconds(sys.lastModified), cli.lastModified, reason: 'lastModified');
  expect(_inSeconds(sys.lastStatusChange), cli.lastStatusChange, reason: 'lastStatusChange');

  return sys;
}

Stat _fromMap(Map<String, dynamic> map) =>
  Stat(
    deviceId: map['deviceId'],
    inode: map['inode'],
    mode: Mode.fromString(map['mode']),
    nlink: map['nlink'],
    uid: map['uid'],
    gid: map['gid'],
    rdev: map['rdev'],
    size: map['size'],
    blockSize: map['blockSize'],
    blocks: map['blocks'],
    lastAccess: _fromSeconds(map['lastAccess']),
    lastModified: _fromSeconds(map['lastModified']),
    lastStatusChange: _fromSeconds(map['lastStatusChange']),
  );

DateTime _fromSeconds(int seconds) =>
  DateTime.fromMillisecondsSinceEpoch(seconds * 1000);

DateTime _inSeconds(DateTime real) =>
  DateTime(real.year, real.month, real.day, real.hour, real.minute, real.second);

List<String> _runScript(String name, String args) =>
  'test/scripts/$name $args'.toList();