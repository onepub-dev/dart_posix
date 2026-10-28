part of 'string.dart';

typedef _dart_memcpy = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> dest,
  ffi.Pointer<ffi.Void> src,
  int n,
);

typedef _dart_memmove = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> dest,
  ffi.Pointer<ffi.Void> src,
  int n,
);

typedef _dart_memccpy = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> dest,
  ffi.Pointer<ffi.Void> src,
  int c,
  int n,
);

typedef _dart_memset = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> s,
  int c,
  int n,
);

typedef _dart_memcmp = int Function(
  ffi.Pointer<ffi.Void> s1,
  ffi.Pointer<ffi.Void> s2,
  int n,
);

typedef _dart_memchr = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> s,
  int c,
  int n,
);

typedef _dart_strcpy = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> dest,
  ffi.Pointer<ffi.Int8> src,
);

typedef _dart_strncpy = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> dest,
  ffi.Pointer<ffi.Int8> src,
  int n,
);

typedef _dart_strcat = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> dest,
  ffi.Pointer<ffi.Int8> src,
);

typedef _dart_strncat = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> dest,
  ffi.Pointer<ffi.Int8> src,
  int n,
);

typedef _dart_strcmp = int Function(
  ffi.Pointer<ffi.Int8> s1,
  ffi.Pointer<ffi.Int8> s2,
);

typedef _dart_strncmp = int Function(
  ffi.Pointer<ffi.Int8> s1,
  ffi.Pointer<ffi.Int8> s2,
  int n,
);

typedef _dart_strcoll = int Function(
  ffi.Pointer<ffi.Int8> s1,
  ffi.Pointer<ffi.Int8> s2,
);

typedef _dart_strxfrm = int Function(
  ffi.Pointer<ffi.Int8> dest,
  ffi.Pointer<ffi.Int8> src,
  int n,
);

typedef _dart_strcoll_l = int Function(
  ffi.Pointer<ffi.Int8> s1,
  ffi.Pointer<ffi.Int8> s2,
  ffi.Pointer<locale_struct> l,
);

typedef _dart_strxfrm_l = int Function(
  ffi.Pointer<ffi.Int8> dest,
  ffi.Pointer<ffi.Int8> src,
  int n,
  ffi.Pointer<locale_struct> l,
);

typedef _dart_strdup = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> s,
);

typedef _dart_strndup = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> string,
  int n,
);

typedef _dart_strchr = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> s,
  int c,
);

typedef _dart_strrchr = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> s,
  int c,
);

typedef _dart_strcspn = int Function(
  ffi.Pointer<ffi.Int8> s,
  ffi.Pointer<ffi.Int8> reject,
);

typedef _dart_strspn = int Function(
  ffi.Pointer<ffi.Int8> s,
  ffi.Pointer<ffi.Int8> accept,
);

typedef _dart_strpbrk = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> s,
  ffi.Pointer<ffi.Int8> accept,
);

typedef _dart_strstr = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> haystack,
  ffi.Pointer<ffi.Int8> needle,
);

typedef _dart_strtok = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> s,
  ffi.Pointer<ffi.Int8> delim,
);

typedef _dart_strlen = int Function(
  ffi.Pointer<ffi.Int8> s,
);

typedef _dart_strnlen = int Function(
  ffi.Pointer<ffi.Int8> string,
  int maxlen,
);

typedef _dart_strerror = ffi.Pointer<ffi.Void> Function(
  int errnum,
);

typedef _dart_strerror_r = int Function(
  int errnum,
  ffi.Pointer<ffi.Int8> buf,
  int buflen,
);

typedef _dart_strerror_l = ffi.Pointer<ffi.Int8> Function(
  int errnum,
  ffi.Pointer<locale_struct> l,
);

typedef _dart_bcmp = int Function(
  ffi.Pointer<ffi.Void> s1,
  ffi.Pointer<ffi.Void> s2,
  int n,
);

typedef _dart_bcopy = void Function(
  ffi.Pointer<ffi.Void> src,
  ffi.Pointer<ffi.Void> dest,
  int n,
);

typedef _dart_bzero = void Function(
  ffi.Pointer<ffi.Void> s,
  int n,
);

typedef _dart_index = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> s,
  int c,
);

typedef _dart_rindex = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> s,
  int c,
);

typedef _dart_ffs = int Function(
  int i,
);

typedef _dart_ffsl = int Function(
  int l,
);

typedef _dart_ffsll = int Function(
  int ll,
);

typedef _dart_strcasecmp = int Function(
  ffi.Pointer<ffi.Int8> s1,
  ffi.Pointer<ffi.Int8> s2,
);

typedef _dart_strncasecmp = int Function(
  ffi.Pointer<ffi.Int8> s1,
  ffi.Pointer<ffi.Int8> s2,
  int n,
);

typedef _dart_strcasecmp_l = int Function(
  ffi.Pointer<ffi.Int8> s1,
  ffi.Pointer<ffi.Int8> s2,
  ffi.Pointer<locale_struct> loc,
);

typedef _dart_strncasecmp_l = int Function(
  ffi.Pointer<ffi.Int8> s1,
  ffi.Pointer<ffi.Int8> s2,
  int n,
  ffi.Pointer<locale_struct> loc,
);

typedef _dart_explicit_bzero = void Function(
  ffi.Pointer<ffi.Void> s,
  int n,
);

typedef _dart_strsep = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Pointer<ffi.Int8>> stringp,
  ffi.Pointer<ffi.Int8> delim,
);

typedef _dart_strsignal = ffi.Pointer<ffi.Int8> Function(
  int sig,
);

typedef _dart_stpcpy = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> dest,
  ffi.Pointer<ffi.Int8> src,
);

typedef _dart_stpncpy = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> dest,
  ffi.Pointer<ffi.Int8> src,
  int n,
);
