/*
 * Copyright (c) 2025 S. Brett Sutton 2022+
 *
 * This software is licensed under the MIT License.
 * SPDX-License-Identifier: MIT
 */

import 'dart:async';
import 'dart:io';

import 'package:path/path.dart';

import 'is.dart';
import 'verbose.dart';

/// Opens a File and calls [action] passing in the open file.
/// When action completes the file is closed.
/// Use this method in preference to directly callling [FileSync()]
Future<R> withOpenFile<R>(
  String pathToFile,
  R Function(RandomAccessFile) action, {
  FileMode fileMode = FileMode.writeOnlyAppend,
}) async {
  final raf = File(pathToFile).openSync(mode: fileMode);

  R result;
  try {
    result = action(raf);
  } finally {
    await raf.close();
  }
  return result;
}

///
/// Creates a link at [linkPath] which points to an
/// existing file or directory at [existingPath]
///
/// On Windows you need to be in developer mode or running as an Administrator
/// to create a symlink.
///
/// To enable developer mode see:
/// https://dcli.onepub.dev/getting-started/installing-on-windows
///
@Deprecated('Use createSymLink - will be removed in the next release')
Future<void> symlink(
  String existingPath,
  String linkPath,
) async {
  verbose(() => 'symlink existingPath: $existingPath linkPath $linkPath');
  await Link(linkPath).create(existingPath);
}

///
/// Creates a link at [linkPath] which points to an
/// existing file or directory at [targetPath]
///
/// On Windows you need to be in developer mode or running as an Administrator
/// to create a symlink.
///
/// To enable developer mode see:
/// https://dcli.onepub.dev/getting-started/installing-on-windows
///
Future<void> createSymLink({
  required String targetPath,
  required String linkPath,
}) async {
  verbose(() => 'createSymLink existingPath: $targetPath linkPath $linkPath');
  await Link(linkPath).create(targetPath);
}

///
/// Deletes the symlink at [linkPath]
///
/// On Windows you need to be in developer mode or running as an Administrator
/// to delete a symlink.
///
/// To enable developer mode see:
/// https://dcli.onepub.dev/getting-started/installing-on-windows
///
Future<void> deleteSymlink(String linkPath) async {
  verbose(() => 'deleteSymlink linkPath: $linkPath');
  await Link(linkPath).delete();
}

///
/// Resolves the a symbolic link [pathToLink]
/// to the ultimate target path.
///
/// The return path will be canonicalized.
///
/// e.g.
/// ```dart
/// resolveSymLink('/usr/bin/dart) == '/usr/lib/bin/dart'
/// ```
///
/// throws a FileSystemException if the target path does not exist.
Future<String> resolveSymLink(String pathToLink) async {
  final normalised = canonicalize(pathToLink);

  String resolved;
  if (isDirectory(normalised)) {
    resolved = Directory(normalised).resolveSymbolicLinksSync();
  } else {
    resolved = canonicalize(File(normalised).resolveSymbolicLinksSync());
  }

  verbose(() => 'resolveSymLink $pathToLink resolved: $resolved');
  return resolved;
}
