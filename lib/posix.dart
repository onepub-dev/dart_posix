/*
 * Copyright (c) 2025 S. Brett Sutton 2022+
 *
 * This software is licensed under the MIT License.
 * SPDX-License-Identifier: MIT
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
