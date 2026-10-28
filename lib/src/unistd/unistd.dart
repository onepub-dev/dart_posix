/*
 * Copyright (c) 2025 S. Brett Sutton 2022+
 *
 * This software is licensed under the MIT License.
 * SPDX-License-Identifier: MIT
 */

import 'dart:convert';
import 'dart:ffi' as ffi;
import 'dart:io' show Platform;

import 'package:ffi/ffi.dart';

import '../../posix.dart';
import '../libc.dart';
import '../util/conversions.dart';

part 'unistd_file_io.dart';
part 'unistd_filesystem_exec.dart';
part 'unistd_process_system.dart';
part 'unistd_constants_types.dart';
