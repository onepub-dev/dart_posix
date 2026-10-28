# POSIX examples

The `posix` package provides access to POSIX functions on Linux and macOS.
These examples use the public Dart API without allocating native memory.

Add the package to your project:

```sh
dart pub add posix
```

Each Dart code block below is a standalone program. Save one as
`bin/example.dart` in your project and run `dart run bin/example.dart`.

## Current user and groups

Use `getuid()` to find the real user ID and `getpwuid()` to look up the
corresponding account. `getgid()` returns the real primary group ID;
`getgroups()` returns the process's supplementary group IDs.

```dart
import 'package:posix/posix.dart' as posix;

void main() {
  if (!posix.isPosixSupported) {
    print('POSIX is not available on this platform.');
    return;
  }

  final user = posix.getpwuid(posix.getuid());
  print('User: ${user.username} (UID ${user.uid})');
  print('Home: ${user.homePathTo}');
  print('Shell: ${user.shellPathTo}');
  print('Effective UID: ${posix.geteuid()}');

  final primaryGroup = posix.getgrgid(posix.getgid());
  print('Primary group: ${primaryGroup.name}');

  for (final gid in posix.getgroups()) {
    final group = posix.getgrgid(gid);
    print('Supplementary group: ${group.name} (GID $gid)');
  }
}
```

To look up a known account or group by name, use `getpwnam(username)` or
`getgrnam(groupName)`. These lookups throw `PosixException` if no matching
entry exists.

## Process and system information

Find the current process ID, working directory, hostname, and kernel details.

```dart
import 'package:posix/posix.dart' as posix;

void main() {
  print('Process ID: ${posix.getpid()}');
  print('Working directory: ${posix.getcwd()}');
  print('Hostname: ${posix.gethostname()}');

  final system = posix.uname();
  print('Operating system: ${system.sysname}');
  print('Kernel release: ${system.release}');
  print('Machine architecture: ${system.machine}');
}
```

## File metadata and permissions

Use `stat()` to inspect a file or directory. This example accepts a path and
defaults to the current directory. For example, run
`dart run bin/example.dart pubspec.yaml`.

```dart
import 'package:posix/posix.dart' as posix;

void main(List<String> args) {
  final path = args.isEmpty ? '.' : args.first;
  final info = posix.stat(path);

  print('Path: $path');
  print('Size: ${info.size} bytes');
  print('Owner UID: ${info.uid}');
  print('Group GID: ${info.gid}');
  print('Mode: ${info.mode}'); // For example: -rw-r--r--
  print('Directory: ${info.mode.isDirectory}');
  print('Owner executable bit: ${info.mode.isOwnerExecutable}');
  print('Last modified: ${info.lastModified}');

  // stat() follows symbolic links; lstat() inspects the link itself.
  final entry = posix.lstat(path);
  print('Symbolic link: ${entry.mode.isLink}');
}
```

Permission bits describe the file's mode; they are not a complete check of
whether the current process can access the file.

## Handling POSIX errors

Catch `PosixException` and inspect its `code` to handle a specific error.
`stat()` throws `StatException`, which extends `PosixException`.

```dart
import 'package:posix/posix.dart' as posix;

void main(List<String> args) {
  if (args.isEmpty) {
    print('Usage: dart run bin/example.dart <path>');
    return;
  }

  final path = args.first;
  try {
    final info = posix.stat(path);
    print('$path: ${info.size} bytes');
  } on posix.PosixException catch (error) {
    if (error.code == posix.ENOENT) {
      print('The path or a component of it does not exist: $path');
    } else if (error.code == posix.EACCES) {
      print('Permission denied: $path');
    } else {
      rethrow;
    }
  }
}
```
