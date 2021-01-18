import 'package:dcli/dcli.dart';
import 'package:posix/posix.dart';
import 'package:test/test.dart';

///
/// Test deescalation/escalation of priviliges.
///
/// This script must be run as sudo
///
///

void main2() {
  var sUID = env['SUDO_UID'];
  var gUID = env['SUDO_GID'];

  // convert id's to integers.
  var originalUID = sUID != null ? int.tryParse(sUID) ?? 0 : 0;
  var originalGID = gUID != null ? int.tryParse(gUID) ?? 0 : 0;

  setegid(originalGID);
  seteuid(originalUID);

  delete('test.txt');

  // 'touch test.txt'.run;

  touch('test.txt', create: true);

  'ls -la test.txt'.run;
}

void main() {
  test('isPriviliged', () {
    try {
      print('isPriviliged: ${Shell.current.isPrivilegedUser}');

      print('uid: ${getuid()}');
      print('gid: ${getgid()}');
      print('euid: ${geteuid()}');
      print('euid: ${geteuid()}');
      print('user: ${getlogin()}');
      print('SUDO_UID: ${env['SUDO_UID']}');
      print('SUDO_USER: ${env['SUDO_USER']}');
      print('SUDO_GUID: ${env['SUDO_GID']}');

      print('pre-descalation euid: ${geteuid()}');
      print('pre-descalation user egid: ${getegid()}');

      releasePrivileges();

      print('post-descalation euid: ${geteuid()}');
      print('post-descalation user egid: ${getegid()}');

      delete('test.txt');
      touch('test.txt', create: true);

      'ls -la test.txt'.run;

      withPrivileges(() {
        print('with privileges euid: ${geteuid()}');
        print('with privileges egid: ${getegid()}');


        delete('test2.txt');
        touch('test2.txt', create: true);

        'ls -la test2.txt'.run;
      });
    } on PosixException catch (e, st) {
      print(e);
      print(st);
    }
  });
}

/// revert uid and gid to original user's id's
void releasePrivileges() {
  if (Shell.current.isPrivilegedUser) {
    var sUID = env['SUDO_UID'];
    var gUID = env['SUDO_GID'];

    // convert id's to integers.
    var originalUID = sUID != null ? int.tryParse(sUID) ?? 0 : 0;
    var originalGID = gUID != null ? int.tryParse(gUID) ?? 0 : 0;

    setegid(originalGID);
    seteuid(originalUID);
  }
}

/// Run [privilegedCallback] with root UID and gid
void withPrivileges(RunPrivileged privilegedCallback) {
  var privileged = Shell.current.isPrivilegedUser;

  if (!privileged) {
    setegid(0);
    seteuid(0);
  }

  privilegedCallback();

  /// If the code was originally running privileged then
  /// we leave it as it was.
  if (!privileged) {
    releasePrivileges();
  }
}

typedef RunPrivileged = void Function();
