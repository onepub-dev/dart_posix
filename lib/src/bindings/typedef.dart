/*
 * Copyright (c) 2025 S. Brett Sutton 2022+
 *
 * This software is licensed under the MIT License.
 * SPDX-License-Identifier: MIT
 */

part of 'mac.dart';

typedef _dart_getattrlistbulk = int Function(
  int arg0,
  ffi.Pointer<ffi.Void> arg1,
  ffi.Pointer<ffi.Void> arg2,
  int arg3,
  int arg4,
);

typedef _dart_getattrlistat = int Function(
  int arg0,
  ffi.Pointer<ffi.Int8> arg1,
  ffi.Pointer<ffi.Void> arg2,
  ffi.Pointer<ffi.Void> arg3,
  int arg4,
  int arg5,
);

typedef _dart_setattrlistat = int Function(
  int arg0,
  ffi.Pointer<ffi.Int8> arg1,
  ffi.Pointer<ffi.Void> arg2,
  ffi.Pointer<ffi.Void> arg3,
  int arg4,
  int arg5,
);

typedef _dart_faccessat = int Function(
  int arg0,
  ffi.Pointer<ffi.Int8> arg1,
  int arg2,
  int arg3,
);

typedef _dart_fchownat = int Function(
  int arg0,
  ffi.Pointer<ffi.Int8> arg1,
  int arg2,
  int arg3,
  int arg4,
);

typedef _dart_linkat = int Function(
  int arg0,
  ffi.Pointer<ffi.Int8> arg1,
  int arg2,
  ffi.Pointer<ffi.Int8> arg3,
  int arg4,
);

typedef _dart_readlinkat = int Function(
  int arg0,
  ffi.Pointer<ffi.Int8> arg1,
  ffi.Pointer<ffi.Int8> arg2,
  int arg3,
);

typedef _dart_symlinkat = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  int arg1,
  ffi.Pointer<ffi.Int8> arg2,
);

typedef _dart_unlinkat = int Function(
  int arg0,
  ffi.Pointer<ffi.Int8> arg1,
  int arg2,
);

typedef _dart__exit = void Function(
  int arg0,
);

typedef _dart_access = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  int arg1,
);

typedef _dart_alarm = int Function(
  int arg0,
);

typedef _dart_chdir = int Function(
  ffi.Pointer<ffi.Int8> arg0,
);

typedef _dart_chown = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  int arg1,
  int arg2,
);

typedef _dart_close = int Function(
  int arg0,
);

typedef _dart_dup = int Function(
  int arg0,
);

typedef _dart_dup2 = int Function(
  int arg0,
  int arg1,
);

typedef _dart_execl = int Function(
  ffi.Pointer<ffi.Int8> __path,
  ffi.Pointer<ffi.Int8> __arg0,
);

typedef _dart_execle = int Function(
  ffi.Pointer<ffi.Int8> __path,
  ffi.Pointer<ffi.Int8> __arg0,
);

typedef _dart_execlp = int Function(
  ffi.Pointer<ffi.Int8> __file,
  ffi.Pointer<ffi.Int8> __arg0,
);

typedef _dart_execv = int Function(
  ffi.Pointer<ffi.Int8> __path,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __argv,
);

typedef _dart_execve = int Function(
  ffi.Pointer<ffi.Int8> __file,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __argv,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __envp,
);

typedef _dart_execvp = int Function(
  ffi.Pointer<ffi.Int8> __file,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __argv,
);

typedef _dart_fork = int Function();

typedef _dart_fpathconf = int Function(
  int arg0,
  int arg1,
);

typedef _dart_getcwd = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> arg0,
  int arg1,
);

typedef _dart_getegid = int Function();

typedef _dart_geteuid = int Function();

typedef _dart_getgid = int Function();

typedef _dart_getgroups = int Function(
  int arg0,
  ffi.Pointer<ffi.Uint32> arg1,
);

typedef _dart_getlogin = ffi.Pointer<ffi.Int8> Function();

typedef _dart_getpgrp = int Function();

typedef _dart_getpid = int Function();

typedef _dart_getppid = int Function();

typedef _dart_getuid = int Function();

typedef _dart_isatty = int Function(
  int arg0,
);

typedef _dart_link = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  ffi.Pointer<ffi.Int8> arg1,
);

typedef _dart_lseek = int Function(
  int arg0,
  int arg1,
  int arg2,
);

typedef _dart_pathconf = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  int arg1,
);

typedef _dart_pause = int Function();

typedef _dart_pipe = int Function(
  ffi.Pointer<ffi.Int32> arg0,
);

typedef _dart_read = int Function(
  int arg0,
  ffi.Pointer<ffi.Void> arg1,
  int arg2,
);

typedef _dart_rmdir = int Function(
  ffi.Pointer<ffi.Int8> arg0,
);

typedef _dart_setgid = int Function(
  int arg0,
);

typedef _dart_setpgid = int Function(
  int arg0,
  int arg1,
);

typedef _dart_setsid = int Function();

typedef _dart_setuid = int Function(
  int arg0,
);

typedef _dart_sleep = int Function(
  int arg0,
);

typedef _dart_sysconf = int Function(
  int arg0,
);

typedef _dart_tcgetpgrp = int Function(
  int arg0,
);

typedef _dart_tcsetpgrp = int Function(
  int arg0,
  int arg1,
);

typedef _dart_ttyname = ffi.Pointer<ffi.Int8> Function(
  int arg0,
);

typedef _dart_ttyname_r = int Function(
  int arg0,
  ffi.Pointer<ffi.Int8> arg1,
  int arg2,
);

typedef _dart_unlink = int Function(
  ffi.Pointer<ffi.Int8> arg0,
);

typedef _dart_write = int Function(
  int __fd,
  ffi.Pointer<ffi.Void> __buf,
  int __nbyte,
);

typedef _dart_confstr = int Function(
  int arg0,
  ffi.Pointer<ffi.Int8> arg1,
  int arg2,
);

typedef _dart_getopt = int Function(
  int arg0,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> arg1,
  ffi.Pointer<ffi.Int8> arg2,
);

typedef _dart_ctermid = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> arg0,
);

typedef _dart_brk = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> arg0,
);

typedef _dart_chroot = int Function(
  ffi.Pointer<ffi.Int8> arg0,
);

typedef _dart_crypt = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> arg0,
  ffi.Pointer<ffi.Int8> arg1,
);

typedef _dart_encrypt = void Function(
  ffi.Pointer<ffi.Int8> arg0,
  int arg1,
);

typedef _dart_fchdir = int Function(
  int arg0,
);

typedef _dart_gethostid = int Function();

typedef _dart_getpgid = int Function(
  int arg0,
);

typedef _dart_getsid = int Function(
  int arg0,
);

typedef _dart_getdtablesize = int Function();

typedef _dart_getpagesize = int Function();

typedef _dart_getpass = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> arg0,
);

typedef _dart_getwd = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> arg0,
);

typedef _dart_lchown = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  int arg1,
  int arg2,
);

typedef _dart_lockf = int Function(
  int arg0,
  int arg1,
  int arg2,
);

typedef _dart_nice = int Function(
  int arg0,
);

typedef _dart_pread = int Function(
  int __fd,
  ffi.Pointer<ffi.Void> __buf,
  int __nbyte,
  int __offset,
);

typedef _dart_pwrite = int Function(
  int __fd,
  ffi.Pointer<ffi.Void> __buf,
  int __nbyte,
  int __offset,
);

typedef _dart_sbrk = ffi.Pointer<ffi.Void> Function(
  int arg0,
);

typedef _dart_setpgrp = int Function();

typedef _dart_setregid = int Function(
  int arg0,
  int arg1,
);

typedef _dart_setreuid = int Function(
  int arg0,
  int arg1,
);

typedef _dart_swab = void Function(
  ffi.Pointer<ffi.Void> arg0,
  ffi.Pointer<ffi.Void> arg1,
  int arg2,
);

typedef _dart_sync_1 = void Function();

typedef _dart_truncate = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  int arg1,
);

typedef _dart_ualarm = int Function(
  int arg0,
  int arg1,
);

typedef _dart_usleep = int Function(
  int arg0,
);

typedef _dart_vfork = int Function();

typedef _dart_fsync = int Function(
  int arg0,
);

typedef _dart_ftruncate = int Function(
  int arg0,
  int arg1,
);

typedef _dart_getlogin_r = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  int arg1,
);

typedef _dart_fchown = int Function(
  int arg0,
  int arg1,
  int arg2,
);

typedef _dart_gethostname = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  int arg1,
);

typedef _dart_readlink = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  ffi.Pointer<ffi.Int8> arg1,
  int arg2,
);

typedef _dart_setegid = int Function(
  int arg0,
);

typedef _dart_seteuid = int Function(
  int arg0,
);

typedef _dart_symlink = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  ffi.Pointer<ffi.Int8> arg1,
);

typedef _dart___darwin_check_fd_set_overflow = int Function(
  int arg0,
  ffi.Pointer<ffi.Void> arg1,
  int arg2,
);

typedef _dart_pselect = int Function(
  int arg0,
  ffi.Pointer<fd_set> arg1,
  ffi.Pointer<fd_set> arg2,
  ffi.Pointer<fd_set> arg3,
  ffi.Pointer<timespec> arg4,
  ffi.Pointer<ffi.Uint32> arg5,
);

typedef _dart_select = int Function(
  int arg0,
  ffi.Pointer<fd_set> arg1,
  ffi.Pointer<fd_set> arg2,
  ffi.Pointer<fd_set> arg3,
  ffi.Pointer<timeval> arg4,
);

typedef _dart__Exit = void Function(
  int arg0,
);

typedef _dart_accessx_np = int Function(
  ffi.Pointer<accessx_descriptor> arg0,
  int arg1,
  ffi.Pointer<ffi.Int32> arg2,
  int arg3,
);

typedef _dart_acct = int Function(
  ffi.Pointer<ffi.Int8> arg0,
);

typedef _dart_add_profil = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  int arg1,
  int arg2,
  int arg3,
);

typedef _dart_endusershell = void Function();

typedef _dart_execvP = int Function(
  ffi.Pointer<ffi.Int8> __file,
  ffi.Pointer<ffi.Int8> __searchpath,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __argv,
);

typedef _dart_fflagstostr = ffi.Pointer<ffi.Int8> Function(
  int arg0,
);

typedef _dart_getdomainname = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  int arg1,
);

typedef _dart_getgrouplist = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  int arg1,
  ffi.Pointer<ffi.Int32> arg2,
  ffi.Pointer<ffi.Int32> arg3,
);

typedef _dart_gethostuuid = int Function(
  ffi.Pointer<ffi.Uint8> arg0,
  ffi.Pointer<timespec> arg1,
);

typedef _dart_getmode = int Function(
  ffi.Pointer<ffi.Void> arg0,
  int arg1,
);

typedef _dart_getpeereid = int Function(
  int arg0,
  ffi.Pointer<ffi.Uint32> arg1,
  ffi.Pointer<ffi.Uint32> arg2,
);

typedef _dart_getsgroups_np = int Function(
  ffi.Pointer<ffi.Int32> arg0,
  ffi.Pointer<ffi.Uint8> arg1,
);

typedef _dart_getusershell = ffi.Pointer<ffi.Int8> Function();

typedef _dart_getwgroups_np = int Function(
  ffi.Pointer<ffi.Int32> arg0,
  ffi.Pointer<ffi.Uint8> arg1,
);

typedef _dart_initgroups = int Function(
  ffi.Pointer<Utf8> arg0,
  int arg1,
);

typedef _dart_issetugid = int Function();

typedef _dart_mkdtemp = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> arg0,
);

typedef _dart_mknod = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  int arg1,
  int arg2,
);

typedef _dart_mkpath_np = int Function(
  ffi.Pointer<ffi.Int8> path,
  int omode,
);

typedef _dart_mkpathat_np = int Function(
  int dfd,
  ffi.Pointer<ffi.Int8> path,
  int omode,
);

typedef _dart_mkstemp = int Function(
  ffi.Pointer<ffi.Int8> arg0,
);

typedef _dart_mkstemps = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  int arg1,
);

typedef _dart_mktemp = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> arg0,
);

typedef _dart_mkostemp = int Function(
  ffi.Pointer<ffi.Int8> path,
  int oflags,
);

typedef _dart_mkostemps = int Function(
  ffi.Pointer<ffi.Int8> path,
  int slen,
  int oflags,
);

typedef _dart_mkstemp_dprotected_np = int Function(
  ffi.Pointer<ffi.Int8> path,
  int dpclass,
  int dpflags,
);

typedef _dart_mkdtempat_np = ffi.Pointer<ffi.Int8> Function(
  int dfd,
  ffi.Pointer<ffi.Int8> path,
);

typedef _dart_mkstempsat_np = int Function(
  int dfd,
  ffi.Pointer<ffi.Int8> path,
  int slen,
);

typedef _dart_mkostempsat_np = int Function(
  int dfd,
  ffi.Pointer<ffi.Int8> path,
  int slen,
  int oflags,
);

typedef _dart_nfssvc = int Function(
  int arg0,
  ffi.Pointer<ffi.Void> arg1,
);

typedef _dart_profil = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  int arg1,
  int arg2,
  int arg3,
);

typedef _dart_pthread_setugid_np = int Function(
  int arg0,
  int arg1,
);

typedef _dart_pthread_getugid_np = int Function(
  ffi.Pointer<ffi.Uint32> arg0,
  ffi.Pointer<ffi.Uint32> arg1,
);

typedef _dart_reboot = int Function(
  int arg0,
);

typedef _dart_revoke = int Function(
  ffi.Pointer<ffi.Int8> arg0,
);

typedef _dart_rcmd = int Function(
  ffi.Pointer<ffi.Pointer<ffi.Int8>> arg0,
  int arg1,
  ffi.Pointer<ffi.Int8> arg2,
  ffi.Pointer<ffi.Int8> arg3,
  ffi.Pointer<ffi.Int8> arg4,
  ffi.Pointer<ffi.Int32> arg5,
);

typedef _dart_rcmd_af = int Function(
  ffi.Pointer<ffi.Pointer<ffi.Int8>> arg0,
  int arg1,
  ffi.Pointer<ffi.Int8> arg2,
  ffi.Pointer<ffi.Int8> arg3,
  ffi.Pointer<ffi.Int8> arg4,
  ffi.Pointer<ffi.Int32> arg5,
  int arg6,
);

typedef _dart_rresvport = int Function(
  ffi.Pointer<ffi.Int32> arg0,
);

typedef _dart_rresvport_af = int Function(
  ffi.Pointer<ffi.Int32> arg0,
  int arg1,
);

typedef _dart_iruserok = int Function(
  int arg0,
  int arg1,
  ffi.Pointer<ffi.Int8> arg2,
  ffi.Pointer<ffi.Int8> arg3,
);

typedef _dart_iruserok_sa = int Function(
  ffi.Pointer<ffi.Void> arg0,
  int arg1,
  int arg2,
  ffi.Pointer<ffi.Int8> arg3,
  ffi.Pointer<ffi.Int8> arg4,
);

typedef _dart_ruserok = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  int arg1,
  ffi.Pointer<ffi.Int8> arg2,
  ffi.Pointer<ffi.Int8> arg3,
);

typedef _dart_setdomainname = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  int arg1,
);

typedef _dart_setgroups = int Function(
  int arg0,
  ffi.Pointer<ffi.Uint32> arg1,
);

typedef _dart_sethostid = void Function(
  int arg0,
);

typedef _dart_sethostname = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  int arg1,
);

typedef _dart_setkey = void Function(
  ffi.Pointer<ffi.Int8> arg0,
);

typedef _dart_setlogin = int Function(
  ffi.Pointer<ffi.Int8> arg0,
);

typedef _dart_setmode = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Int8> arg0,
);

typedef _dart_setrgid = int Function(
  int arg0,
);

typedef _dart_setruid = int Function(
  int arg0,
);

typedef _dart_setsgroups_np = int Function(
  int arg0,
  ffi.Pointer<ffi.Uint8> arg1,
);

typedef _dart_setusershell = void Function();

typedef _dart_setwgroups_np = int Function(
  int arg0,
  ffi.Pointer<ffi.Uint8> arg1,
);

typedef _dart_strtofflags = int Function(
  ffi.Pointer<ffi.Pointer<ffi.Int8>> arg0,
  ffi.Pointer<ffi.Uint64> arg1,
  ffi.Pointer<ffi.Uint64> arg2,
);

typedef _dart_swapon = int Function(
  ffi.Pointer<ffi.Int8> arg0,
);

typedef _dart_ttyslot = int Function();

typedef _dart_undelete = int Function(
  ffi.Pointer<ffi.Int8> arg0,
);

typedef _dart_unwhiteout = int Function(
  ffi.Pointer<ffi.Int8> arg0,
);

typedef _dart_valloc = ffi.Pointer<ffi.Void> Function(
  int arg0,
);

typedef _dart_syscall = int Function(
  int arg0,
);

typedef _dart_getsubopt = int Function(
  ffi.Pointer<ffi.Pointer<ffi.Int8>> arg0,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> arg1,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> arg2,
);

typedef _dart_fgetattrlist = int Function(
  int arg0,
  ffi.Pointer<ffi.Void> arg1,
  ffi.Pointer<ffi.Void> arg2,
  int arg3,
  int arg4,
);

typedef _dart_fsetattrlist = int Function(
  int arg0,
  ffi.Pointer<ffi.Void> arg1,
  ffi.Pointer<ffi.Void> arg2,
  int arg3,
  int arg4,
);

typedef _dart_getattrlist = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  ffi.Pointer<ffi.Void> arg1,
  ffi.Pointer<ffi.Void> arg2,
  int arg3,
  int arg4,
);

typedef _dart_setattrlist = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  ffi.Pointer<ffi.Void> arg1,
  ffi.Pointer<ffi.Void> arg2,
  int arg3,
  int arg4,
);

typedef _dart_exchangedata = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  ffi.Pointer<ffi.Int8> arg1,
  int arg2,
);

typedef _dart_getdirentriesattr = int Function(
  int arg0,
  ffi.Pointer<ffi.Void> arg1,
  ffi.Pointer<ffi.Void> arg2,
  int arg3,
  ffi.Pointer<ffi.Uint32> arg4,
  ffi.Pointer<ffi.Uint32> arg5,
  ffi.Pointer<ffi.Uint32> arg6,
  int arg7,
);

typedef _dart_searchfs = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  ffi.Pointer<fssearchblock> arg1,
  ffi.Pointer<ffi.Uint64> arg2,
  int arg3,
  int arg4,
  ffi.Pointer<searchstate> arg5,
);

typedef _dart_fsctl = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  int arg1,
  ffi.Pointer<ffi.Void> arg2,
  int arg3,
);

typedef _dart_ffsctl = int Function(
  int arg0,
  int arg1,
  ffi.Pointer<ffi.Void> arg2,
  int arg3,
);

typedef _dart_fsync_volume_np = int Function(
  int arg0,
  int arg1,
);

typedef _dart_sync_volume_np = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  int arg1,
);

typedef _dart_getpwuid = ffi.Pointer<passwd> Function(
  int arg0,
);

typedef _dart_getpwnam = ffi.Pointer<passwd> Function(
  ffi.Pointer<ffi.Int8> arg0,
);

typedef _dart_getpwuid_r = int Function(
  int arg0,
  ffi.Pointer<passwd> arg1,
  ffi.Pointer<ffi.Int8> arg2,
  int arg3,
  ffi.Pointer<ffi.Pointer<passwd>> arg4,
);

typedef _dart_getpwnam_r = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  ffi.Pointer<passwd> arg1,
  ffi.Pointer<ffi.Int8> arg2,
  int arg3,
  ffi.Pointer<ffi.Pointer<passwd>> arg4,
);

typedef _dart_getpwent = ffi.Pointer<passwd> Function();

typedef _dart_setpwent = void Function();

typedef _dart_endpwent = void Function();

typedef _dart_uuid_clear = void Function(
  ffi.Pointer<ffi.Uint8> uu,
);

typedef _dart_uuid_compare = int Function(
  ffi.Pointer<ffi.Uint8> uu1,
  ffi.Pointer<ffi.Uint8> uu2,
);

typedef _dart_uuid_copy = void Function(
  ffi.Pointer<ffi.Uint8> dst,
  ffi.Pointer<ffi.Uint8> src,
);

typedef _dart_uuid_generate = void Function(
  ffi.Pointer<ffi.Uint8> out,
);

typedef _dart_uuid_generate_random = void Function(
  ffi.Pointer<ffi.Uint8> out,
);

typedef _dart_uuid_generate_time = void Function(
  ffi.Pointer<ffi.Uint8> out,
);

typedef _dart_uuid_is_null = int Function(
  ffi.Pointer<ffi.Uint8> uu,
);

typedef _dart_uuid_parse = int Function(
  ffi.Pointer<ffi.Int8> in_1,
  ffi.Pointer<ffi.Uint8> uu,
);

typedef _dart_uuid_unparse = void Function(
  ffi.Pointer<ffi.Uint8> uu,
  ffi.Pointer<ffi.Int8> out,
);

typedef _dart_uuid_unparse_lower = void Function(
  ffi.Pointer<ffi.Uint8> uu,
  ffi.Pointer<ffi.Int8> out,
);

typedef _dart_uuid_unparse_upper = void Function(
  ffi.Pointer<ffi.Uint8> uu,
  ffi.Pointer<ffi.Int8> out,
);

typedef _dart_setpassent = int Function(
  int arg0,
);

typedef _dart_user_from_uid = ffi.Pointer<ffi.Int8> Function(
  int arg0,
  int arg1,
);

typedef _dart_getpwuuid = ffi.Pointer<passwd> Function(
  ffi.Pointer<ffi.Uint8> arg0,
);

typedef _dart_getpwuuid_r = int Function(
  ffi.Pointer<ffi.Uint8> arg0,
  ffi.Pointer<passwd> arg1,
  ffi.Pointer<ffi.Int8> arg2,
  int arg3,
  ffi.Pointer<ffi.Pointer<passwd>> arg4,
);

typedef _dart_getgrgid = ffi.Pointer<group> Function(
  int arg0,
);

typedef _dart_getgrnam = ffi.Pointer<group> Function(
  ffi.Pointer<ffi.Int8> arg0,
);

typedef _dart_getgrgid_r = int Function(
  int arg0,
  ffi.Pointer<group> arg1,
  ffi.Pointer<ffi.Int8> arg2,
  int arg3,
  ffi.Pointer<ffi.Pointer<group>> arg4,
);

typedef _dart_getgrnam_r = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  ffi.Pointer<group> arg1,
  ffi.Pointer<ffi.Int8> arg2,
  int arg3,
  ffi.Pointer<ffi.Pointer<group>> arg4,
);

typedef _dart_getgrent = ffi.Pointer<group> Function();

typedef _dart_setgrent = void Function();

typedef _dart_endgrent = void Function();

typedef _dart_group_from_gid = ffi.Pointer<ffi.Int8> Function(
  int arg0,
  int arg1,
);

typedef _dart_getgruuid = ffi.Pointer<group> Function(
  ffi.Pointer<ffi.Uint8> arg0,
);

typedef _dart_getgruuid_r = int Function(
  ffi.Pointer<ffi.Uint8> arg0,
  ffi.Pointer<group> arg1,
  ffi.Pointer<ffi.Int8> arg2,
  int arg3,
  ffi.Pointer<ffi.Pointer<group>> arg4,
);

typedef _dart_setgrfile = void Function(
  ffi.Pointer<ffi.Int8> arg0,
);

typedef _dart_setgroupent = int Function(
  int arg0,
);

typedef _dart___error = ffi.Pointer<ffi.Int32> Function();

typedef _dart_chmod = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  int arg1,
);

typedef _dart_fchmod = int Function(
  int arg0,
  int arg1,
);

typedef _dart_fstat = int Function(
  int arg0,
  ffi.Pointer<stat> arg1,
);

typedef _dart_lstat = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  ffi.Pointer<stat> arg1,
);

typedef _dart_mkdir = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  int arg1,
);

typedef _dart_mkfifo = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  int arg1,
);

typedef _dart_stat_1 = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  ffi.Pointer<stat> arg1,
);

typedef _dart_umask = int Function(
  int arg0,
);

typedef _dart_fchmodat = int Function(
  int arg0,
  ffi.Pointer<ffi.Int8> arg1,
  int arg2,
  int arg3,
);

typedef _dart_fstatat = int Function(
  int arg0,
  ffi.Pointer<ffi.Int8> arg1,
  ffi.Pointer<stat> arg2,
  int arg3,
);

typedef _dart_mkdirat = int Function(
  int arg0,
  ffi.Pointer<ffi.Int8> arg1,
  int arg2,
);

typedef _dart_futimens = int Function(
  int __fd,
  ffi.Pointer<timespec> __times,
);

typedef _dart_utimensat = int Function(
  int __fd,
  ffi.Pointer<ffi.Int8> __path,
  ffi.Pointer<timespec> __times,
  int __flag,
);

typedef _dart_chflags = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  int arg1,
);

typedef _dart_chmodx_np = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  ffi.Pointer<filesec> arg1,
);

typedef _dart_fchflags = int Function(
  int arg0,
  int arg1,
);

typedef _dart_fchmodx_np = int Function(
  int arg0,
  ffi.Pointer<filesec> arg1,
);

typedef _dart_fstatx_np = int Function(
  int arg0,
  ffi.Pointer<stat> arg1,
  ffi.Pointer<filesec> arg2,
);

typedef _dart_lchflags = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  int arg1,
);

typedef _dart_lchmod = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  int arg1,
);

typedef _dart_lstatx_np = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  ffi.Pointer<stat> arg1,
  ffi.Pointer<filesec> arg2,
);

typedef _dart_mkdirx_np = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  ffi.Pointer<filesec> arg1,
);

typedef _dart_mkfifox_np = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  ffi.Pointer<filesec> arg1,
);

typedef _dart_statx_np = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  ffi.Pointer<stat> arg1,
  ffi.Pointer<filesec> arg2,
);

typedef _dart_umaskx_np = int Function(
  ffi.Pointer<filesec> arg0,
);

typedef _dart_fstatx64_np = int Function(
  int arg0,
  ffi.Pointer<stat64> arg1,
  ffi.Pointer<filesec> arg2,
);

typedef _dart_lstatx64_np = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  ffi.Pointer<stat64> arg1,
  ffi.Pointer<filesec> arg2,
);

typedef _dart_statx64_np = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  ffi.Pointer<stat64> arg1,
  ffi.Pointer<filesec> arg2,
);

typedef _dart_fstat64 = int Function(
  int arg0,
  ffi.Pointer<stat64> arg1,
);

typedef _dart_lstat64 = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  ffi.Pointer<stat64> arg1,
);

typedef _dart_stat64_1 = int Function(
  ffi.Pointer<ffi.Int8> arg0,
  ffi.Pointer<stat64> arg1,
);
