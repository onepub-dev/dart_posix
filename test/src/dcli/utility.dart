import 'dart:io';

import 'package:path/path.dart';
import 'package:stack_trace/stack_trace.dart';
import 'package:uuid/uuid.dart';

import 'delete_dir.dart';
import 'is.dart';

/// Creates a temp directory and then calls [action].
/// Once action completes the temporary directory will be deleted.
///
/// The actions return value [R] is returned from the [withTempDir]
/// function.
///
/// If you pass [keep] = true then the temp directory won't be deleted.
/// This can be useful when testing and you need to examine the temp directory.
///
/// You can optionally pass in your own tempDir via [pathToTempDir].
/// This can be useful when sometimes you need to control the tempDir
/// and sometimes you want it created.
/// If you pass in [pathToTempDir] it will NOT be deleted regardless
/// of the value of [keep].
Future<R> withTempDir<R>(Future<R> Function(String tempDir) action,
    {bool keep = false, String? pathToTempDir}) async {
  final dir = pathToTempDir ?? await createTempDir();

  R result;
  try {
    result = await action(dir);
  } finally {
    if (!keep && pathToTempDir == null) {
      await deleteDir(dir);
    }
  }
  return result;
}

/// Creates a temporary directory under the system temp folder.
///
/// The temporary directory name is formed from a uuid.
/// It is your responsiblity to delete the directory once you have
/// finsihed with it.
Future<String> createTempDir() async => _CreateDir().createDir(
      join(Directory.systemTemp.path, '.dclitmp', const Uuid().v4()),
      recursive: true,
    );

class _CreateDir {
  Future<String> createDir(String path, {required bool recursive}) async {
    try {
      if (exists(path)) {
        throw CreateDirException('The path ${truepath(path)} already exists');
      }

      await Directory(path).create(recursive: recursive);
    }
    // ignore: avoid_catches_without_on_clauses
    catch (e) {
      throw CreateDirException(
        'Unable to create the directory ${truepath(path)}. Error: $e',
      );
    }
    return path;
  }
}

String truepath(
  String part1, [
  String? part2,
  String? part3,
  String? part4,
  String? part5,
  String? part6,
  String? part7,
]) =>
    normalize(absolute(join(part1, part2, part3, part4, part5, part6, part7)));

/// Thrown when the function [createDir] encounters an error
class CreateDirException extends DCliFunctionException {
  /// Thrown when the function [createDir] encounters an error
  CreateDirException(super.reason);
}

/// Base class for the classes that implement
/// the public DCli functions.
class DCliFunction {}

/// Base class for all dcli function exceptions.
class DCliFunctionException extends DCliException {
  /// Base class for all dcli function exceptions.
  DCliFunctionException(super.message, [super.stackTrace]);
}

/// Base class for all DCli exceptions.
class DCliException implements Exception {
  ///
  DCliException(this.message, [Trace? stackTrace])
      : cause = null,
        stackTrace = stackTrace ?? Trace.current(2);

  ///
  DCliException.from(this.cause, this.stackTrace) : message = cause.toString();

  ///
  DCliException.fromException(this.cause)
      : message = cause.toString(),
        stackTrace = Trace.current(2);

  ///
  final String message;

  /// If DCliException is wrapping another exception then this is the
  /// exeception that is wrapped.
  final Object? cause;

  ///
  Trace stackTrace;

  //  {
  //   return DCliException(this.message, stackTrace);
  // }

  @override
  String toString() => message;

  ///
  void printStackTrace() {
    print(stackTrace.terse);
  }
}
