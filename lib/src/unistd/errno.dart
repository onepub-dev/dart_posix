/*
 * Copyright (c) 2025 S. Brett Sutton 2022+
 *
 * This software is licensed under the MIT License.
 * SPDX-License-Identifier: MIT
 */

// ignore_for_file: constant_identifier_names

import 'dart:ffi' as ffi;
import 'dart:io';

import '../libc.dart';

/// The error code set by various library functions.
int errno() => _func().value;

/// Clear the errno by setting it to 0.
/// You should do this before calling a function that
/// may set errno.
void clearErrno() => setErrno(0);

void setErrno(int error) => _func().value = error;

const int EPERM = 1;

const int ENOENT = 2;

const int ESRCH = 3;

const int EINTR = 4;

const int EIO = 5;

const int ENXIO = 6;

const int E2BIG = 7;

const int ENOEXEC = 8;

const int EBADF = 9;

const int ECHILD = 10;

const int EAGAIN = 11;

const int ENOMEM = 12;

const int EACCES = 13;

const int EFAULT = 14;

const int ENOTBLK = 15;

const int EBUSY = 16;

const int EEXIST = 17;

const int EXDEV = 18;

const int ENODEV = 19;

const int ENOTDIR = 20;

const int EISDIR = 21;

const int EINVAL = 22;

const int ENFILE = 23;

const int EMFILE = 24;

const int ENOTTY = 25;

const int ETXTBSY = 26;

const int EFBIG = 27;

const int ENOSPC = 28;

const int ESPIPE = 29;

const int EROFS = 30;

const int EMLINK = 31;

const int EPIPE = 32;

const int EDOM = 33;

const int ERANGE = 34;

const int EDEADLK = 35;

const int ENAMETOOLONG = 36;

const int ENOLCK = 37;

const int ENOSYS = 38;

const int ENOTEMPTY = 39;

const int ELOOP = 40;

const int EWOULDBLOCK = 11;

const int ENOMSG = 42;

const int EIDRM = 43;

const int ECHRNG = 44;

const int EL2NSYNC = 45;

const int EL3HLT = 46;

const int EL3RST = 47;

const int ELNRNG = 48;

const int EUNATCH = 49;

const int ENOCSI = 50;

const int EL2HLT = 51;

const int EBADE = 52;

const int EBADR = 53;

const int EXFULL = 54;

const int ENOANO = 55;

const int EBADRQC = 56;

const int EBADSLT = 57;

const int EDEADLOCK = 35;

const int EBFONT = 59;

const int ENOSTR = 60;

const int ENODATA = 61;

const int ETIME = 62;

const int ENOSR = 63;

const int ENONET = 64;

const int ENOPKG = 65;

const int EREMOTE = 66;

const int ENOLINK = 67;

const int EADV = 68;

const int ESRMNT = 69;

const int ECOMM = 70;

const int EPROTO = 71;

const int EMULTIHOP = 72;

const int EDOTDOT = 73;

const int EBADMSG = 74;

const int EOVERFLOW = 75;

const int ENOTUNIQ = 76;

const int EBADFD = 77;

const int EREMCHG = 78;

const int ELIBACC = 79;

const int ELIBBAD = 80;

const int ELIBSCN = 81;

const int ELIBMAX = 82;

const int ELIBEXEC = 83;

const int EILSEQ = 84;

const int ERESTART = 85;

const int ESTRPIPE = 86;

const int EUSERS = 87;

const int ENOTSOCK = 88;

const int EDESTADDRREQ = 89;

const int EMSGSIZE = 90;

const int EPROTOTYPE = 91;

const int ENOPROTOOPT = 92;

const int EPROTONOSUPPORT = 93;

const int ESOCKTNOSUPPORT = 94;

const int EOPNOTSUPP = 95;

const int EPFNOSUPPORT = 96;

const int EAFNOSUPPORT = 97;

const int EADDRINUSE = 98;

const int EADDRNOTAVAIL = 99;

const int ENETDOWN = 100;

const int ENETUNREACH = 101;

const int ENETRESET = 102;

const int ECONNABORTED = 103;

const int ECONNRESET = 104;

const int ENOBUFS = 105;

const int EISCONN = 106;

const int ENOTCONN = 107;

const int ESHUTDOWN = 108;

const int ETOOMANYREFS = 109;

const int ETIMEDOUT = 110;

const int ECONNREFUSED = 111;

const int EHOSTDOWN = 112;

const int EHOSTUNREACH = 113;

const int EALREADY = 114;

const int EINPROGRESS = 115;

const int ESTALE = 116;

const int EUCLEAN = 117;

const int ENOTNAM = 118;

const int ENAVAIL = 119;

const int EISNAM = 120;

const int EREMOTEIO = 121;

const int EDQUOT = 122;

const int ENOMEDIUM = 123;

const int EMEDIUMTYPE = 124;

const int ECANCELED = 125;

const int ENOKEY = 126;

const int EKEYEXPIRED = 127;

const int EKEYREVOKED = 128;

const int EKEYREJECTED = 129;

const int EOWNERDEAD = 130;

const int ENOTRECOVERABLE = 131;

const int ERFKILL = 132;

const int EHWPOISON = 133;

const int ENOTSUP = 95;

final _name = Platform.isMacOS ? '__error' : '__errno_location';

final _func = Libc().dylib.lookupFunction<ffi.Pointer<ffi.Int32> Function(),
    ffi.Pointer<ffi.Int32> Function()>(_name);
