// ignore: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names, constant_identifier_names, camel_case_types

part of 'unistd.dart';

void chown(
  String filename,
  int owner,
  int group,
) {
  final cFilename = filename.toNativeUtf8();

  clearErrno();

  _chown ??= Libc().dylib.lookupFunction<
      ffi.Int32 Function(ffi.Pointer<Utf8>, ffi.Uint32, ffi.Uint32),
      _dart_chown>('chown');
  final results = _chown!(
    cFilename,
    owner,
    group,
  );
  malloc.free(cFilename);

  if (results != 0) {
    final error = errno();
    throw PosixException('chown failed error: ${strerror(error)}', error);
  }
}

_dart_chown? _chown;

void chmodWithMode(String filename, int mode) {
  String modeToOctalString(int mode) {
    final permissions = mode & 0xFFF;
    final result = [
      (permissions >> 6) & 0x7,
      (permissions >> 3) & 0x7,
      permissions & 0x7
    ];
    return result.join();
  }

  chmod(filename, modeToOctalString(mode));
}

/// Change the permission of [filename].
///
/// Pass in the [permissions] as an octal string e.g. 777
/// to change the file permissions.
///
/// If the call fails a [PosixException] is thrown with the value of
/// errno.
void chmod(
  String filename,
  String permissions,
) {
  final _permissions = int.parse(permissions, radix: 8);
  final cFilename = filename.toNativeUtf8();

  clearErrno();

  _chmod ??= Libc().dylib.lookupFunction<
      ffi.Int32 Function(ffi.Pointer<Utf8>, ffi.Uint32), _dart_chmod>('chmod');
  final results = _chmod!(
    cFilename,
    _permissions,
  );
  malloc.free(cFilename);

  if (results != 0) {
    final error = errno();
    throw PosixException('chown failed error: ${strerror(error)}', error);
  }
}

_dart_chmod? _chmod;

/// Change the owner and group of the file that FD is open on.
int fchown(
  int fd,
  int owner,
  int group,
) {
  _fchown ??= Libc().dylib.lookupFunction<
      ffi.Int32 Function(ffi.Int32, ffi.Uint32, ffi.Uint32),
      _dart_fchown>('fchown');
  return _fchown!(
    fd,
    owner,
    group,
  );
}

_dart_fchown? _fchown;

/// Change owner and group of FILE, if it is a symbolic
/// link the ownership of the symbolic link is changed.
int lchown(
  String filename, // ffi.Pointer<Utf8> file,
  int owner,
  int group,
) {
  final cFilename = filename.toNativeUtf8();

  _lchown ??= Libc().dylib.lookupFunction<
      ffi.Int32 Function(ffi.Pointer<Utf8>, ffi.Uint32, ffi.Uint32),
      _dart_lchown>('lchown');
  final result = _lchown!(
    cFilename,
    owner,
    group,
  );

  malloc.free(cFilename);
  return result;
}

_dart_lchown? _lchown;

/// Change the owner and group of FILE relative to the directory FD is open
/// on.
int fchownat(
  int fd,
  String filename, // ffi.Pointer<Utf8> file,
  int owner,
  int group,
  int flag,
) {
  _fchownat ??= Libc().dylib.lookupFunction<
      ffi.Int32 Function(
          ffi.Int32, ffi.Pointer<Utf8>, ffi.Uint32, ffi.Uint32, ffi.Int32),
      _dart_fchownat>('fchownat');

  final cFilename = filename.toNativeUtf8();
  final result = _fchownat!(
    fd,
    cFilename,
    owner,
    group,
    flag,
  );

  malloc.free(cFilename);
  return result;
}

_dart_fchownat? _fchownat;

/// Change the process's working directory to PATH.
int chdir(String path // ffi.Pointer<Utf8> __path,
    ) {
  final cPath = path.toNativeUtf8();
  _chdir ??= Libc()
      .dylib
      .lookupFunction<ffi.Int32 Function(ffi.Pointer<Utf8>), _dart_chdir>(
          'chdir');
  final result = _chdir!(
    cPath,
  );

  malloc.free(cPath);
  return result;
}

_dart_chdir? _chdir;

/// Change the process's working directory to the one FD is open on.
int fchdir(
  int fd,
) {
  _fchdir ??= Libc()
      .dylib
      .lookupFunction<ffi.Int32 Function(ffi.Int32), _dart_fchdir>('fchdir');
  return _fchdir!(
    fd,
  );
}

_dart_fchdir? _fchdir;

/// Get the pathname of the current working directory,
/// and put it in SIZE bytes of BUF.  Returns NULL if the
/// directory couldn't be determined or SIZE was too small.
/// If successful, returns BUF.  In GNU, if BUF is NULL,
/// an array is allocated with `malloc'; the array is SIZE
/// bytes long, unless SIZE == 0, in which case it is as
/// big as necessary.
ffi.Pointer<ffi.Int8> native_getcwd(
  ffi.Pointer<ffi.Int8> buf,
  int size,
) {
  _getcwd ??= Libc().dylib.lookupFunction<
      ffi.Pointer<ffi.Int8> Function(ffi.Pointer<ffi.Int8>, ffi.Uint64),
      _dart_getcwd>('getcwd');
  return _getcwd!(
    buf,
    size,
  );
}

_dart_getcwd? _getcwd;

/// Put the absolute pathname of the current working directory in BUF.
/// If successful, return BUF.  If not, put an error message in
/// BUF and return NULL.  BUF should be at least PATH_MAX bytes long.
ffi.Pointer<ffi.Int8> native_getwd(ffi.Pointer<ffi.Int8> buf) {
  _getwd ??= Libc().dylib.lookupFunction<
      ffi.Pointer<ffi.Int8> Function(ffi.Pointer<ffi.Int8>),
      _dart_getwd>('getwd');
  return _getwd!(
    buf,
  );
}

_dart_getwd? _getwd;

/// Duplicate FD, returning a new file descriptor on the same file.
int dup(
  int fd,
) {
  _dup ??= Libc()
      .dylib
      .lookupFunction<ffi.Int32 Function(ffi.Int32), _dart_dup>('dup');
  return _dup!(
    fd,
  );
}

_dart_dup? _dup;

/// Duplicate FD to FD2, closing FD2 and making it open on the same file.
int dup2(
  int fd,
  int fd2,
) {
  _dup2 ??= Libc()
      .dylib
      .lookupFunction<ffi.Int32 Function(ffi.Int32, ffi.Int32), _dart_dup2>(
          'dup2');
  return _dup2!(
    fd,
    fd2,
  );
}

_dart_dup2? _dup2;

/// Replace the current process, executing PATH with arguments ARGV and
/// environment ENVP.  ARGV and ENVP are terminated by NULL pointers.
int native_execve(
  String path, // ffi.Pointer<Utf8> __path,
  ffi.Pointer<ffi.Pointer<Utf8>> __argv,
  ffi.Pointer<ffi.Pointer<Utf8>> __envp,
) {
  final cPath = path.toNativeUtf8();

  _execve ??= Libc().dylib.lookupFunction<
      ffi.Int32 Function(ffi.Pointer<Utf8>, ffi.Pointer<ffi.Pointer<Utf8>>,
          ffi.Pointer<ffi.Pointer<Utf8>>),
      _dart_execve>('execve');
  final result = _execve!(
    cPath,
    __argv,
    __envp,
  );

  malloc.free(cPath);

  return result;
}

_dart_execve? _execve;

/// Execute the file FD refers to, overlaying the running program image.
/// ARGV and ENVP are passed to the new program, as for `execve'.
int native_fexecve(
  int fd,
  ffi.Pointer<ffi.Pointer<Utf8>> __argv,
  ffi.Pointer<ffi.Pointer<Utf8>> __envp,
) {
  _fexecve ??= Libc().dylib.lookupFunction<
      ffi.Int32 Function(ffi.Int32, ffi.Pointer<ffi.Pointer<Utf8>>,
          ffi.Pointer<ffi.Pointer<Utf8>>),
      _dart_fexecve>('fexecve');
  return _fexecve!(
    fd,
    __argv,
    __envp,
  );
}

_dart_fexecve? _fexecve;

/// Execute PATH with arguments ARGV and environment from `environ'.
int native_execv(
  String path, // ffi.Pointer<Utf8> __path,
  ffi.Pointer<ffi.Pointer<Utf8>> __argv,
) {
  final cPath = path.toNativeUtf8();

  _execv ??= Libc().dylib.lookupFunction<
      ffi.Int32 Function(ffi.Pointer<Utf8>, ffi.Pointer<ffi.Pointer<Utf8>>),
      _dart_execv>('execv');
  final result = _execv!(
    cPath,
    __argv,
  );

  malloc.free(cPath);

  return result;
}

_dart_execv? _execv;

/// Execute PATH with all arguments after PATH until a NULL pointer,
/// and the argument after that for environment.
int execle(
  String path, // ffi.Pointer<Utf8> __path,
  String arg, // ffi.Pointer<Utf8> __arg,
) {
  final cPath = path.toNativeUtf8();

  final cArg = arg.toNativeUtf8();

  _execle ??= Libc().dylib.lookupFunction<
      ffi.Int32 Function(ffi.Pointer<Utf8>, ffi.Pointer<Utf8>),
      _dart_execle>('execle');
  final result = _execle!(
    cPath,
    cArg,
  );

  malloc
    ..free(cPath)
    ..free(cArg);

  return result;
}

_dart_execle? _execle;

/// Execute PATH with all arguments after PATH until
/// a NULL pointer and environment from `environ'.
int execl(
  String path, // ffi.Pointer<Utf8> __path,
  String arg, // ffi.Pointer<Utf8> __arg,
) {
  final cPath = path.toNativeUtf8();

  final cArg = arg.toNativeUtf8();

  _execl ??= Libc().dylib.lookupFunction<
      ffi.Int32 Function(ffi.Pointer<Utf8>, ffi.Pointer<Utf8>),
      _dart_execl>('execl');
  final result = _execl!(
    cPath,
    cArg,
  );

  malloc
    ..free(cPath)
    ..free(cArg);

  return result;
}

_dart_execl? _execl;

/// Execute FILE, searching in the `PATH' environment variable if it contains
/// no slashes, with arguments ARGV and environment from `environ'.
int native_execvp(
  String file, // ffi.Pointer<Utf8> file,
  ffi.Pointer<ffi.Pointer<Utf8>> __argv,
) {
  final cFile = file.toNativeUtf8();

  _execvp ??= Libc().dylib.lookupFunction<
      ffi.Int32 Function(ffi.Pointer<Utf8>, ffi.Pointer<ffi.Pointer<Utf8>>),
      _dart_execvp>('execvp');
  final result = _execvp!(
    cFile,
    __argv,
  );

  malloc.free(cFile);

  return result;
}

_dart_execvp? _execvp;

/// Execute FILE, searching in the `PATH' environment variable if
/// it contains no slashes, with all arguments after FILE until a
/// NULL pointer and environment from `environ'.
int execlp(
  String file, // ffi.Pointer<Utf8> file,
  String arg, // ffi.Pointer<Utf8> __arg,
) {
  final cFile = file.toNativeUtf8();

  final cArg = arg.toNativeUtf8();

  _execlp ??= Libc().dylib.lookupFunction<
      ffi.Int32 Function(ffi.Pointer<Utf8>, ffi.Pointer<Utf8>),
      _dart_execlp>('execlp');
  final result = _execlp!(
    cFile,
    cArg,
  );
  malloc
    ..free(cFile)
    ..free(cArg);

  return result;
}

_dart_execlp? _execlp;

/// Add [increment]] to priority of the current process
/// and returns the new process priority.
int nice(
  int increment,
) {
  _nice ??= Libc()
      .dylib
      .lookupFunction<ffi.Int32 Function(ffi.Int32), _dart_nice>('nice');
  return _nice!(
    increment,
  );
}

_dart_nice? _nice;

/// Terminate program execution with the low-order 8 bits of STATUS.
void exit(
  int status,
) {
  __exit ??= Libc()
      .dylib
      .lookupFunction<ffi.Void Function(ffi.Int32), _dart__exit>('_exit');
  return __exit!(
    status,
  );
}

_dart__exit? __exit;

/// Get file-specific configuration information about PATH.
int pathconf(
  String path, // ffi.Pointer<Utf8> __path,
  int name,
) {
  final cPath = path.toNativeUtf8();
  _pathconf ??= Libc().dylib.lookupFunction<
      ffi.Int64 Function(ffi.Pointer<Utf8>, ffi.Int32),
      _dart_pathconf>('pathconf');
  final result = _pathconf!(
    cPath,
    name,
  );

  malloc.free(cPath);
  return result;
}

_dart_pathconf? _pathconf;

/// Get file-specific configuration about descriptor FD.
int fpathconf(
  int fd,
  int name,
) {
  _fpathconf ??= Libc().dylib.lookupFunction<
      ffi.Int64 Function(ffi.Int32, ffi.Int32), _dart_fpathconf>('fpathconf');
  return _fpathconf!(
    fd,
    name,
  );
}

_dart_fpathconf? _fpathconf;

/// Get the value of the system variable NAME.
int sysconf(
  int name,
) {
  _sysconf ??= Libc()
      .dylib
      .lookupFunction<ffi.Int64 Function(ffi.Int32), _dart_sysconf>('sysconf');
  return _sysconf!(
    name,
  );
}

_dart_sysconf? _sysconf;

/// Get the value of the string-valued system variable NAME.
String confstr(
  int name,
) {
  _confstr ??= Libc().dylib.lookupFunction<
      ffi.Uint64 Function(ffi.Int32, ffi.Pointer<ffi.Void>, ffi.Uint64),
      _dart_confstr>('confstr');
  final len = _confstr!(
    name,
    ffi.nullptr,
    0,
  );

  if (len == 0) {
    throw PosixException(strerror(errno()), errno());
  }

  final cBuf = malloc.allocate<ffi.Void>(len);

  final result = _confstr!(
    name,
    cBuf,
    len,
  );

  if (result == 0) {
    throw PosixException(strerror(errno()), errno());
  }

  return copyCBuffToDartString(cBuf);
}

_dart_confstr? _confstr;
