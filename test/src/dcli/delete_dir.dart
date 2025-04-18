/* Copyright (C) S. Brett Sutton - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential
 * Written by Brett Sutton <bsutton@onepub.dev>, Jan 2022
 */

import 'dart:io';

import 'is.dart';
import 'utility.dart';

///
/// Deletes the directory located at [path].
///
/// If [recursive] is true (default true) then the directory and all child files
/// and directories will be deleted.
///
/// ```dart
/// deleteDir("/tmp/testing", recursive=true);
/// ```
///
/// If [path] is not a directory then a [DeleteDirException] is thrown.
///
/// If the directory does not exists a [DeleteDirException] is thrown.
///
/// If the directory cannot be delete (e.g. permissions) a
/// [DeleteDirException] is thrown.
///
/// If recursive is false the directory must be empty otherwise a
/// [DeleteDirException] is thrown.
///
/// See [isDirectory]
///     [exists]
///
Future<void> deleteDir(String path, {bool recursive = true}) async =>
    _DeleteDir().deleteDir(path, recursive: recursive);

class _DeleteDir extends DCliFunction {
  Future<void> deleteDir(String path, {required bool recursive}) async {
    if (!exists(path)) {
      throw DeleteDirException('The path ${truepath(path)} does not exist.');
    }

    if (!isDirectory(path)) {
      throw DeleteDirException(
        'The path ${truepath(path)} is not a directory.',
      );
    }

    try {
      await Directory(path).delete(recursive: recursive);
    }
    // ignore: avoid_catches_without_on_clauses
    catch (e) {
      throw DeleteDirException(
        'Unable to delete the directory ${truepath(path)}. Error: $e',
      );
    }
  }
}

/// Throw when [deleteDir] function encounters an error
class DeleteDirException extends DCliFunctionException {
  /// Throw when [deleteDir] function encounters an error
  // ignore: matching_super_parameters
  DeleteDirException(super.reason);
}
