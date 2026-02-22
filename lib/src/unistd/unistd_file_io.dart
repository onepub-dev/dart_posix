// ignore: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names, constant_identifier_names, camel_case_types

part of 'unistd.dart';

int access(
  String name, // ffi.Pointer<Utf8> name,
  int type,
) {
  _access ??= Libc().dylib.lookupFunction<
      ffi.Int32 Function(ffi.Pointer<Utf8>, ffi.Int32), _dart_access>('access');

  final cName = name.toNativeUtf8();
  final result = _access!(
    cName,
    type,
  );

  malloc.free(cName);

  return result;
}

_dart_access? _access;

/// Test for access to FILE relative to the directory FD is open on.
/// If AT_EACCESS is set in FLAG, then use effective IDs like `eaccess',
/// otherwise use real IDs like `access'.
int faccessat(
  int fd,
  String filename, // ffi.Pointer<Utf8> file,
  int type,
  int flag,
) {
  _faccessat ??= Libc().dylib.lookupFunction<
      ffi.Int32 Function(ffi.Int32, ffi.Pointer<Utf8>, ffi.Int32, ffi.Int32),
      _dart_faccessat>('faccessat');

  final cFilename = filename.toNativeUtf8();
  final result = _faccessat!(
    fd,
    cFilename,
    type,
    flag,
  );

  malloc.free(cFilename);

  return result;
}

_dart_faccessat? _faccessat;

int lseek(
  int fd,
  int offset,
  int whence,
) {
  _lseek ??= Libc().dylib.lookupFunction<
      ffi.Int64 Function(ffi.Int32, ffi.Int64, ffi.Int32),
      _dart_lseek>('lseek');
  return _lseek!(
    fd,
    offset,
    whence,
  );
}

_dart_lseek? _lseek;

/// Close the file descriptor FD.
///
/// This function is a cancellation point and therefore not marked with
/// __THROW.
int close(
  int fd,
) {
  _close ??= Libc()
      .dylib
      .lookupFunction<ffi.Int32 Function(ffi.Int32), _dart_close>('close');
  return _close!(
    fd,
  );
}

_dart_close? _close;

/// Read NBYTES  from FD.  Returning the bytes read.
///
/// The returned array will be empty if EOF was reached.
///
/// Throws a [PosixException] if an error occurs.
///
/// This function is a cancellation point and therefore not marked with
/// __THROW.
List<int> read(
  int fd,
  int nbytes,
) {
  final cBuf = malloc.allocate<ffi.Int8>(nbytes);

  _read ??= Libc().dylib.lookupFunction<
      ffi.Int64 Function(ffi.Int32, ffi.Pointer<ffi.Int8>, ffi.Uint64),
      _dart_read>('read');
  final result = _read!(
    fd,
    cBuf,
    nbytes,
  );

  _throwIfErrno('read', result, cBuf);

  final buf = List<int>.from(cBuf.asTypedList(result));
  malloc.free(cBuf);

  return buf;
}

_dart_read? _read;

/// Writes [buf] to FD.  Return the number of bytes written;
///
/// Throws a [PosixException] if an error occurs.
///
int write(
  int fd,
  List<int> buf, // ffi.Pointer<ffi.Void> buf,
) {
  final cBuf = copyDartListToCBuff(buf);

  _write ??= Libc().dylib.lookupFunction<
      ffi.Int64 Function(ffi.Int32, ffi.Pointer<ffi.Int8>, ffi.Uint64),
      _dart_write>('write');
  final written = _write!(
    fd,
    cBuf,
    buf.length,
  );

  _throwIfErrno('pwrite', written, cBuf);

  malloc.free(cBuf);

  return written;
}

_dart_write? _write;

/// Read NBYTES and returns 'nbytes' from FD at the given position
/// OFFSET without
/// changing the file pointer.
///
/// Returns a `List<int>` with the results. The length of the array will be
/// the number of bytes read which may be less than 'nbytes' if we hit the
/// end of the file when reading.
///
/// Throws: [PosixException] if an error occurs reading the data.
List<int> pread(
  int fd,
  int nbytes,
  int offset,
) {
  final cBuf = malloc.allocate<ffi.Int8>(nbytes);
  _pread ??= Libc().dylib.lookupFunction<
      ffi.Int64 Function(
          ffi.Int32, ffi.Pointer<ffi.Int8>, ffi.Uint64, ffi.Int64),
      _dart_pread>('pread');
  final read = _pread!(
    fd,
    cBuf,
    nbytes,
    offset,
  );

  _throwIfErrno('pread', read, cBuf);

  final buf = List<int>.from(cBuf.asTypedList(read));
  malloc.free(cBuf);

  return buf;
}

_dart_pread? _pread;

/// Write N bytes of BUF to FD at the given position OFFSET without
/// changing the file pointer.  Return the number of bytes written
///
/// Throws a [PosixException] if an error occurs.
int pwrite(
  int fd,
  List<int> buf, // ffi.Pointer<ffi.Void> buf,
  int offset,
) {
  final cBuf = copyDartListToCBuff(buf);

  _pwrite ??= Libc().dylib.lookupFunction<
      ffi.Int64 Function(
          ffi.Int32, ffi.Pointer<ffi.Int8>, ffi.Uint64, ffi.Int64),
      _dart_pwrite>('pwrite');
  final written = _pwrite!(
    fd,
    cBuf,
    buf.length,
    offset,
  );

  _throwIfErrno('pwrite', written, cBuf);

  malloc.free(cBuf);

  return written;
}

_dart_pwrite? _pwrite;

/// Create a one-way communication channel (pipe).
/// If successful, two file descriptors are stored in PIPEDES;
/// bytes written on PIPEDES[1] can be read from PIPEDES[0].
/// Returns 0 if successful, -1 if not.
List<int> native_pipe(
  ffi.Pointer<ffi.Int32> __pipedes,
) {
  final cPipedes = malloc.allocate<ffi.Int32>(2);
  _pipe ??= Libc()
      .dylib
      .lookupFunction<ffi.Int32 Function(ffi.Pointer<ffi.Int32>), _dart_pipe>(
          'pipe');
  final result = _pipe!(
    cPipedes,
  );

  _throwIfErrno('pipe', result, cPipedes);

  final pipedes = List<int>.from(cPipedes.asTypedList(2));

  malloc.free(cPipedes);

  return pipedes;
}

_dart_pipe? _pipe;

/// Schedule an alarm.  In SECONDS seconds, the process will get a SIGALRM.
/// If SECONDS is zero, any currently scheduled alarm will be cancelled.
/// The function returns the number of seconds remaining until the last
/// alarm scheduled would have signaled, or zero if there wasn't one.
/// There is no return value to indicate an error, but you can set `errno'
/// to 0 and check its value after calling `alarm', and this might tell you.
/// The signal may come late due to processor scheduling.
int alarm(
  int seconds,
) {
  clearErrno();
  _alarm ??= Libc()
      .dylib
      .lookupFunction<ffi.Uint32 Function(ffi.Uint32), _dart_alarm>('alarm');
  return _alarm!(
    seconds,
  );
}

_dart_alarm? _alarm;

/// Make the process sleep for SECONDS seconds, or until a signal arrives
/// and is not ignored.  The function returns the number of seconds less
/// than SECONDS which it actually slept (thus zero if it slept the full time).
/// If a signal handler does a `longjmp' or modifies the handling of the
/// SIGALRM signal while inside `sleep' call, the handling of the SIGALRM
/// signal afterwards is undefined.  There is no return value to indicate
/// error, but if `sleep' returns SECONDS, it probably didn't work.
///
/// This function is a cancellation point and therefore not marked with
/// __THROW.
int sleep(
  int seconds,
) {
  _sleep ??= Libc()
      .dylib
      .lookupFunction<ffi.Uint32 Function(ffi.Uint32), _dart_sleep>('sleep');
  return _sleep!(
    seconds,
  );
}

_dart_sleep? _sleep;

/// Set an alarm to go off (generating a SIGALRM signal) in VALUE
/// microseconds.  If INTERVAL is nonzero, when the alarm goes off, the
/// timer is reset to go off every INTERVAL microseconds thereafter.
/// Returns the number of microseconds remaining before the alarm.
int ualarm(
  int value,
  int interval,
) {
  _ualarm ??= Libc().dylib.lookupFunction<
      ffi.Uint32 Function(ffi.Uint32, ffi.Uint32), _dart_ualarm>('ualarm');
  return _ualarm!(
    value,
    interval,
  );
}

_dart_ualarm? _ualarm;

/// Sleep USECONDS microseconds, or until a signal arrives that is not blocked
/// or ignored.
///
/// This function is a cancellation point and therefore not marked with
/// __THROW.
int usleep(
  int useconds,
) {
  _usleep ??= Libc()
      .dylib
      .lookupFunction<ffi.Int32 Function(ffi.Uint32), _dart_usleep>('usleep');
  return _usleep!(
    useconds,
  );
}

_dart_usleep? _usleep;

/// Suspend the process until a signal arrives.
/// This always returns -1 and sets `errno' to EINTR.
///
/// This function is a cancellation point and therefore not marked with
/// __THROW.
int pause() {
  _pause ??=
      Libc().dylib.lookupFunction<ffi.Int32 Function(), _dart_pause>('pause');
  return _pause!();
}

_dart_pause? _pause;

/// Change the owner and group of FILE.
///
/// If the owner or group is specified as -1, then that ID is not
/// changed.
///
/// If the call fails a [PosixException] is thrown with the value of
