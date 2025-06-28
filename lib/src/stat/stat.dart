/*
 * Copyright (c) 2025 S. Brett Sutton 2022+
 *
 * This software is licensed under the MIT License.
 * SPDX-License-Identifier: MIT
 */

import 'dart:io';

import 'package:meta/meta.dart';

import '../posix_exception.dart';
import 'linux.dart';
import 'mac.dart';
import 'mode.dart';

Stat lstat(String pathToFile) {
  Stat stat;
  try {
    stat = Platform.isMacOS ? macLStat(pathToFile) : linuxLStat(pathToFile);
  } on PosixException catch (e) {
    throw StatException('${e.posixError} $pathToFile', e.code);
  }

  return stat;
}

Stat stat(String pathToFile) {
  Stat stat;
  try {
    stat = Platform.isMacOS ? macStat(pathToFile) : linuxStat(pathToFile);
  } on PosixException catch (e) {
    throw StatException('${e.posixError} $pathToFile', e.code);
  }
  return stat;
}

@immutable
class Stat {
  const Stat({
    required this.deviceId,
    required this.inode,
    required this.mode,
    required this.nlink,
    required this.uid,
    required this.gid,
    required this.rdev,
    required this.size,
    // block size is hard to get correctly
    required this.blocks,
    required this.lastAccess,
    required this.lastModified,
    required this.lastStatusChange,
    this.blockSize = 0,
  });

  /// st_dev - ID of device containing filesystem entity
  final int deviceId;

  /// st_ino - Inode number of filesystem entity
  final int inode;

  /// st_mode - File type and mode
  final Mode mode;

  /// st_nlink Number of hard links to the filesystem entity
  final int nlink;

  final int uid;

  /// st_gid -  Group ID of the filesystem entity owner
  final int gid;

  /// st_rdev -  Device ID (if special filesystem entity)
  final int rdev;

  /// st_size - Total size of filesystem entity, in bytes
  final int size;

  /// st_blksize -  This field gives the "preferred" blocksize for efficient
  /// filesystem I/O.  (Writing to a file in smaller chunks may
  /// cause an inefficient read-modify-rewrite.)
  final int blockSize;

  /// st_blocks - Number of 512B blocks allocated
  final int blocks;

  /* Since Linux 2.6, the kernel supports nanosecond
                  precision for the following timestamp fields.
                  For the details before Linux 2.6, see NOTES. */

  ///  st_atim -  Time of last access to the filesystem entity
  final DateTime lastAccess;

  /// st_mtim -  Time of last modification to the filesystem entity
  final DateTime lastModified;

  /// st_ctim - Time of last status change for the filesystem entity
  /// It is changed by writing or by setting inode information (i.e.,
  ///   owner, group, link count, mode, etc.).
  final DateTime lastStatusChange;

  @override
  bool operator ==(Object other) =>
      other is Stat &&
      other.deviceId == deviceId &&
      other.inode == inode &&
      other.mode == mode &&
      other.nlink == nlink &&
      other.uid == uid &&
      other.gid == gid &&
      other.rdev == rdev &&
      other.size == size &&
      other.blockSize == blockSize &&
      other.blocks == blocks &&
      other.lastAccess == lastAccess &&
      other.lastModified == lastModified &&
      other.lastStatusChange == lastStatusChange;

  @override
  int get hashCode => Object.hashAll([
        deviceId,
        inode,
        mode,
        nlink,
        uid,
        gid,
        rdev,
        size,
        blockSize,
        blocks,
        lastAccess,
        lastModified,
        lastStatusChange
      ]);
}

class StatException extends PosixException {
  StatException(super.message, super.code);

  @override
  String toString() => message;
}
