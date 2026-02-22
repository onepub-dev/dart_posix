// ignore: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names, constant_identifier_names, camel_case_types

part of 'unistd.dart';

const int R_OK = 4;

const int W_OK = 2;

const int X_OK = 1;

const int F_OK = 0;

const int SEEK_SET = 0;

const int SEEK_CUR = 1;

const int SEEK_END = 2;

const int L_SET = 0;

const int L_INCR = 1;

const int L_XTND = 2;

const int F_ULOCK = 0;

const int F_LOCK = 1;

const int F_TLOCK = 2;

const int F_TEST = 3;

const int PATH_MAX = 4096;

typedef _dart_access = int Function(
  ffi.Pointer<Utf8> name,
  int __type,
);

typedef _dart_faccessat = int Function(
  int fd,
  ffi.Pointer<Utf8> file,
  int __type,
  int flag,
);

typedef _dart_lseek = int Function(
  int fd,
  int offset,
  int __whence,
);

typedef _dart_close = int Function(
  int fd,
);

typedef _dart_read = int Function(
  int fd,
  ffi.Pointer<ffi.Int8> buf,
  int nbytes,
);

typedef _dart_write = int Function(
  int fd,
  ffi.Pointer<ffi.Int8> buf,
  int n,
);

typedef _dart_pread = int Function(
  int fd,
  ffi.Pointer<ffi.Int8> buf,
  int nbytes,
  int offset,
);

typedef _dart_pwrite = int Function(
  int fd,
  ffi.Pointer<ffi.Int8> buf,
  int n,
  int offset,
);

typedef _dart_pipe = int Function(
  ffi.Pointer<ffi.Int32> __pipedes,
);

typedef _dart_alarm = int Function(
  int seconds,
);

typedef _dart_sleep = int Function(
  int seconds,
);

typedef _dart_ualarm = int Function(
  int value,
  int interval,
);

typedef _dart_usleep = int Function(
  int useconds,
);

typedef _dart_pause = int Function();

typedef _dart_chown = int Function(
  ffi.Pointer<Utf8> file,
  int owner,
  int group,
);

typedef _dart_chmod = int Function(
  ffi.Pointer<Utf8> file,
  int permissions,
);

typedef _dart_fchown = int Function(
  int fd,
  int owner,
  int group,
);

typedef _dart_lchown = int Function(
  ffi.Pointer<Utf8> file,
  int owner,
  int group,
);

typedef _dart_fchownat = int Function(
  int fd,
  ffi.Pointer<Utf8> file,
  int owner,
  int group,
  int flag,
);

typedef _dart_chdir = int Function(
  ffi.Pointer<Utf8> __path,
);

typedef _dart_fchdir = int Function(
  int fd,
);

typedef _dart_getcwd = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __buf,
  int __size,
);

typedef _dart_getwd = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> buf,
);

typedef _dart_dup = int Function(
  int fd,
);

typedef _dart_dup2 = int Function(
  int fd,
  int fd2,
);

typedef _dart_execve = int Function(
  ffi.Pointer<Utf8> __path,
  ffi.Pointer<ffi.Pointer<Utf8>> __argv,
  ffi.Pointer<ffi.Pointer<Utf8>> __envp,
);

typedef _dart_fexecve = int Function(
  int fd,
  ffi.Pointer<ffi.Pointer<Utf8>> __argv,
  ffi.Pointer<ffi.Pointer<Utf8>> __envp,
);

typedef _dart_execv = int Function(
  ffi.Pointer<Utf8> __path,
  ffi.Pointer<ffi.Pointer<Utf8>> __argv,
);

typedef _dart_execle = int Function(
  ffi.Pointer<Utf8> __path,
  ffi.Pointer<Utf8> __arg,
);

typedef _dart_execl = int Function(
  ffi.Pointer<Utf8> __path,
  ffi.Pointer<Utf8> __arg,
);

typedef _dart_execvp = int Function(
  ffi.Pointer<Utf8> file,
  ffi.Pointer<ffi.Pointer<Utf8>> __argv,
);

typedef _dart_execlp = int Function(
  ffi.Pointer<Utf8> file,
  ffi.Pointer<Utf8> __arg,
);

typedef _dart_nice = int Function(
  int __inc,
);

typedef _dart__exit = void Function(
  int __status,
);

typedef _dart_pathconf = int Function(
  ffi.Pointer<Utf8> __path,
  int name,
);

typedef _dart_fpathconf = int Function(
  int fd,
  int name,
);

typedef _dart_sysconf = int Function(
  int name,
);

typedef _dart_confstr = int Function(
  int name,
  ffi.Pointer<ffi.Void> buf,
  int len,
);

typedef _dart_getpid = int Function();

typedef _dart_getppid = int Function();

typedef _dart_getpgrp = int Function();

typedef _dart_getpgid = int Function(
  int pid,
);

typedef _dart_setpgid = int Function(
  int pid,
  int __pgid,
);

typedef _dart_setpgrp = int Function();

typedef _dart_setsid = int Function();

typedef _dart_getsid = int Function(
  int pid,
);

typedef _dart_getuid = int Function();

typedef _dart_geteuid = int Function();

typedef _dart_getgid = int Function();

typedef _dart_getegid = int Function();

typedef _dart_setuid = int Function(
  int uid,
);

typedef _dart_setreuid = int Function(
  int ruid,
  int euid,
);

typedef _dart_seteuid = int Function(
  int uid,
);

typedef _dart_setgid = int Function(
  int gid,
);

typedef _dart_setregid = int Function(
  int rgid,
  int egid,
);

typedef _dart_setegid = int Function(
  int gid,
);

typedef _dart_fork = int Function();

typedef _dart_vfork = int Function();

typedef _dart_ttyname = ffi.Pointer<Utf8> Function(
  int fd,
);

typedef _dart_ttyname_r = int Function(
  int fd,
  ffi.Pointer<Utf8> buf,
  int buflen,
);

typedef _dart_isatty = int Function(
  int fd,
);

typedef _dart_ttyslot = int Function();

typedef _dart_link = int Function(
  ffi.Pointer<Utf8> __from,
  ffi.Pointer<Utf8> __to,
);

typedef _dart_linkat = int Function(
  int __fromfd,
  ffi.Pointer<Utf8> __from,
  int __tofd,
  ffi.Pointer<Utf8> __to,
  int flags,
);

typedef _dart_symlink = int Function(
  ffi.Pointer<Utf8> __from,
  ffi.Pointer<Utf8> __to,
);

typedef _dart_readlink = int Function(
  ffi.Pointer<Utf8> __path,
  ffi.Pointer<Utf8> buf,
  int len,
);

typedef _dart_symlinkat = int Function(
  ffi.Pointer<Utf8> __from,
  int __tofd,
  ffi.Pointer<Utf8> __to,
);

typedef _dart_readlinkat = int Function(
  int fd,
  ffi.Pointer<Utf8> __path,
  ffi.Pointer<Utf8> buf,
  int len,
);

typedef _dart_unlink = int Function(
  ffi.Pointer<Utf8> name,
);

typedef _dart_unlinkat = int Function(
  int fd,
  ffi.Pointer<Utf8> name,
  int flag,
);

typedef _dart_rmdir = int Function(
  ffi.Pointer<Utf8> __path,
);

typedef _dart_tcgetpgrp = int Function(
  int fd,
);

typedef _dart_tcsetpgrp = int Function(
  int fd,
  int pgrpId,
);

typedef _dart_getlogin = ffi.Pointer<Utf8> Function();

typedef _dart_getlogin_r = int Function(
  ffi.Pointer<Utf8> name,
  int nameLen,
);

typedef _dart_setlogin = int Function(
  ffi.Pointer<Utf8> name,
);

typedef _dart_getopt = int Function(
  int argc,
  ffi.Pointer<ffi.Pointer<Utf8>> ___argv,
  ffi.Pointer<Utf8> __shortopts,
);

typedef _dart_gethostname = int Function(
  ffi.Pointer<Utf8> name,
  int len,
);

typedef _dart_sethostname = int Function(
  ffi.Pointer<Utf8> name,
  int len,
);

typedef _dart_sethostid = int Function(
  int id,
);

typedef _dart_getdomainname = int Function(
  ffi.Pointer<Utf8> name,
  int len,
);

typedef _dart_setdomainname = int Function(
  ffi.Pointer<Utf8> name,
  int len,
);

typedef _dart_vhangup = int Function();

typedef _dart_revoke = int Function(
  ffi.Pointer<Utf8> file,
);

typedef _dart_profil = int Function(
  ffi.Pointer<ffi.Uint16> SampleBuffer,
  int size,
  int offset,
  int scale,
);

typedef _dart_acct = int Function(
  ffi.Pointer<Utf8> name,
);

typedef _dart_getusershell = ffi.Pointer<Utf8> Function();

typedef _dart_endusershell = void Function();

typedef _dart_setusershell = void Function();

typedef _dart_daemon = int Function(
  int nochdir,
  int noclose,
);

typedef _dart_chroot = int Function(
  ffi.Pointer<Utf8> __path,
);

typedef _dart_getpass = ffi.Pointer<Utf8> Function(
  ffi.Pointer<Utf8> __prompt,
);

typedef _dart_fsync = int Function(
  int fd,
);

typedef _dart_gethostid = int Function();

typedef _dart_sync_1 = void Function();

typedef _dart_getpagesize = int Function();

typedef _dart_getdtablesize = int Function();

typedef _dart_truncate = int Function(
  ffi.Pointer<Utf8> file,
  int length,
);

typedef _dart_ftruncate = int Function(
  int fd,
  int length,
);

typedef _dart_brk = int Function(
  ffi.Pointer<ffi.Void> addr,
);

typedef _dart_sbrk = ffi.Pointer<ffi.Void> Function(
  int delta,
);

typedef _dart_syscall = int Function(
  int __sysno,
);

typedef _dart_lockf = int Function(
  int fd,
  int cmd,
  int len,
);

typedef _dart_fdatasync = int Function(
  int fildes,
);

typedef _dart_crypt = ffi.Pointer<Utf8> Function(
  ffi.Pointer<Utf8> key,
  ffi.Pointer<Utf8> salt,
);

typedef _dart_getentropy = int Function(
  ffi.Pointer<ffi.Void> buffer,
  int length,
);
