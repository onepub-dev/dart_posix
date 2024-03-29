/* Copyright (C) S. Brett Sutton - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential
 * Written by Brett Sutton <bsutton@onepub.dev>, Jan 2022
 */

// export 'src/libc/libc.dart';
// export 'src/libc/seteuid.dart';
// export 'src/libc/setreuid.dart';
// export 'src/libc/geteuid.dart';
// export 'src/libc/getuid.dart';

import 'src/libc.dart';

export 'src/grp.dart';
export 'src/posix_exception.dart';
export 'src/pwd.dart';
export 'src/simplified.dart';
export 'src/stat/mode.dart';
export 'src/stat/stat.dart';
export 'src/string/string.dart';
export 'src/sysinfo.dart';
export 'src/uname/uname.dart';
export 'src/unistd/errno.dart';
export 'src/unistd/unistd.dart';
export 'src/wrapper.dart';

/// Returns true if posix is supported on this platform.
///
/// Internally we check to see if the required shared library
/// (.so, .dylib, .dll)
/// is available.
bool get isPosixSupported => Libc().isPosixSupported;
