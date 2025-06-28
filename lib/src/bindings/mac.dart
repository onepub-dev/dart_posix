/*
 * Copyright (c) 2025 S. Brett Sutton 2022+
 *
 * This software is licensed under the MIT License.
 * SPDX-License-Identifier: MIT
 */

// ignore_for_file: non_constant_identifier_names, constant_identifier_names
// ignore_for_file: unused_element, unused_field

library ;

import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart';

part 'mac_part2.dart';
part 'typedef.dart';
part 'constants.dart';
part 'classes.dart';
part 'opaque.dart';
part 'opaque_thread.dart';
part 'accessx.dart';

/// Mac bindings to all posix apis
class mac_posix {
  /// The symbols are looked up in [dynamicLibrary].
  mac_posix(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  mac_posix.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  int getattrlistbulk(
    int arg0,
    ffi.Pointer<ffi.Void> arg1,
    ffi.Pointer<ffi.Void> arg2,
    int arg3,
    int arg4,
  ) =>
      _getattrlistbulk(
        arg0,
        arg1,
        arg2,
        arg3,
        arg4,
      );

  late final _getattrlistbulk_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Int32,
              ffi.Pointer<ffi.Void>,
              ffi.Pointer<ffi.Void>,
              ffi.Uint64,
              ffi.Uint64)>>('getattrlistbulk');
  late final _dart_getattrlistbulk _getattrlistbulk =
      _getattrlistbulk_ptr.asFunction<_dart_getattrlistbulk>();

  int getattrlistat(
    int arg0,
    ffi.Pointer<ffi.Int8> arg1,
    ffi.Pointer<ffi.Void> arg2,
    ffi.Pointer<ffi.Void> arg3,
    int arg4,
    int arg5,
  ) =>
      _getattrlistat(
        arg0,
        arg1,
        arg2,
        arg3,
        arg4,
        arg5,
      );

  late final _getattrlistat_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Int32,
              ffi.Pointer<ffi.Int8>,
              ffi.Pointer<ffi.Void>,
              ffi.Pointer<ffi.Void>,
              ffi.Uint64,
              ffi.Uint64)>>('getattrlistat');
  late final _dart_getattrlistat _getattrlistat =
      _getattrlistat_ptr.asFunction<_dart_getattrlistat>();

  int setattrlistat(
    int arg0,
    ffi.Pointer<ffi.Int8> arg1,
    ffi.Pointer<ffi.Void> arg2,
    ffi.Pointer<ffi.Void> arg3,
    int arg4,
    int arg5,
  ) =>
      _setattrlistat(
        arg0,
        arg1,
        arg2,
        arg3,
        arg4,
        arg5,
      );

  late final _setattrlistat_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Int32,
              ffi.Pointer<ffi.Int8>,
              ffi.Pointer<ffi.Void>,
              ffi.Pointer<ffi.Void>,
              ffi.Uint64,
              ffi.Uint32)>>('setattrlistat');
  late final _dart_setattrlistat _setattrlistat =
      _setattrlistat_ptr.asFunction<_dart_setattrlistat>();

  int faccessat(
    int arg0,
    ffi.Pointer<ffi.Int8> arg1,
    int arg2,
    int arg3,
  ) =>
      _faccessat(
        arg0,
        arg1,
        arg2,
        arg3,
      );

  late final _faccessat_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Int32, ffi.Pointer<ffi.Int8>, ffi.Int32,
              ffi.Int32)>>('faccessat');
  late final _dart_faccessat _faccessat =
      _faccessat_ptr.asFunction<_dart_faccessat>();

  int fchownat(
    int arg0,
    ffi.Pointer<ffi.Int8> arg1,
    int arg2,
    int arg3,
    int arg4,
  ) =>
      _fchownat(
        arg0,
        arg1,
        arg2,
        arg3,
        arg4,
      );

  late final _fchownat_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Int32, ffi.Pointer<ffi.Int8>, ffi.Uint32,
              ffi.Uint32, ffi.Int32)>>('fchownat');
  late final _dart_fchownat _fchownat =
      _fchownat_ptr.asFunction<_dart_fchownat>();

  int linkat(
    int arg0,
    ffi.Pointer<ffi.Int8> arg1,
    int arg2,
    ffi.Pointer<ffi.Int8> arg3,
    int arg4,
  ) =>
      _linkat(
        arg0,
        arg1,
        arg2,
        arg3,
        arg4,
      );

  late final _linkat_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Int32, ffi.Pointer<ffi.Int8>, ffi.Int32,
              ffi.Pointer<ffi.Int8>, ffi.Int32)>>('linkat');
  late final _dart_linkat _linkat = _linkat_ptr.asFunction<_dart_linkat>();

  int readlinkat(
    int arg0,
    ffi.Pointer<ffi.Int8> arg1,
    ffi.Pointer<ffi.Int8> arg2,
    int arg3,
  ) =>
      _readlinkat(
        arg0,
        arg1,
        arg2,
        arg3,
      );

  late final _readlinkat_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int64 Function(ffi.Int32, ffi.Pointer<ffi.Int8>,
              ffi.Pointer<ffi.Int8>, ffi.Uint64)>>('readlinkat');
  late final _dart_readlinkat _readlinkat =
      _readlinkat_ptr.asFunction<_dart_readlinkat>();

  int symlinkat(
    ffi.Pointer<ffi.Int8> arg0,
    int arg1,
    ffi.Pointer<ffi.Int8> arg2,
  ) =>
      _symlinkat(
        arg0,
        arg1,
        arg2,
      );

  late final _symlinkat_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Int32,
              ffi.Pointer<ffi.Int8>)>>('symlinkat');
  late final _dart_symlinkat _symlinkat =
      _symlinkat_ptr.asFunction<_dart_symlinkat>();

  int unlinkat(
    int arg0,
    ffi.Pointer<ffi.Int8> arg1,
    int arg2,
  ) =>
      _unlinkat(
        arg0,
        arg1,
        arg2,
      );

  late final _unlinkat_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Int32, ffi.Pointer<ffi.Int8>, ffi.Int32)>>('unlinkat');
  late final _dart_unlinkat _unlinkat =
      _unlinkat_ptr.asFunction<_dart_unlinkat>();

  /// POSIX.1-1990
  void _exit(
    int arg0,
  ) =>
      __exit(
        arg0,
      );

  late final __exit_ptr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int32)>>('_exit');
  late final _dart__exit __exit = __exit_ptr.asFunction<_dart__exit>();

  int access(
    ffi.Pointer<ffi.Int8> arg0,
    int arg1,
  ) =>
      _access(
        arg0,
        arg1,
      );

  late final _access_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Int32)>>('access');
  late final _dart_access _access = _access_ptr.asFunction<_dart_access>();

  int alarm(
    int arg0,
  ) =>
      _alarm(
        arg0,
      );

  late final _alarm_ptr =
      _lookup<ffi.NativeFunction<ffi.Uint32 Function(ffi.Uint32)>>('alarm');
  late final _dart_alarm _alarm = _alarm_ptr.asFunction<_dart_alarm>();

  int chdir(
    ffi.Pointer<ffi.Int8> arg0,
  ) =>
      _chdir(
        arg0,
      );

  late final _chdir_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Pointer<ffi.Int8>)>>(
          'chdir');
  late final _dart_chdir _chdir = _chdir_ptr.asFunction<_dart_chdir>();

  int chown(
    ffi.Pointer<ffi.Int8> arg0,
    int arg1,
    int arg2,
  ) =>
      _chown(
        arg0,
        arg1,
        arg2,
      );

  late final _chown_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Int8>, ffi.Uint32, ffi.Uint32)>>('chown');
  late final _dart_chown _chown = _chown_ptr.asFunction<_dart_chown>();

  int close(
    int arg0,
  ) =>
      _close(
        arg0,
      );

  late final _close_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Int32)>>('close');
  late final _dart_close _close = _close_ptr.asFunction<_dart_close>();

  int dup(
    int arg0,
  ) =>
      _dup(
        arg0,
      );

  late final _dup_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Int32)>>('dup');
  late final _dart_dup _dup = _dup_ptr.asFunction<_dart_dup>();

  int dup2(
    int arg0,
    int arg1,
  ) =>
      _dup2(
        arg0,
        arg1,
      );

  late final _dup2_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Int32, ffi.Int32)>>(
          'dup2');
  late final _dart_dup2 _dup2 = _dup2_ptr.asFunction<_dart_dup2>();

  int execl(
    ffi.Pointer<ffi.Int8> __path,
    ffi.Pointer<ffi.Int8> __arg0,
  ) =>
      _execl(
        __path,
        __arg0,
      );

  late final _execl_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>)>>('execl');
  late final _dart_execl _execl = _execl_ptr.asFunction<_dart_execl>();

  int execle(
    ffi.Pointer<ffi.Int8> __path,
    ffi.Pointer<ffi.Int8> __arg0,
  ) =>
      _execle(
        __path,
        __arg0,
      );

  late final _execle_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>)>>('execle');
  late final _dart_execle _execle = _execle_ptr.asFunction<_dart_execle>();

  int execlp(
    ffi.Pointer<ffi.Int8> __file,
    ffi.Pointer<ffi.Int8> __arg0,
  ) =>
      _execlp(
        __file,
        __arg0,
      );

  late final _execlp_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>)>>('execlp');
  late final _dart_execlp _execlp = _execlp_ptr.asFunction<_dart_execlp>();

  int execv(
    ffi.Pointer<ffi.Int8> __path,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> __argv,
  ) =>
      _execv(
        __path,
        __argv,
      );

  late final _execv_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int8>,
              ffi.Pointer<ffi.Pointer<ffi.Int8>>)>>('execv');
  late final _dart_execv _execv = _execv_ptr.asFunction<_dart_execv>();

  int execve(
    ffi.Pointer<ffi.Int8> __file,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> __argv,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> __envp,
  ) =>
      _execve(
        __file,
        __argv,
        __envp,
      );

  late final _execve_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Int8>,
              ffi.Pointer<ffi.Pointer<ffi.Int8>>,
              ffi.Pointer<ffi.Pointer<ffi.Int8>>)>>('execve');
  late final _dart_execve _execve = _execve_ptr.asFunction<_dart_execve>();

  int execvp(
    ffi.Pointer<ffi.Int8> __file,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> __argv,
  ) =>
      _execvp(
        __file,
        __argv,
      );

  late final _execvp_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int8>,
              ffi.Pointer<ffi.Pointer<ffi.Int8>>)>>('execvp');
  late final _dart_execvp _execvp = _execvp_ptr.asFunction<_dart_execvp>();

  int fork() => _fork();

  late final _fork_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function()>>('fork');
  late final _dart_fork _fork = _fork_ptr.asFunction<_dart_fork>();

  int fpathconf(
    int arg0,
    int arg1,
  ) =>
      _fpathconf(
        arg0,
        arg1,
      );

  late final _fpathconf_ptr =
      _lookup<ffi.NativeFunction<ffi.Int64 Function(ffi.Int32, ffi.Int32)>>(
          'fpathconf');
  late final _dart_fpathconf _fpathconf =
      _fpathconf_ptr.asFunction<_dart_fpathconf>();

  ffi.Pointer<ffi.Int8> getcwd(
    ffi.Pointer<ffi.Int8> arg0,
    int arg1,
  ) =>
      _getcwd(
        arg0,
        arg1,
      );

  late final _getcwd_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Int8> Function(
              ffi.Pointer<ffi.Int8>, ffi.Uint64)>>('getcwd');
  late final _dart_getcwd _getcwd = _getcwd_ptr.asFunction<_dart_getcwd>();

  int getegid() => _getegid();

  late final _getegid_ptr =
      _lookup<ffi.NativeFunction<ffi.Uint32 Function()>>('getegid');
  late final _dart_getegid _getegid = _getegid_ptr.asFunction<_dart_getegid>();

  int geteuid() => _geteuid();

  late final _geteuid_ptr =
      _lookup<ffi.NativeFunction<ffi.Uint32 Function()>>('geteuid');
  late final _dart_geteuid _geteuid = _geteuid_ptr.asFunction<_dart_geteuid>();

  int getgid() => _getgid();

  late final _getgid_ptr =
      _lookup<ffi.NativeFunction<ffi.Uint32 Function()>>('getgid');
  late final _dart_getgid _getgid = _getgid_ptr.asFunction<_dart_getgid>();

  int getgroups(
    int arg0,
    ffi.Pointer<ffi.Uint32> arg1,
  ) =>
      _getgroups(
        arg0,
        arg1,
      );

  late final _getgroups_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Int32, ffi.Pointer<ffi.Uint32>)>>('getgroups');
  late final _dart_getgroups _getgroups =
      _getgroups_ptr.asFunction<_dart_getgroups>();

  ffi.Pointer<ffi.Int8> getlogin() => _getlogin();

  late final _getlogin_ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Int8> Function()>>('getlogin');
  late final _dart_getlogin _getlogin =
      _getlogin_ptr.asFunction<_dart_getlogin>();

  int getpgrp() => _getpgrp();

  late final _getpgrp_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function()>>('getpgrp');
  late final _dart_getpgrp _getpgrp = _getpgrp_ptr.asFunction<_dart_getpgrp>();

  int getpid() => _getpid();

  late final _getpid_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function()>>('getpid');
  late final _dart_getpid _getpid = _getpid_ptr.asFunction<_dart_getpid>();

  int getppid() => _getppid();

  late final _getppid_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function()>>('getppid');
  late final _dart_getppid _getppid = _getppid_ptr.asFunction<_dart_getppid>();

  int getuid() => _getuid();

  late final _getuid_ptr =
      _lookup<ffi.NativeFunction<ffi.Uint32 Function()>>('getuid');
  late final _dart_getuid _getuid = _getuid_ptr.asFunction<_dart_getuid>();

  int isatty(
    int arg0,
  ) =>
      _isatty(
        arg0,
      );

  late final _isatty_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Int32)>>('isatty');
  late final _dart_isatty _isatty = _isatty_ptr.asFunction<_dart_isatty>();

  int link(
    ffi.Pointer<ffi.Int8> arg0,
    ffi.Pointer<ffi.Int8> arg1,
  ) =>
      _link(
        arg0,
        arg1,
      );

  late final _link_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>)>>('link');
  late final _dart_link _link = _link_ptr.asFunction<_dart_link>();

  int lseek(
    int arg0,
    int arg1,
    int arg2,
  ) =>
      _lseek(
        arg0,
        arg1,
        arg2,
      );

  late final _lseek_ptr = _lookup<
          ffi
          .NativeFunction<ffi.Int64 Function(ffi.Int32, ffi.Int64, ffi.Int32)>>(
      'lseek');
  late final _dart_lseek _lseek = _lseek_ptr.asFunction<_dart_lseek>();

  int pathconf(
    ffi.Pointer<ffi.Int8> arg0,
    int arg1,
  ) =>
      _pathconf(
        arg0,
        arg1,
      );

  late final _pathconf_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int64 Function(ffi.Pointer<ffi.Int8>, ffi.Int32)>>('pathconf');
  late final _dart_pathconf _pathconf =
      _pathconf_ptr.asFunction<_dart_pathconf>();

  int pause() => _pause();

  late final _pause_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function()>>('pause');
  late final _dart_pause _pause = _pause_ptr.asFunction<_dart_pause>();

  int pipe(
    ffi.Pointer<ffi.Int32> arg0,
  ) =>
      _pipe(
        arg0,
      );

  late final _pipe_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Pointer<ffi.Int32>)>>(
          'pipe');
  late final _dart_pipe _pipe = _pipe_ptr.asFunction<_dart_pipe>();

  int read(
    int arg0,
    ffi.Pointer<ffi.Void> arg1,
    int arg2,
  ) =>
      _read(
        arg0,
        arg1,
        arg2,
      );

  late final _read_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int64 Function(
              ffi.Int32, ffi.Pointer<ffi.Void>, ffi.Uint64)>>('read');
  late final _dart_read _read = _read_ptr.asFunction<_dart_read>();

  int rmdir(
    ffi.Pointer<ffi.Int8> arg0,
  ) =>
      _rmdir(
        arg0,
      );

  late final _rmdir_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Pointer<ffi.Int8>)>>(
          'rmdir');
  late final _dart_rmdir _rmdir = _rmdir_ptr.asFunction<_dart_rmdir>();

  int setgid(
    int arg0,
  ) =>
      _setgid(
        arg0,
      );

  late final _setgid_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Uint32)>>('setgid');
  late final _dart_setgid _setgid = _setgid_ptr.asFunction<_dart_setgid>();

  int setpgid(
    int arg0,
    int arg1,
  ) =>
      _setpgid(
        arg0,
        arg1,
      );

  late final _setpgid_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Int32, ffi.Int32)>>(
          'setpgid');
  late final _dart_setpgid _setpgid = _setpgid_ptr.asFunction<_dart_setpgid>();

  int setsid() => _setsid();

  late final _setsid_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function()>>('setsid');
  late final _dart_setsid _setsid = _setsid_ptr.asFunction<_dart_setsid>();

  int setuid(
    int arg0,
  ) =>
      _setuid(
        arg0,
      );

  late final _setuid_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Uint32)>>('setuid');
  late final _dart_setuid _setuid = _setuid_ptr.asFunction<_dart_setuid>();

  int sleep(
    int arg0,
  ) =>
      _sleep(
        arg0,
      );

  late final _sleep_ptr =
      _lookup<ffi.NativeFunction<ffi.Uint32 Function(ffi.Uint32)>>('sleep');
  late final _dart_sleep _sleep = _sleep_ptr.asFunction<_dart_sleep>();

  int sysconf(
    int arg0,
  ) =>
      _sysconf(
        arg0,
      );

  late final _sysconf_ptr =
      _lookup<ffi.NativeFunction<ffi.Int64 Function(ffi.Int32)>>('sysconf');
  late final _dart_sysconf _sysconf = _sysconf_ptr.asFunction<_dart_sysconf>();

  int tcgetpgrp(
    int arg0,
  ) =>
      _tcgetpgrp(
        arg0,
      );

  late final _tcgetpgrp_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Int32)>>('tcgetpgrp');
  late final _dart_tcgetpgrp _tcgetpgrp =
      _tcgetpgrp_ptr.asFunction<_dart_tcgetpgrp>();

  int tcsetpgrp(
    int arg0,
    int arg1,
  ) =>
      _tcsetpgrp(
        arg0,
        arg1,
      );

  late final _tcsetpgrp_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Int32, ffi.Int32)>>(
          'tcsetpgrp');
  late final _dart_tcsetpgrp _tcsetpgrp =
      _tcsetpgrp_ptr.asFunction<_dart_tcsetpgrp>();

  ffi.Pointer<ffi.Int8> ttyname(
    int arg0,
  ) =>
      _ttyname(
        arg0,
      );

  late final _ttyname_ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Int8> Function(ffi.Int32)>>(
          'ttyname');
  late final _dart_ttyname _ttyname = _ttyname_ptr.asFunction<_dart_ttyname>();

  int ttyname_r(
    int arg0,
    ffi.Pointer<ffi.Int8> arg1,
    int arg2,
  ) =>
      _ttyname_r(
        arg0,
        arg1,
        arg2,
      );

  late final _ttyname_r_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Int32, ffi.Pointer<ffi.Int8>, ffi.Uint64)>>('ttyname_r');
  late final _dart_ttyname_r _ttyname_r =
      _ttyname_r_ptr.asFunction<_dart_ttyname_r>();

  int unlink(
    ffi.Pointer<ffi.Int8> arg0,
  ) =>
      _unlink(
        arg0,
      );

  late final _unlink_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Pointer<ffi.Int8>)>>(
          'unlink');
  late final _dart_unlink _unlink = _unlink_ptr.asFunction<_dart_unlink>();

  int write(
    int __fd,
    ffi.Pointer<ffi.Void> __buf,
    int __nbyte,
  ) =>
      _write(
        __fd,
        __buf,
        __nbyte,
      );

  late final _write_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int64 Function(
              ffi.Int32, ffi.Pointer<ffi.Void>, ffi.Uint64)>>('write');
  late final _dart_write _write = _write_ptr.asFunction<_dart_write>();

  int confstr(
    int arg0,
    ffi.Pointer<ffi.Int8> arg1,
    int arg2,
  ) =>
      _confstr(
        arg0,
        arg1,
        arg2,
      );

  late final _confstr_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Uint64 Function(
              ffi.Int32, ffi.Pointer<ffi.Int8>, ffi.Uint64)>>('confstr');
  late final _dart_confstr _confstr = _confstr_ptr.asFunction<_dart_confstr>();

  int getopt(
    int arg0,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> arg1,
    ffi.Pointer<ffi.Int8> arg2,
  ) =>
      _getopt(
        arg0,
        arg1,
        arg2,
      );

  late final _getopt_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Int32, ffi.Pointer<ffi.Pointer<ffi.Int8>>,
              ffi.Pointer<ffi.Int8>)>>('getopt');
  late final _dart_getopt _getopt = _getopt_ptr.asFunction<_dart_getopt>();

  /// getopt(3) external variables
  late final ffi.Pointer<ffi.Pointer<ffi.Int8>> _optarg =
      _lookup<ffi.Pointer<ffi.Int8>>('optarg');

  ffi.Pointer<ffi.Int8> get optarg => _optarg.value;

  set optarg(ffi.Pointer<ffi.Int8> value) => _optarg.value = value;

  late final ffi.Pointer<ffi.Int32> _optind = _lookup<ffi.Int32>('optind');

  int get optind => _optind.value;

  set optind(int value) => _optind.value = value;

  late final ffi.Pointer<ffi.Int32> _opterr = _lookup<ffi.Int32>('opterr');

  int get opterr => _opterr.value;

  set opterr(int value) => _opterr.value = value;

  late final ffi.Pointer<ffi.Int32> _optopt = _lookup<ffi.Int32>('optopt');

  int get optopt => _optopt.value;

  set optopt(int value) => _optopt.value = value;

  ffi.Pointer<ffi.Int8> ctermid(
    ffi.Pointer<ffi.Int8> arg0,
  ) =>
      _ctermid(
        arg0,
      );

  late final _ctermid_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Int8> Function(ffi.Pointer<ffi.Int8>)>>('ctermid');
  late final _dart_ctermid _ctermid = _ctermid_ptr.asFunction<_dart_ctermid>();

  ffi.Pointer<ffi.Void> brk(
    ffi.Pointer<ffi.Void> arg0,
  ) =>
      _brk(
        arg0,
      );

  late final _brk_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>('brk');
  late final _dart_brk _brk = _brk_ptr.asFunction<_dart_brk>();

  int chroot(
    ffi.Pointer<ffi.Int8> arg0,
  ) =>
      _chroot(
        arg0,
      );

  late final _chroot_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Pointer<ffi.Int8>)>>(
          'chroot');
  late final _dart_chroot _chroot = _chroot_ptr.asFunction<_dart_chroot>();

  ffi.Pointer<ffi.Int8> crypt(
    ffi.Pointer<ffi.Int8> arg0,
    ffi.Pointer<ffi.Int8> arg1,
  ) =>
      _crypt(
        arg0,
        arg1,
      );

  late final _crypt_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Int8> Function(
              ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>)>>('crypt');
  late final _dart_crypt _crypt = _crypt_ptr.asFunction<_dart_crypt>();

  void encrypt(
    ffi.Pointer<ffi.Int8> arg0,
    int arg1,
  ) =>
      _encrypt(
        arg0,
        arg1,
      );

  late final _encrypt_ptr = _lookup<
          ffi
          .NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Int8>, ffi.Int32)>>(
      'encrypt');
  late final _dart_encrypt _encrypt = _encrypt_ptr.asFunction<_dart_encrypt>();

  int fchdir(
    int arg0,
  ) =>
      _fchdir(
        arg0,
      );

  late final _fchdir_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Int32)>>('fchdir');
  late final _dart_fchdir _fchdir = _fchdir_ptr.asFunction<_dart_fchdir>();

  int gethostid() => _gethostid();

  late final _gethostid_ptr =
      _lookup<ffi.NativeFunction<ffi.Int64 Function()>>('gethostid');
  late final _dart_gethostid _gethostid =
      _gethostid_ptr.asFunction<_dart_gethostid>();

  int getpgid(
    int arg0,
  ) =>
      _getpgid(
        arg0,
      );

  late final _getpgid_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Int32)>>('getpgid');
  late final _dart_getpgid _getpgid = _getpgid_ptr.asFunction<_dart_getpgid>();

  int getsid(
    int arg0,
  ) =>
      _getsid(
        arg0,
      );

  late final _getsid_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Int32)>>('getsid');
  late final _dart_getsid _getsid = _getsid_ptr.asFunction<_dart_getsid>();

  int getdtablesize() => _getdtablesize();

  late final _getdtablesize_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function()>>('getdtablesize');
  late final _dart_getdtablesize _getdtablesize =
      _getdtablesize_ptr.asFunction<_dart_getdtablesize>();

  int getpagesize() => _getpagesize();

  late final _getpagesize_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function()>>('getpagesize');
  late final _dart_getpagesize _getpagesize =
      _getpagesize_ptr.asFunction<_dart_getpagesize>();

  ffi.Pointer<ffi.Int8> getpass(
    ffi.Pointer<ffi.Int8> arg0,
  ) =>
      _getpass(
        arg0,
      );

  late final _getpass_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Int8> Function(ffi.Pointer<ffi.Int8>)>>('getpass');
  late final _dart_getpass _getpass = _getpass_ptr.asFunction<_dart_getpass>();

  ffi.Pointer<ffi.Int8> getwd(
    ffi.Pointer<ffi.Int8> arg0,
  ) =>
      _getwd(
        arg0,
      );

  late final _getwd_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Int8> Function(ffi.Pointer<ffi.Int8>)>>('getwd');
  late final _dart_getwd _getwd = _getwd_ptr.asFunction<_dart_getwd>();

  int lchown(
    ffi.Pointer<ffi.Int8> arg0,
    int arg1,
    int arg2,
  ) =>
      _lchown(
        arg0,
        arg1,
        arg2,
      );

  late final _lchown_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Int8>, ffi.Uint32, ffi.Uint32)>>('lchown');
  late final _dart_lchown _lchown = _lchown_ptr.asFunction<_dart_lchown>();

  int lockf(
    int arg0,
    int arg1,
    int arg2,
  ) =>
      _lockf(
        arg0,
        arg1,
        arg2,
      );

  late final _lockf_ptr = _lookup<
          ffi
          .NativeFunction<ffi.Int32 Function(ffi.Int32, ffi.Int32, ffi.Int64)>>(
      'lockf');
  late final _dart_lockf _lockf = _lockf_ptr.asFunction<_dart_lockf>();

  int nice(
    int arg0,
  ) =>
      _nice(
        arg0,
      );

  late final _nice_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Int32)>>('nice');
  late final _dart_nice _nice = _nice_ptr.asFunction<_dart_nice>();

  int pread(
    int __fd,
    ffi.Pointer<ffi.Void> __buf,
    int __nbyte,
    int __offset,
  ) =>
      _pread(
        __fd,
        __buf,
        __nbyte,
        __offset,
      );

  late final _pread_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int64 Function(ffi.Int32, ffi.Pointer<ffi.Void>, ffi.Uint64,
              ffi.Int64)>>('pread');
  late final _dart_pread _pread = _pread_ptr.asFunction<_dart_pread>();

  int pwrite(
    int __fd,
    ffi.Pointer<ffi.Void> __buf,
    int __nbyte,
    int __offset,
  ) =>
      _pwrite(
        __fd,
        __buf,
        __nbyte,
        __offset,
      );

  late final _pwrite_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int64 Function(ffi.Int32, ffi.Pointer<ffi.Void>, ffi.Uint64,
              ffi.Int64)>>('pwrite');
  late final _dart_pwrite _pwrite = _pwrite_ptr.asFunction<_dart_pwrite>();

  ffi.Pointer<ffi.Void> sbrk(
    int arg0,
  ) =>
      _sbrk(
        arg0,
      );

  late final _sbrk_ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Int32)>>(
          'sbrk');
  late final _dart_sbrk _sbrk = _sbrk_ptr.asFunction<_dart_sbrk>();

  int setpgrp() => _setpgrp();

  late final _setpgrp_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function()>>('setpgrp');
  late final _dart_setpgrp _setpgrp = _setpgrp_ptr.asFunction<_dart_setpgrp>();

  int setregid(
    int arg0,
    int arg1,
  ) =>
      _setregid(
        arg0,
        arg1,
      );

  late final _setregid_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Uint32, ffi.Uint32)>>(
          'setregid');
  late final _dart_setregid _setregid =
      _setregid_ptr.asFunction<_dart_setregid>();

  int setreuid(
    int arg0,
    int arg1,
  ) =>
      _setreuid(
        arg0,
        arg1,
      );

  late final _setreuid_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Uint32, ffi.Uint32)>>(
          'setreuid');
  late final _dart_setreuid _setreuid =
      _setreuid_ptr.asFunction<_dart_setreuid>();

  void swab(
    ffi.Pointer<ffi.Void> arg0,
    ffi.Pointer<ffi.Void> arg1,
    int arg2,
  ) =>
      _swab(
        arg0,
        arg1,
        arg2,
      );

  late final _swab_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>,
              ffi.Int64)>>('swab');
  late final _dart_swab _swab = _swab_ptr.asFunction<_dart_swab>();

  void sync_1() => _sync_1();

  late final _sync_1_ptr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>('sync');
  late final _dart_sync_1 _sync_1 = _sync_1_ptr.asFunction<_dart_sync_1>();

  int truncate(
    ffi.Pointer<ffi.Int8> arg0,
    int arg1,
  ) =>
      _truncate(
        arg0,
        arg1,
      );

  late final _truncate_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Int64)>>('truncate');
  late final _dart_truncate _truncate =
      _truncate_ptr.asFunction<_dart_truncate>();

  int ualarm(
    int arg0,
    int arg1,
  ) =>
      _ualarm(
        arg0,
        arg1,
      );

  late final _ualarm_ptr =
      _lookup<ffi.NativeFunction<ffi.Uint32 Function(ffi.Uint32, ffi.Uint32)>>(
          'ualarm');
  late final _dart_ualarm _ualarm = _ualarm_ptr.asFunction<_dart_ualarm>();

  int usleep(
    int arg0,
  ) =>
      _usleep(
        arg0,
      );

  late final _usleep_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Uint32)>>('usleep');
  late final _dart_usleep _usleep = _usleep_ptr.asFunction<_dart_usleep>();

  int vfork() => _vfork();

  late final _vfork_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function()>>('vfork');
  late final _dart_vfork _vfork = _vfork_ptr.asFunction<_dart_vfork>();

  /// End XSI
  int fsync(
    int arg0,
  ) =>
      _fsync(
        arg0,
      );

  late final _fsync_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Int32)>>('fsync');
  late final _dart_fsync _fsync = _fsync_ptr.asFunction<_dart_fsync>();

  int ftruncate(
    int arg0,
    int arg1,
  ) =>
      _ftruncate(
        arg0,
        arg1,
      );

  late final _ftruncate_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Int32, ffi.Int64)>>(
          'ftruncate');
  late final _dart_ftruncate _ftruncate =
      _ftruncate_ptr.asFunction<_dart_ftruncate>();

  int getlogin_r(
    ffi.Pointer<ffi.Int8> arg0,
    int arg1,
  ) =>
      _getlogin_r(
        arg0,
        arg1,
      );

  late final _getlogin_r_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Uint64)>>('getlogin_r');
  late final _dart_getlogin_r _getlogin_r =
      _getlogin_r_ptr.asFunction<_dart_getlogin_r>();

  int fchown(
    int arg0,
    int arg1,
    int arg2,
  ) =>
      _fchown(
        arg0,
        arg1,
        arg2,
      );

  late final _fchown_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Int32, ffi.Uint32, ffi.Uint32)>>('fchown');
  late final _dart_fchown _fchown = _fchown_ptr.asFunction<_dart_fchown>();

  int gethostname(
    ffi.Pointer<ffi.Int8> arg0,
    int arg1,
  ) =>
      _gethostname(
        arg0,
        arg1,
      );

  late final _gethostname_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Int8>, ffi.Uint64)>>('gethostname');
  late final _dart_gethostname _gethostname =
      _gethostname_ptr.asFunction<_dart_gethostname>();

  int readlink(
    ffi.Pointer<ffi.Int8> arg0,
    ffi.Pointer<ffi.Int8> arg1,
    int arg2,
  ) =>
      _readlink(
        arg0,
        arg1,
        arg2,
      );

  late final _readlink_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int64 Function(ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>,
              ffi.Uint64)>>('readlink');
  late final _dart_readlink _readlink =
      _readlink_ptr.asFunction<_dart_readlink>();

  int setegid(
    int arg0,
  ) =>
      _setegid(
        arg0,
      );

  late final _setegid_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Uint32)>>('setegid');
  late final _dart_setegid _setegid = _setegid_ptr.asFunction<_dart_setegid>();

  int seteuid(
    int arg0,
  ) =>
      _seteuid(
        arg0,
      );

  late final _seteuid_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Uint32)>>('seteuid');
  late final _dart_seteuid _seteuid = _seteuid_ptr.asFunction<_dart_seteuid>();

  int symlink(
    ffi.Pointer<ffi.Int8> arg0,
    ffi.Pointer<ffi.Int8> arg1,
  ) =>
      _symlink(
        arg0,
        arg1,
      );

  late final _symlink_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>)>>('symlink');
  late final _dart_symlink _symlink = _symlink_ptr.asFunction<_dart_symlink>();

  int __darwin_check_fd_set_overflow(
    int arg0,
    ffi.Pointer<ffi.Void> arg1,
    int arg2,
  ) =>
      ___darwin_check_fd_set_overflow(
        arg0,
        arg1,
        arg2,
      );

  late final ___darwin_check_fd_set_overflow_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Int32, ffi.Pointer<ffi.Void>,
              ffi.Int32)>>('__darwin_check_fd_set_overflow');
  late final _dart___darwin_check_fd_set_overflow
      ___darwin_check_fd_set_overflow = ___darwin_check_fd_set_overflow_ptr
          .asFunction<_dart___darwin_check_fd_set_overflow>();

  int pselect(
    int arg0,
    ffi.Pointer<fd_set> arg1,
    ffi.Pointer<fd_set> arg2,
    ffi.Pointer<fd_set> arg3,
    ffi.Pointer<timespec> arg4,
    ffi.Pointer<ffi.Uint32> arg5,
  ) =>
      _pselect(
        arg0,
        arg1,
        arg2,
        arg3,
        arg4,
        arg5,
      );

  late final _pselect_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Int32,
              ffi.Pointer<fd_set>,
              ffi.Pointer<fd_set>,
              ffi.Pointer<fd_set>,
              ffi.Pointer<timespec>,
              ffi.Pointer<ffi.Uint32>)>>('pselect');
  late final _dart_pselect _pselect = _pselect_ptr.asFunction<_dart_pselect>();

  int select(
    int arg0,
    ffi.Pointer<fd_set> arg1,
    ffi.Pointer<fd_set> arg2,
    ffi.Pointer<fd_set> arg3,
    ffi.Pointer<timeval> arg4,
  ) =>
      _select(
        arg0,
        arg1,
        arg2,
        arg3,
        arg4,
      );

  late final _select_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Int32,
              ffi.Pointer<fd_set>,
              ffi.Pointer<fd_set>,
              ffi.Pointer<fd_set>,
              ffi.Pointer<timeval>)>>('select');
  late final _dart_select _select = _select_ptr.asFunction<_dart_select>();

  void _Exit(
    int arg0,
  ) =>
      __Exit(
        arg0,
      );

  late final __Exit_ptr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int32)>>('_Exit');
  late final _dart__Exit __Exit = __Exit_ptr.asFunction<_dart__Exit>();

  int accessx_np(
    ffi.Pointer<accessx_descriptor> arg0,
    int arg1,
    ffi.Pointer<ffi.Int32> arg2,
    int arg3,
  ) =>
      _accessx_np(
        arg0,
        arg1,
        arg2,
        arg3,
      );

  late final _accessx_np_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<accessx_descriptor>, ffi.Uint64,
              ffi.Pointer<ffi.Int32>, ffi.Uint32)>>('accessx_np');
  late final _dart_accessx_np _accessx_np =
      _accessx_np_ptr.asFunction<_dart_accessx_np>();

  int acct(
    ffi.Pointer<ffi.Int8> arg0,
  ) =>
      _acct(
        arg0,
      );

  late final _acct_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Pointer<ffi.Int8>)>>(
          'acct');
  late final _dart_acct _acct = _acct_ptr.asFunction<_dart_acct>();

  int add_profil(
    ffi.Pointer<ffi.Int8> arg0,
    int arg1,
    int arg2,
    int arg3,
  ) =>
      _add_profil(
        arg0,
        arg1,
        arg2,
        arg3,
      );

  late final _add_profil_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Uint64, ffi.Uint64,
              ffi.Uint32)>>('add_profil');
  late final _dart_add_profil _add_profil =
      _add_profil_ptr.asFunction<_dart_add_profil>();

  void endusershell() => _endusershell();

  late final _endusershell_ptr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>('endusershell');
  late final _dart_endusershell _endusershell =
      _endusershell_ptr.asFunction<_dart_endusershell>();

  int execvP(
    ffi.Pointer<ffi.Int8> __file,
    ffi.Pointer<ffi.Int8> __searchpath,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> __argv,
  ) =>
      _execvP(
        __file,
        __searchpath,
        __argv,
      );

  late final _execvP_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>,
              ffi.Pointer<ffi.Pointer<ffi.Int8>>)>>('execvP');
  late final _dart_execvP _execvP = _execvP_ptr.asFunction<_dart_execvP>();

  ffi.Pointer<ffi.Int8> fflagstostr(
    int arg0,
  ) =>
      _fflagstostr(
        arg0,
      );

  late final _fflagstostr_ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Int8> Function(ffi.Uint64)>>(
          'fflagstostr');
  late final _dart_fflagstostr _fflagstostr =
      _fflagstostr_ptr.asFunction<_dart_fflagstostr>();

  int getdomainname(
    ffi.Pointer<ffi.Int8> arg0,
    int arg1,
  ) =>
      _getdomainname(
        arg0,
        arg1,
      );

  late final _getdomainname_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Int8>, ffi.Int32)>>('getdomainname');
  late final _dart_getdomainname _getdomainname =
      _getdomainname_ptr.asFunction<_dart_getdomainname>();

  int getgrouplist(
    ffi.Pointer<ffi.Int8> arg0,
    int arg1,
    ffi.Pointer<ffi.Int32> arg2,
    ffi.Pointer<ffi.Int32> arg3,
  ) =>
      _getgrouplist(
        arg0,
        arg1,
        arg2,
        arg3,
      );

  late final _getgrouplist_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Int32,
              ffi.Pointer<ffi.Int32>, ffi.Pointer<ffi.Int32>)>>('getgrouplist');
  late final _dart_getgrouplist _getgrouplist =
      _getgrouplist_ptr.asFunction<_dart_getgrouplist>();

  int gethostuuid(
    ffi.Pointer<ffi.Uint8> arg0,
    ffi.Pointer<timespec> arg1,
  ) =>
      _gethostuuid(
        arg0,
        arg1,
      );

  late final _gethostuuid_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Uint8>, ffi.Pointer<timespec>)>>('gethostuuid');
  late final _dart_gethostuuid _gethostuuid =
      _gethostuuid_ptr.asFunction<_dart_gethostuuid>();

  int getmode(
    ffi.Pointer<ffi.Void> arg0,
    int arg1,
  ) =>
      _getmode(
        arg0,
        arg1,
      );

  late final _getmode_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Uint16 Function(ffi.Pointer<ffi.Void>, ffi.Uint16)>>('getmode');
  late final _dart_getmode _getmode = _getmode_ptr.asFunction<_dart_getmode>();

  int getpeereid(
    int arg0,
    ffi.Pointer<ffi.Uint32> arg1,
    ffi.Pointer<ffi.Uint32> arg2,
  ) =>
      _getpeereid(
        arg0,
        arg1,
        arg2,
      );

  late final _getpeereid_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Int32, ffi.Pointer<ffi.Uint32>,
              ffi.Pointer<ffi.Uint32>)>>('getpeereid');
  late final _dart_getpeereid _getpeereid =
      _getpeereid_ptr.asFunction<_dart_getpeereid>();

  int getsgroups_np(
    ffi.Pointer<ffi.Int32> arg0,
    ffi.Pointer<ffi.Uint8> arg1,
  ) =>
      _getsgroups_np(
        arg0,
        arg1,
      );

  late final _getsgroups_np_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int32>,
              ffi.Pointer<ffi.Uint8>)>>('getsgroups_np');
  late final _dart_getsgroups_np _getsgroups_np =
      _getsgroups_np_ptr.asFunction<_dart_getsgroups_np>();

  ffi.Pointer<ffi.Int8> getusershell() => _getusershell();

  late final _getusershell_ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Int8> Function()>>(
          'getusershell');
  late final _dart_getusershell _getusershell =
      _getusershell_ptr.asFunction<_dart_getusershell>();

  int getwgroups_np(
    ffi.Pointer<ffi.Int32> arg0,
    ffi.Pointer<ffi.Uint8> arg1,
  ) =>
      _getwgroups_np(
        arg0,
        arg1,
      );

  late final _getwgroups_np_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int32>,
              ffi.Pointer<ffi.Uint8>)>>('getwgroups_np');
  late final _dart_getwgroups_np _getwgroups_np =
      _getwgroups_np_ptr.asFunction<_dart_getwgroups_np>();

  int initgroups(
    String user,
    int group,
  ) {
    final cUser = user.toNativeUtf8();
    final err = _initgroups(
      cUser,
      group,
    );
    malloc.free(cUser);
    return err;
  }

  late final _initgroups_ptr = _lookup<
          ffi.NativeFunction<ffi.Int32 Function(ffi.Pointer<Utf8>, ffi.Int32)>>(
      'initgroups');

  late final _dart_initgroups _initgroups =
      _initgroups_ptr.asFunction<_dart_initgroups>();

  int issetugid() => _issetugid();

  late final _issetugid_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function()>>('issetugid');
  late final _dart_issetugid _issetugid =
      _issetugid_ptr.asFunction<_dart_issetugid>();

  ffi.Pointer<ffi.Int8> mkdtemp(
    ffi.Pointer<ffi.Int8> arg0,
  ) =>
      _mkdtemp(
        arg0,
      );

  late final _mkdtemp_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Int8> Function(ffi.Pointer<ffi.Int8>)>>('mkdtemp');
  late final _dart_mkdtemp _mkdtemp = _mkdtemp_ptr.asFunction<_dart_mkdtemp>();

  int mknod(
    ffi.Pointer<ffi.Int8> arg0,
    int arg1,
    int arg2,
  ) =>
      _mknod(
        arg0,
        arg1,
        arg2,
      );

  late final _mknod_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Int8>, ffi.Uint16, ffi.Int32)>>('mknod');
  late final _dart_mknod _mknod = _mknod_ptr.asFunction<_dart_mknod>();

  int mkpath_np(
    ffi.Pointer<ffi.Int8> path,
    int omode,
  ) =>
      _mkpath_np(
        path,
        omode,
      );

  late final _mkpath_np_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Uint16)>>('mkpath_np');
  late final _dart_mkpath_np _mkpath_np =
      _mkpath_np_ptr.asFunction<_dart_mkpath_np>();

  int mkpathat_np(
    int dfd,
    ffi.Pointer<ffi.Int8> path,
    int omode,
  ) =>
      _mkpathat_np(
        dfd,
        path,
        omode,
      );

  late final _mkpathat_np_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Int32, ffi.Pointer<ffi.Int8>, ffi.Uint16)>>('mkpathat_np');
  late final _dart_mkpathat_np _mkpathat_np =
      _mkpathat_np_ptr.asFunction<_dart_mkpathat_np>();

  int mkstemp(
    ffi.Pointer<ffi.Int8> arg0,
  ) =>
      _mkstemp(
        arg0,
      );

  late final _mkstemp_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Pointer<ffi.Int8>)>>(
          'mkstemp');
  late final _dart_mkstemp _mkstemp = _mkstemp_ptr.asFunction<_dart_mkstemp>();

  int mkstemps(
    ffi.Pointer<ffi.Int8> arg0,
    int arg1,
  ) =>
      _mkstemps(
        arg0,
        arg1,
      );

  late final _mkstemps_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Int32)>>('mkstemps');
  late final _dart_mkstemps _mkstemps =
      _mkstemps_ptr.asFunction<_dart_mkstemps>();

  ffi.Pointer<ffi.Int8> mktemp(
    ffi.Pointer<ffi.Int8> arg0,
  ) =>
      _mktemp(
        arg0,
      );

  late final _mktemp_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Int8> Function(ffi.Pointer<ffi.Int8>)>>('mktemp');
  late final _dart_mktemp _mktemp = _mktemp_ptr.asFunction<_dart_mktemp>();

  int mkostemp(
    ffi.Pointer<ffi.Int8> path,
    int oflags,
  ) =>
      _mkostemp(
        path,
        oflags,
      );

  late final _mkostemp_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Int32)>>('mkostemp');
  late final _dart_mkostemp _mkostemp =
      _mkostemp_ptr.asFunction<_dart_mkostemp>();

  int mkostemps(
    ffi.Pointer<ffi.Int8> path,
    int slen,
    int oflags,
  ) =>
      _mkostemps(
        path,
        slen,
        oflags,
      );

  late final _mkostemps_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Int8>, ffi.Int32, ffi.Int32)>>('mkostemps');
  late final _dart_mkostemps _mkostemps =
      _mkostemps_ptr.asFunction<_dart_mkostemps>();

  /// Non-portable mkstemp that uses open_dprotected_np
  int mkstemp_dprotected_np(
    ffi.Pointer<ffi.Int8> path,
    int dpclass,
    int dpflags,
  ) =>
      _mkstemp_dprotected_np(
        path,
        dpclass,
        dpflags,
      );

  late final _mkstemp_dprotected_np_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Int32,
              ffi.Int32)>>('mkstemp_dprotected_np');
  late final _dart_mkstemp_dprotected_np _mkstemp_dprotected_np =
      _mkstemp_dprotected_np_ptr.asFunction<_dart_mkstemp_dprotected_np>();

  ffi.Pointer<ffi.Int8> mkdtempat_np(
    int dfd,
    ffi.Pointer<ffi.Int8> path,
  ) =>
      _mkdtempat_np(
        dfd,
        path,
      );

  late final _mkdtempat_np_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Int8> Function(
              ffi.Int32, ffi.Pointer<ffi.Int8>)>>('mkdtempat_np');
  late final _dart_mkdtempat_np _mkdtempat_np =
      _mkdtempat_np_ptr.asFunction<_dart_mkdtempat_np>();

  int mkstempsat_np(
    int dfd,
    ffi.Pointer<ffi.Int8> path,
    int slen,
  ) =>
      _mkstempsat_np(
        dfd,
        path,
        slen,
      );

  late final _mkstempsat_np_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Int32, ffi.Pointer<ffi.Int8>, ffi.Int32)>>('mkstempsat_np');
  late final _dart_mkstempsat_np _mkstempsat_np =
      _mkstempsat_np_ptr.asFunction<_dart_mkstempsat_np>();

  int mkostempsat_np(
    int dfd,
    ffi.Pointer<ffi.Int8> path,
    int slen,
    int oflags,
  ) =>
      _mkostempsat_np(
        dfd,
        path,
        slen,
        oflags,
      );

  late final _mkostempsat_np_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Int32, ffi.Pointer<ffi.Int8>, ffi.Int32,
              ffi.Int32)>>('mkostempsat_np');
  late final _dart_mkostempsat_np _mkostempsat_np =
      _mkostempsat_np_ptr.asFunction<_dart_mkostempsat_np>();

  int nfssvc(
    int arg0,
    ffi.Pointer<ffi.Void> arg1,
  ) =>
      _nfssvc(
        arg0,
        arg1,
      );

  late final _nfssvc_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Int32, ffi.Pointer<ffi.Void>)>>('nfssvc');
  late final _dart_nfssvc _nfssvc = _nfssvc_ptr.asFunction<_dart_nfssvc>();

  int profil(
    ffi.Pointer<ffi.Int8> arg0,
    int arg1,
    int arg2,
    int arg3,
  ) =>
      _profil(
        arg0,
        arg1,
        arg2,
        arg3,
      );

  late final _profil_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Uint64, ffi.Uint64,
              ffi.Uint32)>>('profil');
  late final _dart_profil _profil = _profil_ptr.asFunction<_dart_profil>();

  int pthread_setugid_np(
    int arg0,
    int arg1,
  ) =>
      _pthread_setugid_np(
        arg0,
        arg1,
      );

  late final _pthread_setugid_np_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Uint32, ffi.Uint32)>>(
          'pthread_setugid_np');
  late final _dart_pthread_setugid_np _pthread_setugid_np =
      _pthread_setugid_np_ptr.asFunction<_dart_pthread_setugid_np>();

  int pthread_getugid_np(
    ffi.Pointer<ffi.Uint32> arg0,
    ffi.Pointer<ffi.Uint32> arg1,
  ) =>
      _pthread_getugid_np(
        arg0,
        arg1,
      );

  late final _pthread_getugid_np_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Uint32>,
              ffi.Pointer<ffi.Uint32>)>>('pthread_getugid_np');
  late final _dart_pthread_getugid_np _pthread_getugid_np =
      _pthread_getugid_np_ptr.asFunction<_dart_pthread_getugid_np>();

  int reboot(
    int arg0,
  ) =>
      _reboot(
        arg0,
      );

  late final _reboot_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Int32)>>('reboot');
  late final _dart_reboot _reboot = _reboot_ptr.asFunction<_dart_reboot>();

  int revoke(
    ffi.Pointer<ffi.Int8> arg0,
  ) =>
      _revoke(
        arg0,
      );

  late final _revoke_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Pointer<ffi.Int8>)>>(
          'revoke');
  late final _dart_revoke _revoke = _revoke_ptr.asFunction<_dart_revoke>();

  int rcmd(
    ffi.Pointer<ffi.Pointer<ffi.Int8>> arg0,
    int arg1,
    ffi.Pointer<ffi.Int8> arg2,
    ffi.Pointer<ffi.Int8> arg3,
    ffi.Pointer<ffi.Int8> arg4,
    ffi.Pointer<ffi.Int32> arg5,
  ) =>
      _rcmd(
        arg0,
        arg1,
        arg2,
        arg3,
        arg4,
        arg5,
      );

  late final _rcmd_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Pointer<ffi.Int8>>,
              ffi.Int32,
              ffi.Pointer<ffi.Int8>,
              ffi.Pointer<ffi.Int8>,
              ffi.Pointer<ffi.Int8>,
              ffi.Pointer<ffi.Int32>)>>('rcmd');
  late final _dart_rcmd _rcmd = _rcmd_ptr.asFunction<_dart_rcmd>();

  int rcmd_af(
    ffi.Pointer<ffi.Pointer<ffi.Int8>> arg0,
    int arg1,
    ffi.Pointer<ffi.Int8> arg2,
    ffi.Pointer<ffi.Int8> arg3,
    ffi.Pointer<ffi.Int8> arg4,
    ffi.Pointer<ffi.Int32> arg5,
    int arg6,
  ) =>
      _rcmd_af(
        arg0,
        arg1,
        arg2,
        arg3,
        arg4,
        arg5,
        arg6,
      );

  late final _rcmd_af_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Pointer<ffi.Int8>>,
              ffi.Int32,
              ffi.Pointer<ffi.Int8>,
              ffi.Pointer<ffi.Int8>,
              ffi.Pointer<ffi.Int8>,
              ffi.Pointer<ffi.Int32>,
              ffi.Int32)>>('rcmd_af');
  late final _dart_rcmd_af _rcmd_af = _rcmd_af_ptr.asFunction<_dart_rcmd_af>();

  int rresvport(
    ffi.Pointer<ffi.Int32> arg0,
  ) =>
      _rresvport(
        arg0,
      );

  late final _rresvport_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Pointer<ffi.Int32>)>>(
          'rresvport');
  late final _dart_rresvport _rresvport =
      _rresvport_ptr.asFunction<_dart_rresvport>();

  int rresvport_af(
    ffi.Pointer<ffi.Int32> arg0,
    int arg1,
  ) =>
      _rresvport_af(
        arg0,
        arg1,
      );

  late final _rresvport_af_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Int32>, ffi.Int32)>>('rresvport_af');
  late final _dart_rresvport_af _rresvport_af =
      _rresvport_af_ptr.asFunction<_dart_rresvport_af>();

  int iruserok(
    int arg0,
    int arg1,
    ffi.Pointer<ffi.Int8> arg2,
    ffi.Pointer<ffi.Int8> arg3,
  ) =>
      _iruserok(
        arg0,
        arg1,
        arg2,
        arg3,
      );

  late final _iruserok_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Uint64, ffi.Int32, ffi.Pointer<ffi.Int8>,
              ffi.Pointer<ffi.Int8>)>>('iruserok');
  late final _dart_iruserok _iruserok =
      _iruserok_ptr.asFunction<_dart_iruserok>();

  int iruserok_sa(
    ffi.Pointer<ffi.Void> arg0,
    int arg1,
    int arg2,
    ffi.Pointer<ffi.Int8> arg3,
    ffi.Pointer<ffi.Int8> arg4,
  ) =>
      _iruserok_sa(
        arg0,
        arg1,
        arg2,
        arg3,
        arg4,
      );

  late final _iruserok_sa_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Void>, ffi.Int32, ffi.Int32,
              ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>)>>('iruserok_sa');
  late final _dart_iruserok_sa _iruserok_sa =
      _iruserok_sa_ptr.asFunction<_dart_iruserok_sa>();

  int ruserok(
    ffi.Pointer<ffi.Int8> arg0,
    int arg1,
    ffi.Pointer<ffi.Int8> arg2,
    ffi.Pointer<ffi.Int8> arg3,
  ) =>
      _ruserok(
        arg0,
        arg1,
        arg2,
        arg3,
      );

  late final _ruserok_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Int32,
              ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>)>>('ruserok');
  late final _dart_ruserok _ruserok = _ruserok_ptr.asFunction<_dart_ruserok>();

  int setdomainname(
    ffi.Pointer<ffi.Int8> arg0,
    int arg1,
  ) =>
      _setdomainname(
        arg0,
        arg1,
      );

  late final _setdomainname_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Int8>, ffi.Int32)>>('setdomainname');
  late final _dart_setdomainname _setdomainname =
      _setdomainname_ptr.asFunction<_dart_setdomainname>();

  int setgroups(
    int arg0,
    ffi.Pointer<ffi.Uint32> arg1,
  ) =>
      _setgroups(
        arg0,
        arg1,
      );

  late final _setgroups_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Int32, ffi.Pointer<ffi.Uint32>)>>('setgroups');
  late final _dart_setgroups _setgroups =
      _setgroups_ptr.asFunction<_dart_setgroups>();

  void sethostid(
    int arg0,
  ) =>
      _sethostid(
        arg0,
      );

  late final _sethostid_ptr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>('sethostid');
  late final _dart_sethostid _sethostid =
      _sethostid_ptr.asFunction<_dart_sethostid>();

  int sethostname(
    ffi.Pointer<ffi.Int8> arg0,
    int arg1,
  ) =>
      _sethostname(
        arg0,
        arg1,
      );

  late final _sethostname_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Int32)>>('sethostname');
  late final _dart_sethostname _sethostname =
      _sethostname_ptr.asFunction<_dart_sethostname>();

  void setkey(
    ffi.Pointer<ffi.Int8> arg0,
  ) =>
      _setkey(
        arg0,
      );

  late final _setkey_ptr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Int8>)>>(
          'setkey');
  late final _dart_setkey _setkey = _setkey_ptr.asFunction<_dart_setkey>();

  int setlogin(
    ffi.Pointer<ffi.Int8> arg0,
  ) =>
      _setlogin(
        arg0,
      );

  late final _setlogin_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Pointer<ffi.Int8>)>>(
          'setlogin');
  late final _dart_setlogin _setlogin =
      _setlogin_ptr.asFunction<_dart_setlogin>();

  ffi.Pointer<ffi.Void> setmode(
    ffi.Pointer<ffi.Int8> arg0,
  ) =>
      _setmode(
        arg0,
      );

  late final _setmode_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Int8>)>>('setmode');
  late final _dart_setmode _setmode = _setmode_ptr.asFunction<_dart_setmode>();

  int setrgid(
    int arg0,
  ) =>
      _setrgid(
        arg0,
      );

  late final _setrgid_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Uint32)>>('setrgid');
  late final _dart_setrgid _setrgid = _setrgid_ptr.asFunction<_dart_setrgid>();

  int setruid(
    int arg0,
  ) =>
      _setruid(
        arg0,
      );

  late final _setruid_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Uint32)>>('setruid');
  late final _dart_setruid _setruid = _setruid_ptr.asFunction<_dart_setruid>();

  int setsgroups_np(
    int arg0,
    ffi.Pointer<ffi.Uint8> arg1,
  ) =>
      _setsgroups_np(
        arg0,
        arg1,
      );

  late final _setsgroups_np_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Int32, ffi.Pointer<ffi.Uint8>)>>('setsgroups_np');
  late final _dart_setsgroups_np _setsgroups_np =
      _setsgroups_np_ptr.asFunction<_dart_setsgroups_np>();

  void setusershell() => _setusershell();

  late final _setusershell_ptr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>('setusershell');
  late final _dart_setusershell _setusershell =
      _setusershell_ptr.asFunction<_dart_setusershell>();

  int setwgroups_np(
    int arg0,
    ffi.Pointer<ffi.Uint8> arg1,
  ) =>
      _setwgroups_np(
        arg0,
        arg1,
      );

  late final _setwgroups_np_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Int32, ffi.Pointer<ffi.Uint8>)>>('setwgroups_np');
  late final _dart_setwgroups_np _setwgroups_np =
      _setwgroups_np_ptr.asFunction<_dart_setwgroups_np>();

  int strtofflags(
    ffi.Pointer<ffi.Pointer<ffi.Int8>> arg0,
    ffi.Pointer<ffi.Uint64> arg1,
    ffi.Pointer<ffi.Uint64> arg2,
  ) =>
      _strtofflags(
        arg0,
        arg1,
        arg2,
      );

  late final _strtofflags_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Pointer<ffi.Int8>>,
              ffi.Pointer<ffi.Uint64>,
              ffi.Pointer<ffi.Uint64>)>>('strtofflags');
  late final _dart_strtofflags _strtofflags =
      _strtofflags_ptr.asFunction<_dart_strtofflags>();

  int swapon(
    ffi.Pointer<ffi.Int8> arg0,
  ) =>
      _swapon(
        arg0,
      );

  late final _swapon_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Pointer<ffi.Int8>)>>(
          'swapon');
  late final _dart_swapon _swapon = _swapon_ptr.asFunction<_dart_swapon>();

  int ttyslot() => _ttyslot();

  late final _ttyslot_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function()>>('ttyslot');
  late final _dart_ttyslot _ttyslot = _ttyslot_ptr.asFunction<_dart_ttyslot>();

  int undelete(
    ffi.Pointer<ffi.Int8> arg0,
  ) =>
      _undelete(
        arg0,
      );

  late final _undelete_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Pointer<ffi.Int8>)>>(
          'undelete');
  late final _dart_undelete _undelete =
      _undelete_ptr.asFunction<_dart_undelete>();

  int unwhiteout(
    ffi.Pointer<ffi.Int8> arg0,
  ) =>
      _unwhiteout(
        arg0,
      );

  late final _unwhiteout_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Pointer<ffi.Int8>)>>(
          'unwhiteout');
  late final _dart_unwhiteout _unwhiteout =
      _unwhiteout_ptr.asFunction<_dart_unwhiteout>();

  ffi.Pointer<ffi.Void> valloc(
    int arg0,
  ) =>
      _valloc(
        arg0,
      );

  late final _valloc_ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Uint64)>>(
          'valloc');
  late final _dart_valloc _valloc = _valloc_ptr.asFunction<_dart_valloc>();

  int syscall(
    int arg0,
  ) =>
      _syscall(
        arg0,
      );

  late final _syscall_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Int32)>>('syscall');
  late final _dart_syscall _syscall = _syscall_ptr.asFunction<_dart_syscall>();

  /// getsubopt(3) external variable
  late final ffi.Pointer<ffi.Pointer<ffi.Int8>> _suboptarg =
      _lookup<ffi.Pointer<ffi.Int8>>('suboptarg');

  ffi.Pointer<ffi.Int8> get suboptarg => _suboptarg.value;

  set suboptarg(ffi.Pointer<ffi.Int8> value) => _suboptarg.value = value;

  int getsubopt(
    ffi.Pointer<ffi.Pointer<ffi.Int8>> arg0,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> arg1,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> arg2,
  ) =>
      _getsubopt(
        arg0,
        arg1,
        arg2,
      );

  late final _getsubopt_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Pointer<ffi.Int8>>,
              ffi.Pointer<ffi.Pointer<ffi.Int8>>,
              ffi.Pointer<ffi.Pointer<ffi.Int8>>)>>('getsubopt');
  late final _dart_getsubopt _getsubopt =
      _getsubopt_ptr.asFunction<_dart_getsubopt>();

  int fgetattrlist(
    int arg0,
    ffi.Pointer<ffi.Void> arg1,
    ffi.Pointer<ffi.Void> arg2,
    int arg3,
    int arg4,
  ) =>
      _fgetattrlist(
        arg0,
        arg1,
        arg2,
        arg3,
        arg4,
      );

  late final _fgetattrlist_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Int32, ffi.Pointer<ffi.Void>,
              ffi.Pointer<ffi.Void>, ffi.Uint64, ffi.Uint32)>>('fgetattrlist');
  late final _dart_fgetattrlist _fgetattrlist =
      _fgetattrlist_ptr.asFunction<_dart_fgetattrlist>();

  int fsetattrlist(
    int arg0,
    ffi.Pointer<ffi.Void> arg1,
    ffi.Pointer<ffi.Void> arg2,
    int arg3,
    int arg4,
  ) =>
      _fsetattrlist(
        arg0,
        arg1,
        arg2,
        arg3,
        arg4,
      );

  late final _fsetattrlist_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Int32, ffi.Pointer<ffi.Void>,
              ffi.Pointer<ffi.Void>, ffi.Uint64, ffi.Uint32)>>('fsetattrlist');
  late final _dart_fsetattrlist _fsetattrlist =
      _fsetattrlist_ptr.asFunction<_dart_fsetattrlist>();

  int getattrlist(
    ffi.Pointer<ffi.Int8> arg0,
    ffi.Pointer<ffi.Void> arg1,
    ffi.Pointer<ffi.Void> arg2,
    int arg3,
    int arg4,
  ) =>
      _getattrlist(
        arg0,
        arg1,
        arg2,
        arg3,
        arg4,
      );

  late final _getattrlist_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Void>,
              ffi.Pointer<ffi.Void>, ffi.Uint64, ffi.Uint32)>>('getattrlist');
  late final _dart_getattrlist _getattrlist =
      _getattrlist_ptr.asFunction<_dart_getattrlist>();

  int setattrlist(
    ffi.Pointer<ffi.Int8> arg0,
    ffi.Pointer<ffi.Void> arg1,
    ffi.Pointer<ffi.Void> arg2,
    int arg3,
    int arg4,
  ) =>
      _setattrlist(
        arg0,
        arg1,
        arg2,
        arg3,
        arg4,
      );

  late final _setattrlist_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Void>,
              ffi.Pointer<ffi.Void>, ffi.Uint64, ffi.Uint32)>>('setattrlist');
  late final _dart_setattrlist _setattrlist =
      _setattrlist_ptr.asFunction<_dart_setattrlist>();

  int exchangedata(
    ffi.Pointer<ffi.Int8> arg0,
    ffi.Pointer<ffi.Int8> arg1,
    int arg2,
  ) =>
      _exchangedata(
        arg0,
        arg1,
        arg2,
      );

  late final _exchangedata_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>,
              ffi.Uint32)>>('exchangedata');
  late final _dart_exchangedata _exchangedata =
      _exchangedata_ptr.asFunction<_dart_exchangedata>();

  int getdirentriesattr(
    int arg0,
    ffi.Pointer<ffi.Void> arg1,
    ffi.Pointer<ffi.Void> arg2,
    int arg3,
    ffi.Pointer<ffi.Uint32> arg4,
    ffi.Pointer<ffi.Uint32> arg5,
    ffi.Pointer<ffi.Uint32> arg6,
    int arg7,
  ) =>
      _getdirentriesattr(
        arg0,
        arg1,
        arg2,
        arg3,
        arg4,
        arg5,
        arg6,
        arg7,
      );

  late final _getdirentriesattr_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Int32,
              ffi.Pointer<ffi.Void>,
              ffi.Pointer<ffi.Void>,
              ffi.Uint64,
              ffi.Pointer<ffi.Uint32>,
              ffi.Pointer<ffi.Uint32>,
              ffi.Pointer<ffi.Uint32>,
              ffi.Uint32)>>('getdirentriesattr');
  late final _dart_getdirentriesattr _getdirentriesattr =
      _getdirentriesattr_ptr.asFunction<_dart_getdirentriesattr>();

  int searchfs(
    ffi.Pointer<ffi.Int8> arg0,
    ffi.Pointer<fssearchblock> arg1,
    ffi.Pointer<ffi.Uint64> arg2,
    int arg3,
    int arg4,
    ffi.Pointer<searchstate> arg5,
  ) =>
      _searchfs(
        arg0,
        arg1,
        arg2,
        arg3,
        arg4,
        arg5,
      );

  late final _searchfs_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Int8>,
              ffi.Pointer<fssearchblock>,
              ffi.Pointer<ffi.Uint64>,
              ffi.Uint32,
              ffi.Uint32,
              ffi.Pointer<searchstate>)>>('searchfs');
  late final _dart_searchfs _searchfs =
      _searchfs_ptr.asFunction<_dart_searchfs>();

  int fsctl(
    ffi.Pointer<ffi.Int8> arg0,
    int arg1,
    ffi.Pointer<ffi.Void> arg2,
    int arg3,
  ) =>
      _fsctl(
        arg0,
        arg1,
        arg2,
        arg3,
      );

  late final _fsctl_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Uint64,
              ffi.Pointer<ffi.Void>, ffi.Uint32)>>('fsctl');
  late final _dart_fsctl _fsctl = _fsctl_ptr.asFunction<_dart_fsctl>();

  int ffsctl(
    int arg0,
    int arg1,
    ffi.Pointer<ffi.Void> arg2,
    int arg3,
  ) =>
      _ffsctl(
        arg0,
        arg1,
        arg2,
        arg3,
      );

  late final _ffsctl_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Int32, ffi.Uint64, ffi.Pointer<ffi.Void>,
              ffi.Uint32)>>('ffsctl');
  late final _dart_ffsctl _ffsctl = _ffsctl_ptr.asFunction<_dart_ffsctl>();

  int fsync_volume_np(
    int arg0,
    int arg1,
  ) =>
      _fsync_volume_np(
        arg0,
        arg1,
      );

  late final _fsync_volume_np_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Int32, ffi.Int32)>>(
          'fsync_volume_np');
  late final _dart_fsync_volume_np _fsync_volume_np =
      _fsync_volume_np_ptr.asFunction<_dart_fsync_volume_np>();

  int sync_volume_np(
    ffi.Pointer<ffi.Int8> arg0,
    int arg1,
  ) =>
      _sync_volume_np(
        arg0,
        arg1,
      );

  late final _sync_volume_np_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Int8>, ffi.Int32)>>('sync_volume_np');
  late final _dart_sync_volume_np _sync_volume_np =
      _sync_volume_np_ptr.asFunction<_dart_sync_volume_np>();

  late final ffi.Pointer<ffi.Int32> _optreset = _lookup<ffi.Int32>('optreset');

  int get optreset => _optreset.value;

  set optreset(int value) => _optreset.value = value;

  ffi.Pointer<passwd> getpwuid(
    int arg0,
  ) =>
      _getpwuid(
        arg0,
      );

  late final _getpwuid_ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<passwd> Function(ffi.Uint32)>>(
          'getpwuid');
  late final _dart_getpwuid _getpwuid =
      _getpwuid_ptr.asFunction<_dart_getpwuid>();

  ffi.Pointer<passwd> getpwnam(
    ffi.Pointer<ffi.Int8> arg0,
  ) =>
      _getpwnam(
        arg0,
      );

  late final _getpwnam_ptr = _lookup<
          ffi
          .NativeFunction<ffi.Pointer<passwd> Function(ffi.Pointer<ffi.Int8>)>>(
      'getpwnam');
  late final _dart_getpwnam _getpwnam =
      _getpwnam_ptr.asFunction<_dart_getpwnam>();

  int getpwuid_r(
    int arg0,
    ffi.Pointer<passwd> arg1,
    ffi.Pointer<ffi.Int8> arg2,
    int arg3,
    ffi.Pointer<ffi.Pointer<passwd>> arg4,
  ) =>
      _getpwuid_r(
        arg0,
        arg1,
        arg2,
        arg3,
        arg4,
      );

  late final _getpwuid_r_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Uint32,
              ffi.Pointer<passwd>,
              ffi.Pointer<ffi.Int8>,
              ffi.Uint64,
              ffi.Pointer<ffi.Pointer<passwd>>)>>('getpwuid_r');
  late final _dart_getpwuid_r _getpwuid_r =
      _getpwuid_r_ptr.asFunction<_dart_getpwuid_r>();

  int getpwnam_r(
    ffi.Pointer<ffi.Int8> arg0,
    ffi.Pointer<passwd> arg1,
    ffi.Pointer<ffi.Int8> arg2,
    int arg3,
    ffi.Pointer<ffi.Pointer<passwd>> arg4,
  ) =>
      _getpwnam_r(
        arg0,
        arg1,
        arg2,
        arg3,
        arg4,
      );

  late final _getpwnam_r_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Int8>,
              ffi.Pointer<passwd>,
              ffi.Pointer<ffi.Int8>,
              ffi.Uint64,
              ffi.Pointer<ffi.Pointer<passwd>>)>>('getpwnam_r');
  late final _dart_getpwnam_r _getpwnam_r =
      _getpwnam_r_ptr.asFunction<_dart_getpwnam_r>();

  ffi.Pointer<passwd> getpwent() => _getpwent();

  late final _getpwent_ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<passwd> Function()>>('getpwent');
  late final _dart_getpwent _getpwent =
      _getpwent_ptr.asFunction<_dart_getpwent>();

  void setpwent() => _setpwent();

  late final _setpwent_ptr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>('setpwent');
  late final _dart_setpwent _setpwent =
      _setpwent_ptr.asFunction<_dart_setpwent>();

  void endpwent() => _endpwent();

  late final _endpwent_ptr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>('endpwent');
  late final _dart_endpwent _endpwent =
      _endpwent_ptr.asFunction<_dart_endpwent>();

  late final ffi.Pointer<ffi.Pointer<ffi.Uint8>> _UUID_NULL =
      _lookup<ffi.Pointer<ffi.Uint8>>('UUID_NULL');

  ffi.Pointer<ffi.Uint8> get UUID_NULL => _UUID_NULL.value;

  set UUID_NULL(ffi.Pointer<ffi.Uint8> value) => _UUID_NULL.value = value;

  void uuid_clear(
    ffi.Pointer<ffi.Uint8> uu,
  ) =>
      _uuid_clear(
        uu,
      );

  late final _uuid_clear_ptr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Uint8>)>>(
          'uuid_clear');
  late final _dart_uuid_clear _uuid_clear =
      _uuid_clear_ptr.asFunction<_dart_uuid_clear>();

  int uuid_compare(
    ffi.Pointer<ffi.Uint8> uu1,
    ffi.Pointer<ffi.Uint8> uu2,
  ) =>
      _uuid_compare(
        uu1,
        uu2,
      );

  late final _uuid_compare_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Uint8>, ffi.Pointer<ffi.Uint8>)>>('uuid_compare');
  late final _dart_uuid_compare _uuid_compare =
      _uuid_compare_ptr.asFunction<_dart_uuid_compare>();

  void uuid_copy(
    ffi.Pointer<ffi.Uint8> dst,
    ffi.Pointer<ffi.Uint8> src,
  ) =>
      _uuid_copy(
        dst,
        src,
      );

  late final _uuid_copy_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<ffi.Uint8>, ffi.Pointer<ffi.Uint8>)>>('uuid_copy');
  late final _dart_uuid_copy _uuid_copy =
      _uuid_copy_ptr.asFunction<_dart_uuid_copy>();

  void uuid_generate(
    ffi.Pointer<ffi.Uint8> out,
  ) =>
      _uuid_generate(
        out,
      );

  late final _uuid_generate_ptr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Uint8>)>>(
          'uuid_generate');
  late final _dart_uuid_generate _uuid_generate =
      _uuid_generate_ptr.asFunction<_dart_uuid_generate>();

  void uuid_generate_random(
    ffi.Pointer<ffi.Uint8> out,
  ) =>
      _uuid_generate_random(
        out,
      );

  late final _uuid_generate_random_ptr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Uint8>)>>(
          'uuid_generate_random');
  late final _dart_uuid_generate_random _uuid_generate_random =
      _uuid_generate_random_ptr.asFunction<_dart_uuid_generate_random>();

  void uuid_generate_time(
    ffi.Pointer<ffi.Uint8> out,
  ) =>
      _uuid_generate_time(
        out,
      );

  late final _uuid_generate_time_ptr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Uint8>)>>(
          'uuid_generate_time');
  late final _dart_uuid_generate_time _uuid_generate_time =
      _uuid_generate_time_ptr.asFunction<_dart_uuid_generate_time>();

  int uuid_is_null(
    ffi.Pointer<ffi.Uint8> uu,
  ) =>
      _uuid_is_null(
        uu,
      );

  late final _uuid_is_null_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Pointer<ffi.Uint8>)>>(
          'uuid_is_null');
  late final _dart_uuid_is_null _uuid_is_null =
      _uuid_is_null_ptr.asFunction<_dart_uuid_is_null>();

  int uuid_parse(
    ffi.Pointer<ffi.Int8> in_1,
    ffi.Pointer<ffi.Uint8> uu,
  ) =>
      _uuid_parse(
        in_1,
        uu,
      );

  late final _uuid_parse_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Uint8>)>>('uuid_parse');
  late final _dart_uuid_parse _uuid_parse =
      _uuid_parse_ptr.asFunction<_dart_uuid_parse>();

  void uuid_unparse(
    ffi.Pointer<ffi.Uint8> uu,
    ffi.Pointer<ffi.Int8> out,
  ) =>
      _uuid_unparse(
        uu,
        out,
      );

  late final _uuid_unparse_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<ffi.Uint8>, ffi.Pointer<ffi.Int8>)>>('uuid_unparse');
  late final _dart_uuid_unparse _uuid_unparse =
      _uuid_unparse_ptr.asFunction<_dart_uuid_unparse>();

  void uuid_unparse_lower(
    ffi.Pointer<ffi.Uint8> uu,
    ffi.Pointer<ffi.Int8> out,
  ) =>
      _uuid_unparse_lower(
        uu,
        out,
      );

  late final _uuid_unparse_lower_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ffi.Uint8>,
              ffi.Pointer<ffi.Int8>)>>('uuid_unparse_lower');
  late final _dart_uuid_unparse_lower _uuid_unparse_lower =
      _uuid_unparse_lower_ptr.asFunction<_dart_uuid_unparse_lower>();

  void uuid_unparse_upper(
    ffi.Pointer<ffi.Uint8> uu,
    ffi.Pointer<ffi.Int8> out,
  ) =>
      _uuid_unparse_upper(
        uu,
        out,
      );

  late final _uuid_unparse_upper_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ffi.Uint8>,
              ffi.Pointer<ffi.Int8>)>>('uuid_unparse_upper');
  late final _dart_uuid_unparse_upper _uuid_unparse_upper =
      _uuid_unparse_upper_ptr.asFunction<_dart_uuid_unparse_upper>();

  int setpassent(
    int arg0,
  ) =>
      _setpassent(
        arg0,
      );

  late final _setpassent_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Int32)>>('setpassent');
  late final _dart_setpassent _setpassent =
      _setpassent_ptr.asFunction<_dart_setpassent>();

  ffi.Pointer<ffi.Int8> user_from_uid(
    int arg0,
    int arg1,
  ) =>
      _user_from_uid(
        arg0,
        arg1,
      );

  late final _user_from_uid_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Int8> Function(
              ffi.Uint32, ffi.Int32)>>('user_from_uid');
  late final _dart_user_from_uid _user_from_uid =
      _user_from_uid_ptr.asFunction<_dart_user_from_uid>();

  ffi.Pointer<passwd> getpwuuid(
    ffi.Pointer<ffi.Uint8> arg0,
  ) =>
      _getpwuuid(
        arg0,
      );

  late final _getpwuuid_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<passwd> Function(ffi.Pointer<ffi.Uint8>)>>('getpwuuid');
  late final _dart_getpwuuid _getpwuuid =
      _getpwuuid_ptr.asFunction<_dart_getpwuuid>();

  int getpwuuid_r(
    ffi.Pointer<ffi.Uint8> arg0,
    ffi.Pointer<passwd> arg1,
    ffi.Pointer<ffi.Int8> arg2,
    int arg3,
    ffi.Pointer<ffi.Pointer<passwd>> arg4,
  ) =>
      _getpwuuid_r(
        arg0,
        arg1,
        arg2,
        arg3,
        arg4,
      );

  late final _getpwuuid_r_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Uint8>,
              ffi.Pointer<passwd>,
              ffi.Pointer<ffi.Int8>,
              ffi.Uint64,
              ffi.Pointer<ffi.Pointer<passwd>>)>>('getpwuuid_r');
  late final _dart_getpwuuid_r _getpwuuid_r =
      _getpwuuid_r_ptr.asFunction<_dart_getpwuuid_r>();

  /// XBD
  ffi.Pointer<group> getgrgid(
    int arg0,
  ) =>
      _getgrgid(
        arg0,
      );

  late final _getgrgid_ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<group> Function(ffi.Uint32)>>(
          'getgrgid');
  late final _dart_getgrgid _getgrgid =
      _getgrgid_ptr.asFunction<_dart_getgrgid>();

  ffi.Pointer<group> getgrnam(
    ffi.Pointer<ffi.Int8> arg0,
  ) =>
      _getgrnam(
        arg0,
      );

  late final _getgrnam_ptr = _lookup<
          ffi
          .NativeFunction<ffi.Pointer<group> Function(ffi.Pointer<ffi.Int8>)>>(
      'getgrnam');
  late final _dart_getgrnam _getgrnam =
      _getgrnam_ptr.asFunction<_dart_getgrnam>();

  /// TSF
  int getgrgid_r(
    int arg0,
    ffi.Pointer<group> arg1,
    ffi.Pointer<ffi.Int8> arg2,
    int arg3,
    ffi.Pointer<ffi.Pointer<group>> arg4,
  ) =>
      _getgrgid_r(
        arg0,
        arg1,
        arg2,
        arg3,
        arg4,
      );

  late final _getgrgid_r_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Uint32,
              ffi.Pointer<group>,
              ffi.Pointer<ffi.Int8>,
              ffi.Uint64,
              ffi.Pointer<ffi.Pointer<group>>)>>('getgrgid_r');
  late final _dart_getgrgid_r _getgrgid_r =
      _getgrgid_r_ptr.asFunction<_dart_getgrgid_r>();

  int getgrnam_r(
    ffi.Pointer<ffi.Int8> arg0,
    ffi.Pointer<group> arg1,
    ffi.Pointer<ffi.Int8> arg2,
    int arg3,
    ffi.Pointer<ffi.Pointer<group>> arg4,
  ) =>
      _getgrnam_r(
        arg0,
        arg1,
        arg2,
        arg3,
        arg4,
      );

  late final _getgrnam_r_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Int8>,
              ffi.Pointer<group>,
              ffi.Pointer<ffi.Int8>,
              ffi.Uint64,
              ffi.Pointer<ffi.Pointer<group>>)>>('getgrnam_r');
  late final _dart_getgrnam_r _getgrnam_r =
      _getgrnam_r_ptr.asFunction<_dart_getgrnam_r>();

  /// XSI
  ffi.Pointer<group> getgrent() => _getgrent();

  late final _getgrent_ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<group> Function()>>('getgrent');
  late final _dart_getgrent _getgrent =
      _getgrent_ptr.asFunction<_dart_getgrent>();

  void setgrent() => _setgrent();

  late final _setgrent_ptr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>('setgrent');
  late final _dart_setgrent _setgrent =
      _setgrent_ptr.asFunction<_dart_setgrent>();

  void endgrent() => _endgrent();

  late final _endgrent_ptr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>('endgrent');
  late final _dart_endgrent _endgrent =
      _endgrent_ptr.asFunction<_dart_endgrent>();

  ffi.Pointer<ffi.Int8> group_from_gid(
    int arg0,
    int arg1,
  ) =>
      _group_from_gid(
        arg0,
        arg1,
      );

  late final _group_from_gid_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Int8> Function(
              ffi.Uint32, ffi.Int32)>>('group_from_gid');
  late final _dart_group_from_gid _group_from_gid =
      _group_from_gid_ptr.asFunction<_dart_group_from_gid>();

  ffi.Pointer<group> getgruuid(
    ffi.Pointer<ffi.Uint8> arg0,
  ) =>
      _getgruuid(
        arg0,
      );

  late final _getgruuid_ptr = _lookup<
          ffi
          .NativeFunction<ffi.Pointer<group> Function(ffi.Pointer<ffi.Uint8>)>>(
      'getgruuid');
  late final _dart_getgruuid _getgruuid =
      _getgruuid_ptr.asFunction<_dart_getgruuid>();

  int getgruuid_r(
    ffi.Pointer<ffi.Uint8> arg0,
    ffi.Pointer<group> arg1,
    ffi.Pointer<ffi.Int8> arg2,
    int arg3,
    ffi.Pointer<ffi.Pointer<group>> arg4,
  ) =>
      _getgruuid_r(
        arg0,
        arg1,
        arg2,
        arg3,
        arg4,
      );

  late final _getgruuid_r_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Uint8>,
              ffi.Pointer<group>,
              ffi.Pointer<ffi.Int8>,
              ffi.Uint64,
              ffi.Pointer<ffi.Pointer<group>>)>>('getgruuid_r');
  late final _dart_getgruuid_r _getgruuid_r =
      _getgruuid_r_ptr.asFunction<_dart_getgruuid_r>();

  void setgrfile(
    ffi.Pointer<ffi.Int8> arg0,
  ) =>
      _setgrfile(
        arg0,
      );

  late final _setgrfile_ptr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Int8>)>>(
          'setgrfile');
  late final _dart_setgrfile _setgrfile =
      _setgrfile_ptr.asFunction<_dart_setgrfile>();

  int setgroupent(
    int arg0,
  ) =>
      _setgroupent(
        arg0,
      );

  late final _setgroupent_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Int32)>>('setgroupent');
  late final _dart_setgroupent _setgroupent =
      _setgroupent_ptr.asFunction<_dart_setgroupent>();

  ffi.Pointer<ffi.Int32> __error() => ___error();

  late final ___error_ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Int32> Function()>>('__error');
  late final _dart___error ___error = ___error_ptr.asFunction<_dart___error>();

  /// XSI
  int chmod(
    ffi.Pointer<ffi.Int8> arg0,
    int arg1,
  ) =>
      _chmod(
        arg0,
        arg1,
      );

  late final _chmod_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Uint16)>>('chmod');
  late final _dart_chmod _chmod = _chmod_ptr.asFunction<_dart_chmod>();

  int fchmod(
    int arg0,
    int arg1,
  ) =>
      _fchmod(
        arg0,
        arg1,
      );

  late final _fchmod_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Int32, ffi.Uint16)>>(
          'fchmod');
  late final _dart_fchmod _fchmod = _fchmod_ptr.asFunction<_dart_fchmod>();

  int fstat(
    int arg0,
    ffi.Pointer<stat> arg1,
  ) =>
      _fstat(
        arg0,
        arg1,
      );

  late final _fstat_ptr = _lookup<
          ffi.NativeFunction<ffi.Int32 Function(ffi.Int32, ffi.Pointer<stat>)>>(
      'fstat');
  late final _dart_fstat _fstat = _fstat_ptr.asFunction<_dart_fstat>();

  int lstat(
    ffi.Pointer<ffi.Int8> arg0,
    ffi.Pointer<stat> arg1,
  ) =>
      _lstat(
        arg0,
        arg1,
      );

  late final _lstat_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Int8>, ffi.Pointer<stat>)>>('lstat');
  late final _dart_lstat _lstat = _lstat_ptr.asFunction<_dart_lstat>();

  int mkdir(
    ffi.Pointer<ffi.Int8> arg0,
    int arg1,
  ) =>
      _mkdir(
        arg0,
        arg1,
      );

  late final _mkdir_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Uint16)>>('mkdir');
  late final _dart_mkdir _mkdir = _mkdir_ptr.asFunction<_dart_mkdir>();

  int mkfifo(
    ffi.Pointer<ffi.Int8> arg0,
    int arg1,
  ) =>
      _mkfifo(
        arg0,
        arg1,
      );

  late final _mkfifo_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Uint16)>>('mkfifo');
  late final _dart_mkfifo _mkfifo = _mkfifo_ptr.asFunction<_dart_mkfifo>();

  int stat_1(
    ffi.Pointer<ffi.Int8> arg0,
    ffi.Pointer<stat> arg1,
  ) =>
      _stat_1(
        arg0,
        arg1,
      );

  late final _stat_1_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Int8>, ffi.Pointer<stat>)>>('stat');
  late final _dart_stat_1 _stat_1 = _stat_1_ptr.asFunction<_dart_stat_1>();

  int umask(
    int arg0,
  ) =>
      _umask(
        arg0,
      );

  late final _umask_ptr =
      _lookup<ffi.NativeFunction<ffi.Uint16 Function(ffi.Uint16)>>('umask');
  late final _dart_umask _umask = _umask_ptr.asFunction<_dart_umask>();

  int fchmodat(
    int arg0,
    ffi.Pointer<ffi.Int8> arg1,
    int arg2,
    int arg3,
  ) =>
      _fchmodat(
        arg0,
        arg1,
        arg2,
        arg3,
      );

  late final _fchmodat_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Int32, ffi.Pointer<ffi.Int8>, ffi.Uint16,
              ffi.Int32)>>('fchmodat');
  late final _dart_fchmodat _fchmodat =
      _fchmodat_ptr.asFunction<_dart_fchmodat>();

  int fstatat(
    int arg0,
    ffi.Pointer<ffi.Int8> arg1,
    ffi.Pointer<stat> arg2,
    int arg3,
  ) =>
      _fstatat(
        arg0,
        arg1,
        arg2,
        arg3,
      );

  late final _fstatat_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Int32, ffi.Pointer<ffi.Int8>,
              ffi.Pointer<stat>, ffi.Int32)>>('fstatat');
  late final _dart_fstatat _fstatat = _fstatat_ptr.asFunction<_dart_fstatat>();

  int mkdirat(
    int arg0,
    ffi.Pointer<ffi.Int8> arg1,
    int arg2,
  ) =>
      _mkdirat(
        arg0,
        arg1,
        arg2,
      );

  late final _mkdirat_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Int32, ffi.Pointer<ffi.Int8>, ffi.Uint16)>>('mkdirat');
  late final _dart_mkdirat _mkdirat = _mkdirat_ptr.asFunction<_dart_mkdirat>();

  int futimens(
    int __fd,
    ffi.Pointer<timespec> __times,
  ) =>
      _futimens(
        __fd,
        __times,
      );

  late final _futimens_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Int32, ffi.Pointer<timespec>)>>('futimens');
  late final _dart_futimens _futimens =
      _futimens_ptr.asFunction<_dart_futimens>();

  int utimensat(
    int __fd,
    ffi.Pointer<ffi.Int8> __path,
    ffi.Pointer<timespec> __times,
    int __flag,
  ) =>
      _utimensat(
        __fd,
        __path,
        __times,
        __flag,
      );

  late final _utimensat_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Int32, ffi.Pointer<ffi.Int8>,
              ffi.Pointer<timespec>, ffi.Int32)>>('utimensat');
  late final _dart_utimensat _utimensat =
      _utimensat_ptr.asFunction<_dart_utimensat>();

  int chflags(
    ffi.Pointer<ffi.Int8> arg0,
    int arg1,
  ) =>
      _chflags(
        arg0,
        arg1,
      );

  late final _chflags_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Uint32)>>('chflags');
  late final _dart_chflags _chflags = _chflags_ptr.asFunction<_dart_chflags>();

  int chmodx_np(
    ffi.Pointer<ffi.Int8> arg0,
    ffi.Pointer<filesec> arg1,
  ) =>
      _chmodx_np(
        arg0,
        arg1,
      );

  late final _chmodx_np_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Int8>, ffi.Pointer<filesec>)>>('chmodx_np');
  late final _dart_chmodx_np _chmodx_np =
      _chmodx_np_ptr.asFunction<_dart_chmodx_np>();

  int fchflags(
    int arg0,
    int arg1,
  ) =>
      _fchflags(
        arg0,
        arg1,
      );

  late final _fchflags_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Int32, ffi.Uint32)>>(
          'fchflags');
  late final _dart_fchflags _fchflags =
      _fchflags_ptr.asFunction<_dart_fchflags>();

  int fchmodx_np(
    int arg0,
    ffi.Pointer<filesec> arg1,
  ) =>
      _fchmodx_np(
        arg0,
        arg1,
      );

  late final _fchmodx_np_ptr = _lookup<
          ffi
          .NativeFunction<ffi.Int32 Function(ffi.Int32, ffi.Pointer<filesec>)>>(
      'fchmodx_np');
  late final _dart_fchmodx_np _fchmodx_np =
      _fchmodx_np_ptr.asFunction<_dart_fchmodx_np>();

  int fstatx_np(
    int arg0,
    ffi.Pointer<stat> arg1,
    ffi.Pointer<filesec> arg2,
  ) =>
      _fstatx_np(
        arg0,
        arg1,
        arg2,
      );

  late final _fstatx_np_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Int32, ffi.Pointer<stat>,
              ffi.Pointer<filesec>)>>('fstatx_np');
  late final _dart_fstatx_np _fstatx_np =
      _fstatx_np_ptr.asFunction<_dart_fstatx_np>();

  int lchflags(
    ffi.Pointer<ffi.Int8> arg0,
    int arg1,
  ) =>
      _lchflags(
        arg0,
        arg1,
      );

  late final _lchflags_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Uint32)>>('lchflags');
  late final _dart_lchflags _lchflags =
      _lchflags_ptr.asFunction<_dart_lchflags>();

  int lchmod(
    ffi.Pointer<ffi.Int8> arg0,
    int arg1,
  ) =>
      _lchmod(
        arg0,
        arg1,
      );

  late final _lchmod_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Uint16)>>('lchmod');
  late final _dart_lchmod _lchmod = _lchmod_ptr.asFunction<_dart_lchmod>();

  int lstatx_np(
    ffi.Pointer<ffi.Int8> arg0,
    ffi.Pointer<stat> arg1,
    ffi.Pointer<filesec> arg2,
  ) =>
      _lstatx_np(
        arg0,
        arg1,
        arg2,
      );

  late final _lstatx_np_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Pointer<stat>,
              ffi.Pointer<filesec>)>>('lstatx_np');
  late final _dart_lstatx_np _lstatx_np =
      _lstatx_np_ptr.asFunction<_dart_lstatx_np>();

  int mkdirx_np(
    ffi.Pointer<ffi.Int8> arg0,
    ffi.Pointer<filesec> arg1,
  ) =>
      _mkdirx_np(
        arg0,
        arg1,
      );

  late final _mkdirx_np_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Int8>, ffi.Pointer<filesec>)>>('mkdirx_np');
  late final _dart_mkdirx_np _mkdirx_np =
      _mkdirx_np_ptr.asFunction<_dart_mkdirx_np>();

  int mkfifox_np(
    ffi.Pointer<ffi.Int8> arg0,
    ffi.Pointer<filesec> arg1,
  ) =>
      _mkfifox_np(
        arg0,
        arg1,
      );

  late final _mkfifox_np_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Int8>, ffi.Pointer<filesec>)>>('mkfifox_np');
  late final _dart_mkfifox_np _mkfifox_np =
      _mkfifox_np_ptr.asFunction<_dart_mkfifox_np>();

  int statx_np(
    ffi.Pointer<ffi.Int8> arg0,
    ffi.Pointer<stat> arg1,
    ffi.Pointer<filesec> arg2,
  ) =>
      _statx_np(
        arg0,
        arg1,
        arg2,
      );

  late final _statx_np_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Pointer<stat>,
              ffi.Pointer<filesec>)>>('statx_np');
  late final _dart_statx_np _statx_np =
      _statx_np_ptr.asFunction<_dart_statx_np>();

  int umaskx_np(
    ffi.Pointer<filesec> arg0,
  ) =>
      _umaskx_np(
        arg0,
      );

  late final _umaskx_np_ptr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(ffi.Pointer<filesec>)>>(
          'umaskx_np');
  late final _dart_umaskx_np _umaskx_np =
      _umaskx_np_ptr.asFunction<_dart_umaskx_np>();

  /// The following deprecated routines are simillar to stat and friends except
  ///  provide struct stat64 instead of struct stat
  int fstatx64_np(
    int arg0,
    ffi.Pointer<stat64> arg1,
    ffi.Pointer<filesec> arg2,
  ) =>
      _fstatx64_np(
        arg0,
        arg1,
        arg2,
      );

  late final _fstatx64_np_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Int32, ffi.Pointer<stat64>,
              ffi.Pointer<filesec>)>>('fstatx64_np');
  late final _dart_fstatx64_np _fstatx64_np =
      _fstatx64_np_ptr.asFunction<_dart_fstatx64_np>();

  int lstatx64_np(
    ffi.Pointer<ffi.Int8> arg0,
    ffi.Pointer<stat64> arg1,
    ffi.Pointer<filesec> arg2,
  ) =>
      _lstatx64_np(
        arg0,
        arg1,
        arg2,
      );

  late final _lstatx64_np_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Pointer<stat64>,
              ffi.Pointer<filesec>)>>('lstatx64_np');
  late final _dart_lstatx64_np _lstatx64_np =
      _lstatx64_np_ptr.asFunction<_dart_lstatx64_np>();

  int statx64_np(
    ffi.Pointer<ffi.Int8> arg0,
    ffi.Pointer<stat64> arg1,
    ffi.Pointer<filesec> arg2,
  ) =>
      _statx64_np(
        arg0,
        arg1,
        arg2,
      );

  late final _statx64_np_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Pointer<stat64>,
              ffi.Pointer<filesec>)>>('statx64_np');
  late final _dart_statx64_np _statx64_np =
      _statx64_np_ptr.asFunction<_dart_statx64_np>();

  int fstat64(
    int arg0,
    ffi.Pointer<stat64> arg1,
  ) =>
      _fstat64(
        arg0,
        arg1,
      );

  late final _fstat64_ptr = _lookup<
          ffi
          .NativeFunction<ffi.Int32 Function(ffi.Int32, ffi.Pointer<stat64>)>>(
      'fstat64');
  late final _dart_fstat64 _fstat64 = _fstat64_ptr.asFunction<_dart_fstat64>();

  int lstat64(
    ffi.Pointer<ffi.Int8> arg0,
    ffi.Pointer<stat64> arg1,
  ) =>
      _lstat64(
        arg0,
        arg1,
      );

  late final _lstat64_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Int8>, ffi.Pointer<stat64>)>>('lstat64');
  late final _dart_lstat64 _lstat64 = _lstat64_ptr.asFunction<_dart_lstat64>();

  int stat64_1(
    ffi.Pointer<ffi.Int8> arg0,
    ffi.Pointer<stat64> arg1,
  ) =>
      _stat64_1(
        arg0,
        arg1,
      );

  late final _stat64_1_ptr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(
              ffi.Pointer<ffi.Int8>, ffi.Pointer<stat64>)>>('stat64');
  late final _dart_stat64_1 _stat64_1 =
      _stat64_1_ptr.asFunction<_dart_stat64_1>();
}

final class __darwin_pthread_handler_rec extends ffi.Struct {
  /// Routine to call
  external ffi
      .Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>
      __routine;

  /// Argument to pass
  external ffi.Pointer<ffi.Void> __arg;

  external ffi.Pointer<__darwin_pthread_handler_rec> __next;
}
