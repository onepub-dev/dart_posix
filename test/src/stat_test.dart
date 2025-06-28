/*
 * Copyright (c) 2025 S. Brett Sutton 2022+
 *
 * This software is licensed under the MIT License.
 * SPDX-License-Identifier: MIT
 */

import 'dart:convert';
import 'dart:io';

import 'package:cli_script/cli_script.dart' as cli;
import 'package:path/path.dart';
import 'package:posix/posix.dart' hide group;
import 'package:test/test.dart';

import 'dcli/create_dir.dart';
import 'dcli/temp_file.dart' as tf;
import 'dcli/touch.dart';

void main() {
  group('stat:', () {
    test('missing', () async {
      final temp = await createTempDir();
      final path = join(temp, 'missing_file');
      bool succeeded;
      try {
        lstat(path);
        succeeded = true;
      } on PosixException {
        succeeded = false;
      }
      expect(succeeded, false);
    });

    test('file', () async {
      await withTempDir((temp) async {
        await tf.withTempFile<void>((path) async {
          File(path).writeAsStringSync('123456789\n'
              'This is a\n'
              'text file\n');
          //core.chmod(0x933, path);  // 0x933 == 04463
          await cli.lines('chmod 4463 $path').toList();
          await cli.lines('ln $path $temp/test_file_2.txt').toList();
          await cli.lines('ln $path $temp/test_file_3.txt').toList();

          final actual = lstat(path);
          final expected = await _getExpected(path);
          _checkAgrees(actual, expected);
          _checkType(actual, isFile: true);
          expect(actual.size, 30,
              reason: 'size: should be 30 (or 33 on windows??)');
          expect(actual.mode.toString(), '-r-Srw--wx',
              reason: 'mode: should be odd!');
          expect(actual.nlink, 3, reason: 'nlink: should be 3');
        });
      });
    });

    test('directory', () async {
      await withTempDir((temp) async {
        final actual = lstat(temp);
        final expected = await _getExpected(temp);
        _checkAgrees(actual, expected);
        _checkType(actual, isDirectory: true);
      });
    });

    test('link - lstat', () async {
      await withTempDir((temp) async {
        await tf.withTempFile((file) async {
          File(file).writeAsStringSync('Not a lot\n'
              'going on \n'
              'with this\n');
          //core.chmod(0x933, file);  // 0x933 == 04463
          await cli.lines('chmod 4463 $file').toList();
          final link = join(temp, 'test_link');
          symlink(file, link);

          final actual = lstat(link);
          final expected = await _getExpected(link);
          _checkAgrees(actual, expected);
          _checkType(actual, isLink: true);
          expect(actual.size, file.length,
              reason: 'size: should be ${file.length}');
        });
      });
    });

    test('link - stat', () async {
      await withTempDir((temp) async {
        await tf.withTempFile((file) async {
          File(file).writeAsStringSync('Not a lot\n'
              'going on \n'
              'with this\n');
          //core.chmod(0x933, file);  // 0x933 == 04463
          await cli.lines('chmod 4463 $file').toList();
          final link = join(temp, 'test_link');
          symlink(file, link);

          final actual = stat(link);
          final expected = await _getExpected(file);
          _checkAgrees(actual, expected);
          _checkType(actual, isFile: true);
          expect(actual.size, 30, reason: 'size: should be 30');
        });
      });
    });

    test('named pipe', () async {
      await withTempDir((temp) async {
        final path = join(temp, 'test_fifo');
        await cli.lines('mkfifo $path').toList();

        final actual = stat(path);
        final expected = await _getExpected(path);
        _checkAgrees(actual, expected);
        _checkType(actual, isNamedPipe: true);
      });
    });

    test('character device (/dev/tty)', () async {
      const path = '/dev/tty';

      final actual = lstat(path);
      final expected = await _getExpected(path);
      _checkAgrees(actual, expected);
      _checkType(actual, isCharacterDevice: true);
      expect(actual.uid, 0, reason: 'uid: should be owned by root(?)');
      expect(actual.size, 0, reason: 'size: should be 0');
    });

    test('memory corruption ...', () async {
      await withTempDir((temp) async {
        final testFile = join(temp, 'test.txt');
        touch(testFile, create: true);
        //core.chmod(0x1B4, testFile); // 0x1B4 = 0664
        await cli.lines('chmod 664 $testFile').toList();
        for (var i = 0; i < 1000; i++) {
          final struct = stat(testFile);

          expect(struct.mode, isNotNull);

          expect(struct.mode.isOwnerReadable, isTrue);
          expect(struct.mode.isOwnerWritable, isTrue);
          expect(struct.mode.isOwnerExecutable, isFalse);

          expect(struct.mode.isGroupReadable, isTrue);
          expect(struct.mode.isGroupWritable, isTrue);
          expect(struct.mode.isGroupExecutable, isFalse);

          expect(struct.mode.isOtherReadable, isTrue);
          expect(struct.mode.isOtherWritable, isFalse);
          expect(struct.mode.isOtherExecutable, isFalse);
        }
      });
    });
  });
}

void _checkAgrees(Stat actual, Stat expected) {
  expect(actual.deviceId, expected.deviceId, reason: 'deviceId');
  expect(actual.inode, expected.inode, reason: 'inode');
  expect(actual.mode, expected.mode, reason: 'mode');
  expect(actual.nlink, expected.nlink, reason: 'nlink');
  expect(actual.uid, expected.uid, reason: 'uid');
  expect(actual.gid, expected.gid, reason: 'gid');
  expect(actual.rdev, expected.rdev, reason: 'rdev');
  expect(actual.size, expected.size, reason: 'size');
  expect(actual.blocks, expected.blocks, reason: 'blocks');

  // check dates
  // The simple `mystat` script returns times rounded down
  // to the nearest second, so we can't check anything more precise.
  //
  DateTime rounded(DateTime real) => DateTime(
      real.year, real.month, real.day, real.hour, real.minute, real.second);

  expect(rounded(actual.lastAccess), expected.lastAccess, reason: 'lastAccess');
  expect(rounded(actual.lastModified), expected.lastModified,
      reason: 'lastModified');
  expect(rounded(actual.lastStatusChange), expected.lastStatusChange,
      reason: 'lastStatusChange');
}

void _checkType(
  Stat actual, {
  bool isFile = false,
  bool isDirectory = false,
  bool isCharacterDevice = false,
  bool isBlockDevice = false,
  bool isNamedPipe = false,
  bool isLink = false,
  bool isSocket = false,
}) {
  expect(actual.mode.isFile, isFile, reason: 'isFile');
  expect(actual.mode.isDirectory, isDirectory, reason: 'isDirectory');
  expect(actual.mode.isCharacterDevice, isCharacterDevice,
      reason: 'isCharacterDevice');
  expect(actual.mode.isBlockDevice, isBlockDevice, reason: 'isBlockDevice');
  expect(actual.mode.isNamedPipe, isNamedPipe, reason: 'isNamedPipe');
  expect(actual.mode.isLink, isLink, reason: 'isLink');
  expect(actual.mode.isSocket, isSocket, reason: 'isSocket');
}

Future<Stat> _getExpected(String path) async {
  final json = (await _runScript('mystat', '"$path"')).join('\n');
  final map = jsonDecode(json) as Map;

  DateTime fromSeconds(int seconds) =>
      DateTime.fromMillisecondsSinceEpoch(seconds * 1000);

  return Stat(
    deviceId: map['deviceId'] as int,
    inode: map['inode'] as int,
    mode: Mode.fromString(map['mode'] as String),
    nlink: map['nlink'] as int,
    uid: map['uid'] as int,
    gid: map['gid'] as int,
    rdev: map['rdev'] as int,
    size: map['size'] as int,
    blockSize: map['blockSize'] as int,
    blocks: map['blocks'] as int,
    lastAccess: fromSeconds(map['lastAccess'] as int),
    lastModified: fromSeconds(map['lastModified'] as int),
    lastStatusChange: fromSeconds(map['lastStatusChange'] as int),
  );
}

Future<List<String>> _runScript(String name, String args) async =>
    cli.lines('test/scripts/$name $args').toList();
