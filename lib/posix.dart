// export 'src/libc/libc.dart';
// export 'src/libc/seteuid.dart';
// export 'src/libc/setreuid.dart';
// export 'src/libc/geteuid.dart';
// export 'src/libc/getuid.dart';

export 'src/posix_exception.dart';

export 'src/unistd/unistd.dart';
export 'src/unistd/errno.dart';
export 'src/pwd.dart';
export 'src/grp.dart';
export 'src/wrapper.dart';
export 'src/string/string.dart' ;

import 'src/libc.dart';

/// Returns true if posix is supported on this platform.
///
/// Internally we check to see if the required shared library (.so, .dylib, .dll)
/// is available.
bool get isPosixSupported => Libc().isPosixSupported;
