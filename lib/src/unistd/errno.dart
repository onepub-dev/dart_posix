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

const EPERM = 1;

const ENOENT = 2;

const ESRCH = 3;

const EINTR = 4;

const EIO = 5;

const ENXIO = 6;

const E2BIG = 7;

const ENOEXEC = 8;

const EBADF = 9;

const ECHILD = 10;

const EAGAIN = 11;

const ENOMEM = 12;

const EACCES = 13;

const EFAULT = 14;

const ENOTBLK = 15;

const EBUSY = 16;

const EEXIST = 17;

const EXDEV = 18;

const ENODEV = 19;

const ENOTDIR = 20;

const EISDIR = 21;

const EINVAL = 22;

const ENFILE = 23;

const EMFILE = 24;

const ENOTTY = 25;

const ETXTBSY = 26;

const EFBIG = 27;

const ENOSPC = 28;

const ESPIPE = 29;

const EROFS = 30;

const EMLINK = 31;

const EPIPE = 32;

const EDOM = 33;

const ERANGE = 34;

const EDEADLK = 35;

const ENAMETOOLONG = 36;

const ENOLCK = 37;

const ENOSYS = 38;

const ENOTEMPTY = 39;

const ELOOP = 40;

const EWOULDBLOCK = 11;

const ENOMSG = 42;

const EIDRM = 43;

const ECHRNG = 44;

const EL2NSYNC = 45;

const EL3HLT = 46;

const EL3RST = 47;

const ELNRNG = 48;

const EUNATCH = 49;

const ENOCSI = 50;

const EL2HLT = 51;

const EBADE = 52;

const EBADR = 53;

const EXFULL = 54;

const ENOANO = 55;

const EBADRQC = 56;

const EBADSLT = 57;

const EDEADLOCK = 35;

const EBFONT = 59;

const ENOSTR = 60;

const ENODATA = 61;

const ETIME = 62;

const ENOSR = 63;

const ENONET = 64;

const ENOPKG = 65;

const EREMOTE = 66;

const ENOLINK = 67;

const EADV = 68;

const ESRMNT = 69;

const ECOMM = 70;

const EPROTO = 71;

const EMULTIHOP = 72;

const EDOTDOT = 73;

const EBADMSG = 74;

const EOVERFLOW = 75;

const ENOTUNIQ = 76;

const EBADFD = 77;

const EREMCHG = 78;

const ELIBACC = 79;

const ELIBBAD = 80;

const ELIBSCN = 81;

const ELIBMAX = 82;

const ELIBEXEC = 83;

const EILSEQ = 84;

const ERESTART = 85;

const ESTRPIPE = 86;

const EUSERS = 87;

const ENOTSOCK = 88;

const EDESTADDRREQ = 89;

const EMSGSIZE = 90;

const EPROTOTYPE = 91;

const ENOPROTOOPT = 92;

const EPROTONOSUPPORT = 93;

const ESOCKTNOSUPPORT = 94;

const EOPNOTSUPP = 95;

const EPFNOSUPPORT = 96;

const EAFNOSUPPORT = 97;

const EADDRINUSE = 98;

const EADDRNOTAVAIL = 99;

const ENETDOWN = 100;

const ENETUNREACH = 101;

const ENETRESET = 102;

const ECONNABORTED = 103;

const ECONNRESET = 104;

const ENOBUFS = 105;

const EISCONN = 106;

const ENOTCONN = 107;

const ESHUTDOWN = 108;

const ETOOMANYREFS = 109;

const ETIMEDOUT = 110;

const ECONNREFUSED = 111;

const EHOSTDOWN = 112;

const EHOSTUNREACH = 113;

const EALREADY = 114;

const EINPROGRESS = 115;

const ESTALE = 116;

const EUCLEAN = 117;

const ENOTNAM = 118;

const ENAVAIL = 119;

const EISNAM = 120;

const EREMOTEIO = 121;

const EDQUOT = 122;

const ENOMEDIUM = 123;

const EMEDIUMTYPE = 124;

const ECANCELED = 125;

const ENOKEY = 126;

const EKEYEXPIRED = 127;

const EKEYREVOKED = 128;

const EKEYREJECTED = 129;

const EOWNERDEAD = 130;

const ENOTRECOVERABLE = 131;

const ERFKILL = 132;

const EHWPOISON = 133;

const ENOTSUP = 95;

final _name = Platform.isMacOS ? '__error' : '__errno_location';

final ffi.Pointer<ffi.Int32> Function() _func = Libc().dylib.lookupFunction<ffi.Pointer<ffi.Int32> Function(),
    ffi.Pointer<ffi.Int32> Function()>(_name);
