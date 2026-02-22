part of 'string.dart';

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
