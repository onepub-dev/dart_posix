/*
 * Copyright (c) 2025 S. Brett Sutton 2022+
 *
 * This software is licensed under the MIT License.
 * SPDX-License-Identifier: MIT
 */

import 'dart:ffi' as ffi;

import '../libc.dart';
import '../util/conversions.dart';

/// Exposes a collection of C string and memory functions such
/// as 'strcpy'.
///
/// Copy N bytes of SRC to DEST.
ffi.Pointer<ffi.Void> memcpy(
  ffi.Pointer<ffi.Void> __dest,
  ffi.Pointer<ffi.Void> __src,
  int __n,
) {
  _memcpy ??= Libc().dylib.lookupFunction<
      ffi.Pointer<ffi.Void> Function(
          ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Uint64),
      _dart_memcpy>('memcpy');
  return _memcpy!(
    __dest,
    __src,
    __n,
  );
}

_dart_memcpy? _memcpy;

/// Copy N bytes of SRC to DEST, guaranteeing
/// correct behavior for overlapping strings.
ffi.Pointer<ffi.Void> memmove(
  ffi.Pointer<ffi.Void> __dest,
  ffi.Pointer<ffi.Void> __src,
  int __n,
) {
  _memmove ??= Libc().dylib.lookupFunction<
      ffi.Pointer<ffi.Void> Function(
          ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Uint64),
      _dart_memmove>('memmove');
  return _memmove!(
    __dest,
    __src,
    __n,
  );
}

_dart_memmove? _memmove;

ffi.Pointer<ffi.Void> memccpy(
  ffi.Pointer<ffi.Void> __dest,
  ffi.Pointer<ffi.Void> __src,
  int __c,
  int __n,
) {
  _memccpy ??= Libc().dylib.lookupFunction<
      ffi.Pointer<ffi.Void> Function(
          ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Int32, ffi.Uint64),
      _dart_memccpy>('memccpy');
  return _memccpy!(
    __dest,
    __src,
    __c,
    __n,
  );
}

_dart_memccpy? _memccpy;

/// Set N bytes of S to C.
ffi.Pointer<ffi.Void> memset(
  ffi.Pointer<ffi.Void> __s,
  int __c,
  int __n,
) {
  _memset ??= Libc().dylib.lookupFunction<
      ffi.Pointer<ffi.Void> Function(
          ffi.Pointer<ffi.Void>, ffi.Int32, ffi.Uint64),
      _dart_memset>('memset');
  return _memset!(
    __s,
    __c,
    __n,
  );
}

_dart_memset? _memset;

/// Compare N bytes of S1 and S2.
int memcmp(
  ffi.Pointer<ffi.Void> __s1,
  ffi.Pointer<ffi.Void> __s2,
  int __n,
) {
  _memcmp ??= Libc().dylib.lookupFunction<
      ffi.Int32 Function(
          ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Uint64),
      _dart_memcmp>('memcmp');
  return _memcmp!(
    __s1,
    __s2,
    __n,
  );
}

_dart_memcmp? _memcmp;

ffi.Pointer<ffi.Void> memchr(
  ffi.Pointer<ffi.Void> __s,
  int __c,
  int __n,
) {
  _memchr ??= Libc().dylib.lookupFunction<
      ffi.Pointer<ffi.Void> Function(
          ffi.Pointer<ffi.Void>, ffi.Int32, ffi.Uint64),
      _dart_memchr>('memchr');
  return _memchr!(
    __s,
    __c,
    __n,
  );
}

_dart_memchr? _memchr;

/// Copy SRC to DEST.
ffi.Pointer<ffi.Int8> strcpy(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
) {
  _strcpy ??= Libc().dylib.lookupFunction<
      ffi.Pointer<ffi.Int8> Function(
          ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>),
      _dart_strcpy>('strcpy');
  return _strcpy!(
    __dest,
    __src,
  );
}

_dart_strcpy? _strcpy;

/// Copy no more than N characters of SRC to DEST.
ffi.Pointer<ffi.Int8> strncpy(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
  int __n,
) {
  _strncpy ??= Libc().dylib.lookupFunction<
      ffi.Pointer<ffi.Int8> Function(
          ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>, ffi.Uint64),
      _dart_strncpy>('strncpy');
  return _strncpy!(
    __dest,
    __src,
    __n,
  );
}

_dart_strncpy? _strncpy;

/// Append SRC onto DEST.
ffi.Pointer<ffi.Int8> strcat(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
) {
  _strcat ??= Libc().dylib.lookupFunction<
      ffi.Pointer<ffi.Int8> Function(
          ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>),
      _dart_strcat>('strcat');
  return _strcat!(
    __dest,
    __src,
  );
}

_dart_strcat? _strcat;

/// Append no more than N characters from SRC onto DEST.
ffi.Pointer<ffi.Int8> strncat(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
  int __n,
) {
  _strncat ??= Libc().dylib.lookupFunction<
      ffi.Pointer<ffi.Int8> Function(
          ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>, ffi.Uint64),
      _dart_strncat>('strncat');
  return _strncat!(
    __dest,
    __src,
    __n,
  );
}

_dart_strncat? _strncat;

/// Compare S1 and S2.
int strcmp(
  ffi.Pointer<ffi.Int8> __s1,
  ffi.Pointer<ffi.Int8> __s2,
) {
  _strcmp ??= Libc().dylib.lookupFunction<
      ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>),
      _dart_strcmp>('strcmp');
  return _strcmp!(
    __s1,
    __s2,
  );
}

_dart_strcmp? _strcmp;

/// Compare N characters of S1 and S2.
int strncmp(
  ffi.Pointer<ffi.Int8> __s1,
  ffi.Pointer<ffi.Int8> __s2,
  int __n,
) {
  _strncmp ??= Libc().dylib.lookupFunction<
      ffi.Int32 Function(
          ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>, ffi.Uint64),
      _dart_strncmp>('strncmp');
  return _strncmp!(
    __s1,
    __s2,
    __n,
  );
}

_dart_strncmp? _strncmp;

/// Compare the collated forms of S1 and S2.
int strcoll(
  ffi.Pointer<ffi.Int8> __s1,
  ffi.Pointer<ffi.Int8> __s2,
) {
  _strcoll ??= Libc().dylib.lookupFunction<
      ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>),
      _dart_strcoll>('strcoll');
  return _strcoll!(
    __s1,
    __s2,
  );
}

_dart_strcoll? _strcoll;

/// Put a transformation of SRC into no more than N bytes of DEST.
int strxfrm(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
  int __n,
) {
  _strxfrm ??= Libc().dylib.lookupFunction<
      ffi.Uint64 Function(
          ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>, ffi.Uint64),
      _dart_strxfrm>('strxfrm');
  return _strxfrm!(
    __dest,
    __src,
    __n,
  );
}

_dart_strxfrm? _strxfrm;

/// Compare the collated forms of S1 and S2, using sorting rules from L.
// ignore: non_constant_identifier_names
int strcoll_l(
  ffi.Pointer<ffi.Int8> __s1,
  ffi.Pointer<ffi.Int8> __s2,
  ffi.Pointer<locale_struct> __l,
) {
  _strcoll_l ??= Libc().dylib.lookupFunction<
      ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>,
          ffi.Pointer<locale_struct>),
      _dart_strcoll_l>('strcoll_l');
  return _strcoll_l!(
    __s1,
    __s2,
    __l,
  );
}

// ignore: non_constant_identifier_names
_dart_strcoll_l? _strcoll_l;

/// Put a transformation of SRC into no more than N bytes of DEST,
/// using sorting rules from L.
// ignore: non_constant_identifier_names
int strxfrm_l(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
  int __n,
  ffi.Pointer<locale_struct> __l,
) {
  _strxfrm_l ??= Libc().dylib.lookupFunction<
      ffi.Uint64 Function(ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>,
          ffi.Uint64, ffi.Pointer<locale_struct>),
      _dart_strxfrm_l>('strxfrm_l');
  return _strxfrm_l!(
    __dest,
    __src,
    __n,
    __l,
  );
}

// ignore: non_constant_identifier_names
_dart_strxfrm_l? _strxfrm_l;

/// Duplicate S, returning an identical malloc'd string.
ffi.Pointer<ffi.Int8> strdup(
  ffi.Pointer<ffi.Int8> __s,
) {
  _strdup ??= Libc().dylib.lookupFunction<
      ffi.Pointer<ffi.Int8> Function(ffi.Pointer<ffi.Int8>),
      _dart_strdup>('strdup');
  return _strdup!(
    __s,
  );
}

_dart_strdup? _strdup;

ffi.Pointer<ffi.Int8> strndup(
  ffi.Pointer<ffi.Int8> __string,
  int __n,
) {
  _strndup ??= Libc().dylib.lookupFunction<
      ffi.Pointer<ffi.Int8> Function(ffi.Pointer<ffi.Int8>, ffi.Uint64),
      _dart_strndup>('strndup');
  return _strndup!(
    __string,
    __n,
  );
}

_dart_strndup? _strndup;

ffi.Pointer<ffi.Int8> strchr(
  ffi.Pointer<ffi.Int8> __s,
  int __c,
) {
  _strchr ??= Libc().dylib.lookupFunction<
      ffi.Pointer<ffi.Int8> Function(ffi.Pointer<ffi.Int8>, ffi.Int32),
      _dart_strchr>('strchr');
  return _strchr!(
    __s,
    __c,
  );
}

_dart_strchr? _strchr;

ffi.Pointer<ffi.Int8> strrchr(
  ffi.Pointer<ffi.Int8> __s,
  int __c,
) {
  _strrchr ??= Libc().dylib.lookupFunction<
      ffi.Pointer<ffi.Int8> Function(ffi.Pointer<ffi.Int8>, ffi.Int32),
      _dart_strrchr>('strrchr');
  return _strrchr!(
    __s,
    __c,
  );
}

_dart_strrchr? _strrchr;

/// Return the length of the initial segment of S which
/// consists entirely of characters not in REJECT.
int strcspn(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Pointer<ffi.Int8> __reject,
) {
  _strcspn ??= Libc().dylib.lookupFunction<
      ffi.Uint64 Function(ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>),
      _dart_strcspn>('strcspn');
  return _strcspn!(
    __s,
    __reject,
  );
}

_dart_strcspn? _strcspn;

/// Return the length of the initial segment of S which
/// consists entirely of characters in ACCEPT.
int strspn(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Pointer<ffi.Int8> __accept,
) {
  _strspn ??= Libc().dylib.lookupFunction<
      ffi.Uint64 Function(ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>),
      _dart_strspn>('strspn');
  return _strspn!(
    __s,
    __accept,
  );
}

_dart_strspn? _strspn;

ffi.Pointer<ffi.Int8> strpbrk(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Pointer<ffi.Int8> __accept,
) {
  _strpbrk ??= Libc().dylib.lookupFunction<
      ffi.Pointer<ffi.Int8> Function(
          ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>),
      _dart_strpbrk>('strpbrk');
  return _strpbrk!(
    __s,
    __accept,
  );
}

_dart_strpbrk? _strpbrk;

ffi.Pointer<ffi.Int8> strstr(
  ffi.Pointer<ffi.Int8> __haystack,
  ffi.Pointer<ffi.Int8> __needle,
) {
  _strstr ??= Libc().dylib.lookupFunction<
      ffi.Pointer<ffi.Int8> Function(
          ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>),
      _dart_strstr>('strstr');
  return _strstr!(
    __haystack,
    __needle,
  );
}

_dart_strstr? _strstr;

/// Divide S into tokens separated by characters in DELIM.
ffi.Pointer<ffi.Int8> strtok(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Pointer<ffi.Int8> __delim,
) {
  _strtok ??= Libc().dylib.lookupFunction<
      ffi.Pointer<ffi.Int8> Function(
          ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>),
      _dart_strtok>('strtok');
  return _strtok!(
    __s,
    __delim,
  );
}

_dart_strtok? _strtok;

/// Return the length of S.
int strlen(
  ffi.Pointer<ffi.Int8> __s,
) {
  _strlen ??= Libc()
      .dylib
      .lookupFunction<ffi.Uint64 Function(ffi.Pointer<ffi.Int8>), _dart_strlen>(
          'strlen');
  return _strlen!(
    __s,
  );
}

_dart_strlen? _strlen;

/// Find the length of STRING, but scan at most MAXLEN characters.
/// If no '\0' terminator is found in that many characters, return MAXLEN.
int strnlen(
  ffi.Pointer<ffi.Int8> __string,
  int __maxlen,
) {
  _strnlen ??= Libc().dylib.lookupFunction<
      ffi.Uint64 Function(ffi.Pointer<ffi.Int8>, ffi.Uint64),
      _dart_strnlen>('strnlen');
  return _strnlen!(
    __string,
    __maxlen,
  );
}

_dart_strnlen? _strnlen;

/// Return a string describing the meaning of the `errno' code in ERRNUM.
String strerror(
  int errnum,
) {
  _strerror ??= Libc().dylib.lookupFunction<
      ffi.Pointer<ffi.Void> Function(ffi.Int32), _dart_strerror>('strerror');
  final result = _strerror!(
    errnum,
  );

  return copyCBuffToDartString(result, free: false);
}

_dart_strerror? _strerror;

// ignore: non_constant_identifier_names
int strerror_r(
  int __errnum,
  ffi.Pointer<ffi.Int8> __buf,
  int __buflen,
) {
  _strerror_r ??= Libc().dylib.lookupFunction<
      ffi.Int32 Function(ffi.Int32, ffi.Pointer<ffi.Int8>, ffi.Uint64),
      _dart_strerror_r>('strerror_r');
  return _strerror_r!(
    __errnum,
    __buf,
    __buflen,
  );
}

// ignore: non_constant_identifier_names
_dart_strerror_r? _strerror_r;

/// Translate error number to string according to the locale L.
// ignore: non_constant_identifier_names
ffi.Pointer<ffi.Int8> strerror_l(
  int __errnum,
  ffi.Pointer<locale_struct> __l,
) {
  _strerror_l ??= Libc().dylib.lookupFunction<
      ffi.Pointer<ffi.Int8> Function(ffi.Int32, ffi.Pointer<locale_struct>),
      _dart_strerror_l>('strerror_l');
  return _strerror_l!(
    __errnum,
    __l,
  );
}

// ignore: non_constant_identifier_names
_dart_strerror_l? _strerror_l;

int bcmp(
  ffi.Pointer<ffi.Void> __s1,
  ffi.Pointer<ffi.Void> __s2,
  int __n,
) {
  _bcmp ??= Libc().dylib.lookupFunction<
      ffi.Int32 Function(
          ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Uint64),
      _dart_bcmp>('bcmp');
  return _bcmp!(
    __s1,
    __s2,
    __n,
  );
}

_dart_bcmp? _bcmp;

void bcopy(
  ffi.Pointer<ffi.Void> __src,
  ffi.Pointer<ffi.Void> __dest,
  int __n,
) {
  _bcopy ??= Libc().dylib.lookupFunction<
      ffi.Void Function(
          ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>, ffi.Uint64),
      _dart_bcopy>('bcopy');
  return _bcopy!(
    __src,
    __dest,
    __n,
  );
}

_dart_bcopy? _bcopy;

void bzero(
  ffi.Pointer<ffi.Void> __s,
  int __n,
) {
  _bzero ??= Libc().dylib.lookupFunction<
      ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Uint64),
      _dart_bzero>('bzero');
  return _bzero!(
    __s,
    __n,
  );
}

_dart_bzero? _bzero;

ffi.Pointer<ffi.Int8> index(
  ffi.Pointer<ffi.Int8> __s,
  int __c,
) {
  _index ??= Libc().dylib.lookupFunction<
      ffi.Pointer<ffi.Int8> Function(ffi.Pointer<ffi.Int8>, ffi.Int32),
      _dart_index>('index');
  return _index!(
    __s,
    __c,
  );
}

_dart_index? _index;

ffi.Pointer<ffi.Int8> rindex(
  ffi.Pointer<ffi.Int8> __s,
  int __c,
) {
  _rindex ??= Libc().dylib.lookupFunction<
      ffi.Pointer<ffi.Int8> Function(ffi.Pointer<ffi.Int8>, ffi.Int32),
      _dart_rindex>('rindex');
  return _rindex!(
    __s,
    __c,
  );
}

_dart_rindex? _rindex;

int ffs(
  int __i,
) {
  _ffs ??= Libc()
      .dylib
      .lookupFunction<ffi.Int32 Function(ffi.Int32), _dart_ffs>('ffs');
  return _ffs!(
    __i,
  );
}

_dart_ffs? _ffs;

int ffsl(
  int __l,
) {
  _ffsl ??= Libc()
      .dylib
      .lookupFunction<ffi.Int32 Function(ffi.Int64), _dart_ffsl>('ffsl');
  return _ffsl!(
    __l,
  );
}

_dart_ffsl? _ffsl;

int ffsll(
  int __ll,
) {
  _ffsll ??= Libc()
      .dylib
      .lookupFunction<ffi.Int32 Function(ffi.Int64), _dart_ffsll>('ffsll');
  return _ffsll!(
    __ll,
  );
}

_dart_ffsll? _ffsll;

int strcasecmp(
  ffi.Pointer<ffi.Int8> __s1,
  ffi.Pointer<ffi.Int8> __s2,
) {
  _strcasecmp ??= Libc().dylib.lookupFunction<
      ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>),
      _dart_strcasecmp>('strcasecmp');
  return _strcasecmp!(
    __s1,
    __s2,
  );
}

_dart_strcasecmp? _strcasecmp;

int strncasecmp(
  ffi.Pointer<ffi.Int8> __s1,
  ffi.Pointer<ffi.Int8> __s2,
  int __n,
) {
  _strncasecmp ??= Libc().dylib.lookupFunction<
      ffi.Int32 Function(
          ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>, ffi.Uint64),
      _dart_strncasecmp>('strncasecmp');
  return _strncasecmp!(
    __s1,
    __s2,
    __n,
  );
}

_dart_strncasecmp? _strncasecmp;

// ignore: non_constant_identifier_names
int strcasecmp_l(
  ffi.Pointer<ffi.Int8> __s1,
  ffi.Pointer<ffi.Int8> __s2,
  ffi.Pointer<locale_struct> __loc,
) {
  _strcasecmp_l ??= Libc().dylib.lookupFunction<
      ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>,
          ffi.Pointer<locale_struct>),
      _dart_strcasecmp_l>('strcasecmp_l');
  return _strcasecmp_l!(
    __s1,
    __s2,
    __loc,
  );
}

// ignore: non_constant_identifier_names
_dart_strcasecmp_l? _strcasecmp_l;

// ignore: non_constant_identifier_names
int strncasecmp_l(
  ffi.Pointer<ffi.Int8> __s1,
  ffi.Pointer<ffi.Int8> __s2,
  int __n,
  ffi.Pointer<locale_struct> __loc,
) {
  _strncasecmp_l ??= Libc().dylib.lookupFunction<
      ffi.Int32 Function(ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>,
          ffi.Uint64, ffi.Pointer<locale_struct>),
      _dart_strncasecmp_l>('strncasecmp_l');
  return _strncasecmp_l!(
    __s1,
    __s2,
    __n,
    __loc,
  );
}

// ignore: non_constant_identifier_names
_dart_strncasecmp_l? _strncasecmp_l;

/// Set N bytes of S to 0.  The compiler will not delete a call to this
/// function, even if S is dead after the call.
// ignore: non_constant_identifier_names
void explicit_bzero(
  ffi.Pointer<ffi.Void> __s,
  int __n,
) {
  _explicit_bzero ??= Libc().dylib.lookupFunction<
      ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Uint64),
      _dart_explicit_bzero>('explicit_bzero');
  return _explicit_bzero!(
    __s,
    __n,
  );
}

// ignore: non_constant_identifier_names
_dart_explicit_bzero? _explicit_bzero;

/// Return the next DELIM-delimited token from *STRINGP,
/// terminating it with a '\0', and update *STRINGP to point past it.
ffi.Pointer<ffi.Int8> strsep(
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __stringp,
  ffi.Pointer<ffi.Int8> __delim,
) {
  _strsep ??= Libc().dylib.lookupFunction<
      ffi.Pointer<ffi.Int8> Function(
          ffi.Pointer<ffi.Pointer<ffi.Int8>>, ffi.Pointer<ffi.Int8>),
      _dart_strsep>('strsep');
  return _strsep!(
    __stringp,
    __delim,
  );
}

_dart_strsep? _strsep;

/// Return a string describing the meaning of the signal number in SIG.
ffi.Pointer<ffi.Int8> strsignal(
  int __sig,
) {
  _strsignal ??= Libc().dylib.lookupFunction<
      ffi.Pointer<ffi.Int8> Function(ffi.Int32), _dart_strsignal>('strsignal');
  return _strsignal!(
    __sig,
  );
}

_dart_strsignal? _strsignal;

/// Copy SRC to DEST, returning the address of the terminating '\0' in DEST.
ffi.Pointer<ffi.Int8> stpcpy(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
) {
  _stpcpy ??= Libc().dylib.lookupFunction<
      ffi.Pointer<ffi.Int8> Function(
          ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>),
      _dart_stpcpy>('stpcpy');
  return _stpcpy!(
    __dest,
    __src,
  );
}

_dart_stpcpy? _stpcpy;

/// Copy no more than N characters of SRC to DEST, returning the address of
/// the last character written into DEST.
ffi.Pointer<ffi.Int8> stpncpy(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
  int __n,
) {
  _stpncpy ??= Libc().dylib.lookupFunction<
      ffi.Pointer<ffi.Int8> Function(
          ffi.Pointer<ffi.Int8>, ffi.Pointer<ffi.Int8>, ffi.Uint64),
      _dart_stpncpy>('stpncpy');
  return _stpncpy!(
    __dest,
    __src,
    __n,
  );
}

_dart_stpncpy? _stpncpy;

final class locale_data extends ffi.Opaque {}

final class locale_struct extends ffi.Struct {
  // ignore: non_constant_identifier_names
  external ffi.Pointer<locale_data> _unique___locales_item_0;
  // ignore: non_constant_identifier_names
  external ffi.Pointer<locale_data> _unique___locales_item_1;
  // ignore: non_constant_identifier_names
  external ffi.Pointer<locale_data> _unique___locales_item_2;
  // ignore: non_constant_identifier_names
  external ffi.Pointer<locale_data> _unique___locales_item_3;
  // ignore: non_constant_identifier_names
  external ffi.Pointer<locale_data> _unique___locales_item_4;
  // ignore: non_constant_identifier_names
  external ffi.Pointer<locale_data> _unique___locales_item_5;
  // ignore: non_constant_identifier_names
  external ffi.Pointer<locale_data> _unique___locales_item_6;
  // ignore: non_constant_identifier_names
  external ffi.Pointer<locale_data> _unique___locales_item_7;
  // ignore: non_constant_identifier_names
  external ffi.Pointer<locale_data> _unique___locales_item_8;
  // ignore: non_constant_identifier_names
  external ffi.Pointer<locale_data> _unique___locales_item_9;
  // ignore: non_constant_identifier_names
  external ffi.Pointer<locale_data> _unique___locales_item_10;
  // ignore: non_constant_identifier_names
  external ffi.Pointer<locale_data> _unique___locales_item_11;
  // ignore: non_constant_identifier_names
  external ffi.Pointer<locale_data> _unique___locales_item_12;

  /// Helper for array `__locales`.
  ArrayHelper___locale_struct___locales_level0 get locales =>
      ArrayHelper___locale_struct___locales_level0(this, [13], 0, 0);

  // ignore: non_constant_identifier_names
  external ffi.Pointer<ffi.Int8> _unique___names_item_0;
  // ignore: non_constant_identifier_names
  external ffi.Pointer<ffi.Int8> _unique___names_item_1;
  // ignore: non_constant_identifier_names
  external ffi.Pointer<ffi.Int8> _unique___names_item_2;
  // ignore: non_constant_identifier_names
  external ffi.Pointer<ffi.Int8> _unique___names_item_3;
  // ignore: non_constant_identifier_names
  external ffi.Pointer<ffi.Int8> _unique___names_item_4;
  // ignore: non_constant_identifier_names
  external ffi.Pointer<ffi.Int8> _unique___names_item_5;
  // ignore: non_constant_identifier_names
  external ffi.Pointer<ffi.Int8> _unique___names_item_6;
  // ignore: non_constant_identifier_names
  external ffi.Pointer<ffi.Int8> _unique___names_item_7;
  // ignore: non_constant_identifier_names
  external ffi.Pointer<ffi.Int8> _unique___names_item_8;
  // ignore: non_constant_identifier_names
  external ffi.Pointer<ffi.Int8> _unique___names_item_9;
  // ignore: non_constant_identifier_names
  external ffi.Pointer<ffi.Int8> _unique___names_item_10;
  // ignore: non_constant_identifier_names
  external ffi.Pointer<ffi.Int8> _unique___names_item_11;
  // ignore: non_constant_identifier_names
  external ffi.Pointer<ffi.Int8> _unique___names_item_12;

  /// Helper for array `__names`.
  ArrayHelper___locale_struct___names_level0 get names =>
      ArrayHelper___locale_struct___names_level0(this, [13], 0, 0);
}

/// Helper for array `__locales` in struct `__locale_struct`.
class ArrayHelper___locale_struct___locales_level0 {
  ArrayHelper___locale_struct___locales_level0(
      this._struct, this.dimensions, this.level, this._absoluteIndex);
  final locale_struct _struct;
  final List<int> dimensions;
  final int level;
  final int _absoluteIndex;
  int get length => dimensions[level];
  void _checkBounds(int index) {
    if (index >= length || index < 0) {
      throw RangeError(
          'Dimension $level: index not in range 0..$length exclusive.');
    }
  }

  ffi.Pointer<locale_data> operator [](int index) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        return _struct._unique___locales_item_0;
      case 1:
        return _struct._unique___locales_item_1;
      case 2:
        return _struct._unique___locales_item_2;
      case 3:
        return _struct._unique___locales_item_3;
      case 4:
        return _struct._unique___locales_item_4;
      case 5:
        return _struct._unique___locales_item_5;
      case 6:
        return _struct._unique___locales_item_6;
      case 7:
        return _struct._unique___locales_item_7;
      case 8:
        return _struct._unique___locales_item_8;
      case 9:
        return _struct._unique___locales_item_9;
      case 10:
        return _struct._unique___locales_item_10;
      case 11:
        return _struct._unique___locales_item_11;
      case 12:
        return _struct._unique___locales_item_12;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }

  void operator []=(int index, ffi.Pointer<locale_data> value) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        _struct._unique___locales_item_0 = value;
      case 1:
        _struct._unique___locales_item_1 = value;
      case 2:
        _struct._unique___locales_item_2 = value;
      case 3:
        _struct._unique___locales_item_3 = value;
      case 4:
        _struct._unique___locales_item_4 = value;
      case 5:
        _struct._unique___locales_item_5 = value;
      case 6:
        _struct._unique___locales_item_6 = value;
      case 7:
        _struct._unique___locales_item_7 = value;
      case 8:
        _struct._unique___locales_item_8 = value;
      case 9:
        _struct._unique___locales_item_9 = value;
      case 10:
        _struct._unique___locales_item_10 = value;
      case 11:
        _struct._unique___locales_item_11 = value;
      case 12:
        _struct._unique___locales_item_12 = value;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }
}

/// Helper for array `__names` in struct `__locale_struct`.
class ArrayHelper___locale_struct___names_level0 {
  ArrayHelper___locale_struct___names_level0(
      this._struct, this.dimensions, this.level, this._absoluteIndex);
  final locale_struct _struct;
  final List<int> dimensions;
  final int level;
  final int _absoluteIndex;
  int get length => dimensions[level];
  void _checkBounds(int index) {
    if (index >= length || index < 0) {
      throw RangeError(
          'Dimension $level: index not in range 0..$length exclusive.');
    }
  }

  ffi.Pointer<ffi.Int8> operator [](int index) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        return _struct._unique___names_item_0;
      case 1:
        return _struct._unique___names_item_1;
      case 2:
        return _struct._unique___names_item_2;
      case 3:
        return _struct._unique___names_item_3;
      case 4:
        return _struct._unique___names_item_4;
      case 5:
        return _struct._unique___names_item_5;
      case 6:
        return _struct._unique___names_item_6;
      case 7:
        return _struct._unique___names_item_7;
      case 8:
        return _struct._unique___names_item_8;
      case 9:
        return _struct._unique___names_item_9;
      case 10:
        return _struct._unique___names_item_10;
      case 11:
        return _struct._unique___names_item_11;
      case 12:
        return _struct._unique___names_item_12;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }

  void operator []=(int index, ffi.Pointer<ffi.Int8> value) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        _struct._unique___names_item_0 = value;
      case 1:
        _struct._unique___names_item_1 = value;
      case 2:
        _struct._unique___names_item_2 = value;
      case 3:
        _struct._unique___names_item_3 = value;
      case 4:
        _struct._unique___names_item_4 = value;
      case 5:
        _struct._unique___names_item_5 = value;
      case 6:
        _struct._unique___names_item_6 = value;
      case 7:
        _struct._unique___names_item_7 = value;
      case 8:
        _struct._unique___names_item_8 = value;
      case 9:
        _struct._unique___names_item_9 = value;
      case 10:
        _struct._unique___names_item_10 = value;
      case 11:
        _struct._unique___names_item_11 = value;
      case 12:
        _struct._unique___names_item_12 = value;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }
}

typedef _dart_memcpy = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> __dest,
  ffi.Pointer<ffi.Void> __src,
  int __n,
);

typedef _dart_memmove = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> __dest,
  ffi.Pointer<ffi.Void> __src,
  int __n,
);

typedef _dart_memccpy = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> __dest,
  ffi.Pointer<ffi.Void> __src,
  int __c,
  int __n,
);

typedef _dart_memset = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> __s,
  int __c,
  int __n,
);

typedef _dart_memcmp = int Function(
  ffi.Pointer<ffi.Void> __s1,
  ffi.Pointer<ffi.Void> __s2,
  int __n,
);

typedef _dart_memchr = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> __s,
  int __c,
  int __n,
);

typedef _dart_strcpy = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
);

typedef _dart_strncpy = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
  int __n,
);

typedef _dart_strcat = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
);

typedef _dart_strncat = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
  int __n,
);

typedef _dart_strcmp = int Function(
  ffi.Pointer<ffi.Int8> __s1,
  ffi.Pointer<ffi.Int8> __s2,
);

typedef _dart_strncmp = int Function(
  ffi.Pointer<ffi.Int8> __s1,
  ffi.Pointer<ffi.Int8> __s2,
  int __n,
);

typedef _dart_strcoll = int Function(
  ffi.Pointer<ffi.Int8> __s1,
  ffi.Pointer<ffi.Int8> __s2,
);

typedef _dart_strxfrm = int Function(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
  int __n,
);

typedef _dart_strcoll_l = int Function(
  ffi.Pointer<ffi.Int8> __s1,
  ffi.Pointer<ffi.Int8> __s2,
  ffi.Pointer<locale_struct> __l,
);

typedef _dart_strxfrm_l = int Function(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
  int __n,
  ffi.Pointer<locale_struct> __l,
);

typedef _dart_strdup = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
);

typedef _dart_strndup = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __string,
  int __n,
);

typedef _dart_strchr = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
  int __c,
);

typedef _dart_strrchr = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
  int __c,
);

typedef _dart_strcspn = int Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Pointer<ffi.Int8> __reject,
);

typedef _dart_strspn = int Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Pointer<ffi.Int8> __accept,
);

typedef _dart_strpbrk = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Pointer<ffi.Int8> __accept,
);

typedef _dart_strstr = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __haystack,
  ffi.Pointer<ffi.Int8> __needle,
);

typedef _dart_strtok = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Pointer<ffi.Int8> __delim,
);

typedef _dart_strlen = int Function(
  ffi.Pointer<ffi.Int8> __s,
);

typedef _dart_strnlen = int Function(
  ffi.Pointer<ffi.Int8> __string,
  int __maxlen,
);

typedef _dart_strerror = ffi.Pointer<ffi.Void> Function(
  int __errnum,
);

typedef _dart_strerror_r = int Function(
  int __errnum,
  ffi.Pointer<ffi.Int8> __buf,
  int __buflen,
);

typedef _dart_strerror_l = ffi.Pointer<ffi.Int8> Function(
  int __errnum,
  ffi.Pointer<locale_struct> __l,
);

typedef _dart_bcmp = int Function(
  ffi.Pointer<ffi.Void> __s1,
  ffi.Pointer<ffi.Void> __s2,
  int __n,
);

typedef _dart_bcopy = void Function(
  ffi.Pointer<ffi.Void> __src,
  ffi.Pointer<ffi.Void> __dest,
  int __n,
);

typedef _dart_bzero = void Function(
  ffi.Pointer<ffi.Void> __s,
  int __n,
);

typedef _dart_index = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
  int __c,
);

typedef _dart_rindex = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
  int __c,
);

typedef _dart_ffs = int Function(
  int __i,
);

typedef _dart_ffsl = int Function(
  int __l,
);

typedef _dart_ffsll = int Function(
  int __ll,
);

typedef _dart_strcasecmp = int Function(
  ffi.Pointer<ffi.Int8> __s1,
  ffi.Pointer<ffi.Int8> __s2,
);

typedef _dart_strncasecmp = int Function(
  ffi.Pointer<ffi.Int8> __s1,
  ffi.Pointer<ffi.Int8> __s2,
  int __n,
);

typedef _dart_strcasecmp_l = int Function(
  ffi.Pointer<ffi.Int8> __s1,
  ffi.Pointer<ffi.Int8> __s2,
  ffi.Pointer<locale_struct> __loc,
);

typedef _dart_strncasecmp_l = int Function(
  ffi.Pointer<ffi.Int8> __s1,
  ffi.Pointer<ffi.Int8> __s2,
  int __n,
  ffi.Pointer<locale_struct> __loc,
);

typedef _dart_explicit_bzero = void Function(
  ffi.Pointer<ffi.Void> __s,
  int __n,
);

typedef _dart_strsep = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __stringp,
  ffi.Pointer<ffi.Int8> __delim,
);

typedef _dart_strsignal = ffi.Pointer<ffi.Int8> Function(
  int __sig,
);

typedef _dart_stpcpy = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
);

typedef _dart_stpncpy = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
  int __n,
);
