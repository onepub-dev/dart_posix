/*
 * Copyright (c) 2025 S. Brett Sutton 2022+
 *
 * This software is licensed under the MIT License.
 * SPDX-License-Identifier: MIT
 */

// ignore_for_file: constant_identifier_names

import 'package:meta/meta.dart';

import '../posix_exception.dart';

@immutable
class Mode {
  const Mode.fromInt(this.mode);

  Mode.fromString(String mode) : mode = _fromString(mode);

  bool get isFile => mode & S_IFMT == S_IFREG;
  bool get isDirectory => mode & S_IFMT == S_IFDIR;
  bool get isCharacterDevice => mode & S_IFMT == S_IFCHR;
  bool get isBlockDevice => mode & S_IFMT == S_IFBLK;
  bool get isNamedPipe => mode & S_IFMT == S_IFIFO;
  bool get isLink => mode & S_IFMT == S_IFLNK;
  bool get isSocket => mode & S_IFMT == S_IFSOCK;

  bool get isOwnerReadable => mode & S_IRUSR == S_IRUSR;
  bool get isOwnerWritable => mode & S_IWUSR == S_IWUSR;
  bool get isOwnerExecutable => mode & S_IXUSR == S_IXUSR;

  bool get isGroupReadable => mode & S_IRGRP == S_IRGRP;
  bool get isGroupWritable => mode & S_IWGRP == S_IWGRP;
  bool get isGroupExecutable => mode & S_IXGRP == S_IXGRP;

  bool get isOtherReadable => mode & S_IROTH == S_IROTH;
  bool get isOtherWritable => mode & S_IWOTH == S_IWOTH;
  bool get isOtherExecutable => mode & S_IXOTH == S_IXOTH;

  bool get isSticky => mode & S_ISVTX == S_ISVTX;
  bool get isSetUserID => mode & S_ISUID == S_ISUID;
  bool get isSetGroupID => mode & S_ISGID == S_ISGID;

  final int mode;

  int get perms => mode & ~S_IFMT;

  @override
  String toString() {
    var smode = '';

    if (isFile) {
      smode += '-';
    } else if (isDirectory) {
      smode += 'd';
    } else if (isCharacterDevice) {
      smode += 'c';
    } else if (isBlockDevice) {
      smode += 'b';
    } else if (isNamedPipe) {
      smode += 'p';
    } else if (isLink) {
      smode += 'l';
    } else if (isSocket) {
      smode += 's';
    } else {
      smode += '?';
    }

    smode += isOwnerReadable ? 'r' : '-';
    smode += isOwnerWritable ? 'w' : '-';
    smode += isOwnerExecutable
        ? isSetUserID
            ? 's'
            : 'x'
        : isSetUserID
            ? 'S'
            : '-';

    smode += isGroupReadable ? 'r' : '-';
    smode += isGroupWritable ? 'w' : '-';
    smode += isGroupExecutable
        ? isSetGroupID
            ? 's'
            : 'x'
        : isSetGroupID
            ? 'S'
            : '-';

    smode += isOtherReadable ? 'r' : '-';
    smode += isOtherWritable ? 'w' : '-';
    smode += isOtherExecutable
        ? isSticky
            ? 't'
            : 'x'
        : isSticky
            ? 'T'
            : '-';

    return smode;
  }

  @override
  bool operator ==(Object other) => other is Mode && other.mode == mode;

  @override
  int get hashCode => mode.hashCode;

  static int _fromString(String smode) {
    if (smode.length < 10) {
      throw PosixException('Mode string too short', 0);
    }

    var imode = 0;

    var char = smode[0];
    if (char == '-') {
      imode |= S_IFREG;
    } else if (char == 'd') {
      imode |= S_IFDIR;
    } else if (char == 'c') {
      imode |= S_IFCHR;
    } else if (char == 'b') {
      imode |= S_IFBLK;
    } else if (char == 'p') {
      imode |= S_IFIFO;
    } else if (char == 'l') {
      imode |= S_IFLNK;
    } else if (char == 's') {
      imode |= S_IFSOCK;
    } else {
      throw PosixException('Bad file type $char', 0);
    }

    char = smode[1];
    if (char == 'r') {
      imode |= S_IRUSR;
    } else if (char != '-') {
      throw PosixException('Bad owner read permission $char', 0);
    }

    char = smode[2];
    if (char == 'w') {
      imode |= S_IWUSR;
    } else if (char != '-') {
      throw PosixException('Bad owner write permission $char', 0);
    }

    char = smode[3];
    if (char == 's') {
      imode |= S_ISUID | S_IXUSR;
    } else if (char == 'S') {
      imode |= S_ISUID;
    } else if (char == 'x') {
      imode |= S_IXUSR;
    } else if (char != '-') {
      throw PosixException('Bad owner execute permission $char', 0);
    }

    char = smode[4];
    if (char == 'r') {
      imode |= S_IRGRP;
    } else if (char != '-') {
      throw PosixException('Bad group read permission $char', 0);
    }

    char = smode[5];
    if (char == 'w') {
      imode |= S_IWGRP;
    } else if (char != '-') {
      throw PosixException('Bad group write permission $char', 0);
    }

    char = smode[6];
    if (char == 's') {
      imode |= S_ISGID | S_IXGRP;
    } else if (char == 'S') {
      imode |= S_ISGID;
    } else if (char == 'x') {
      imode |= S_IXGRP;
    } else if (char != '-') {
      throw PosixException('Bad group execute permission $char', 0);
    }

    char = smode[7];
    if (char == 'r') {
      imode |= S_IROTH;
    } else if (char != '-') {
      throw PosixException('Bad other read permission $char', 0);
    }

    char = smode[8];
    if (char == 'w') {
      imode |= S_IWOTH;
    } else if (char != '-') {
      throw PosixException('Bad other write permission $char', 0);
    }

    char = smode[9];
    if (char == 't') {
      imode |= S_ISVTX | S_IXOTH;
    } else if (char == 'T') {
      imode |= S_ISVTX;
    } else if (char == 'x') {
      imode |= S_IXOTH;
    } else if (char != '-') {
      throw PosixException('Bad other execute permission $char', 0);
    }

    return imode;
  }
}

const int S_IFMT = 0xF000;
const int S_IFIFO = 0x1000;
const int S_IFCHR = 0x2000;
const int S_IFDIR = 0x4000;
const int S_IFBLK = 0x6000;
const int S_IFREG = 0x8000;
const int S_IFLNK = 0xA000;
const int S_IFSOCK = 0xC000;

const int S_ISUID = 0x0800;
const int S_ISGID = 0x0400;
const int S_ISVTX = 0x0200;

const int S_IRWXU = 0x01C0;
const int S_IRUSR = 0x0100;
const int S_IWUSR = 0x0080;
const int S_IXUSR = 0x0040;

const int S_IRWXG = 0x0038;
const int S_IRGRP = 0x0020;
const int S_IWGRP = 0x0010;
const int S_IXGRP = 0x0008;

const int S_IRWXO = 0x0007;
const int S_IROTH = 0x0004;
const int S_IWOTH = 0x0002;
const int S_IXOTH = 0x0001;
