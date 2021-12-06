import '../posix_exception.dart';

class Mode {
  final int _mode;

  Mode.fromInt(this._mode);

  Mode.fromString(String mode)
    : _mode = _fromString(mode);

  bool get isFile => _mode & S_IFREG == S_IFREG;
  bool get isDirectory => _mode & S_IFDIR == S_IFDIR;
  bool get isCharacterDevice => _mode & S_IFCHR == S_IFCHR;
  bool get isBlockDevice => _mode & S_IFBLK == S_IFBLK;
  bool get isNamedPipe => _mode & S_IFIFO == S_IFIFO;
  bool get isLink => _mode & S_IFLNK == S_IFLNK;
  bool get isSocket => _mode & S_IFSOCK == S_IFSOCK;

  bool get isOwnerReadable => _mode & S_IRUSR == S_IRUSR;
  bool get isOwnerWritable => _mode & S_IWUSR == S_IWUSR;
  bool get isOwnerExecutable => _mode & S_IXUSR == S_IXUSR;

  bool get isGroupReadable => _mode & S_IRGRP == S_IRGRP;
  bool get isGroupWritable => _mode & S_IWGRP == S_IWGRP;
  bool get isGroupExecutable => _mode & S_IXGRP == S_IXGRP;

  bool get isOtherReadable => _mode & S_IROTH == S_IROTH;
  bool get isOtherWritable => _mode & S_IWOTH == S_IWOTH;
  bool get isOtherExecutable => _mode & S_IXOTH == S_IXOTH;

  bool get isSticky => _mode & S_ISVTX == S_ISVTX;
  bool get isSetUserID => _mode & S_ISUID == S_ISUID;
  bool get isSetGroupID => _mode & S_ISGID == S_ISGID;

  dynamic toJson({
    bool asString = false,
  }) =>
    asString ? toString() : _mode;

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
      ? isSetUserID ? 's' : 'x'
      : isSetUserID ? 'S' : '-';

    smode += isGroupReadable ? 'r' : '-';
    smode += isGroupWritable ? 'w' : '-';
    smode += isGroupExecutable
      ? isSetGroupID ? 's' : 'x'
      : isSetGroupID ? 'S' : '-';

    smode += isOtherReadable ? 'r' : '-';
    smode += isOtherWritable ? 'w' : '-';
    smode += isOtherExecutable
      ? isSticky ? 't' : 'x'
      : isSticky ? 'T' : '-';

    return smode;
  }

  @override
  bool operator ==(Object other) =>
    other is Mode && other._mode == _mode;

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

const int S_IFMT = 61440;

const int S_IFDIR = 16384;

const int S_IFCHR = 8192;

const int S_IFBLK = 24576;

const int S_IFREG = 32768;

const int S_IFIFO = 4096;

const int S_IFLNK = 40960;

const int S_IFSOCK = 49152;

const int S_ISUID = 2048;

const int S_ISGID = 1024;

const int S_ISVTX = 512;

const int S_IRUSR = 256;

const int S_IWUSR = 128;

const int S_IXUSR = 64;

const int S_IRWXU = 448;

const int S_IREAD = 256;

const int S_IWRITE = 128;

const int S_IEXEC = 64;

const int S_IRGRP = 32;

const int S_IWGRP = 16;

const int S_IXGRP = 8;

const int S_IRWXG = 56;

const int S_IROTH = 4;

const int S_IWOTH = 2;

const int S_IXOTH = 1;

const int S_IRWXO = 7;