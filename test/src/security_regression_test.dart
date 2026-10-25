import 'dart:ffi' as ffi;
import 'dart:io';

import 'package:posix/posix.dart' as posix;
import 'package:test/test.dart';

void main() {
  test('pipe writes preserve every byte', () {
    final fds = posix.native_pipe(ffi.nullptr);
    try {
      final bytes = [0, 255, 128, 1, 2, 1, 42];
      expect(posix.write(fds[1], bytes), bytes.length);
      expect(posix.read(fds[0], bytes.length), bytes);
    } finally {
      posix.close(fds[0]);
      posix.close(fds[1]);
    }
  });

  test('write rejects values outside a byte', () {
    final fds = posix.native_pipe(ffi.nullptr);
    try {
      expect(() => posix.write(fds[1], [256]), throwsRangeError);
      expect(() => posix.write(fds[1], [-1]), throwsRangeError);
    } finally {
      posix.close(fds[0]);
      posix.close(fds[1]);
    }
  });

  test('read validates length and reports syscall failure', () {
    expect(() => posix.read(-1, -1), throwsRangeError);
    expect(() => posix.read(-1, 1), throwsA(isA<posix.PosixException>()));
  });

  test('getcwd handles a path longer than its initial buffer', () {
    final original = Directory.current;
    final root = Directory.systemTemp.createTempSync('posix-security-');
    try {
      var nested = root;
      for (var i = 0; i < 8; i++) {
        nested = Directory('${nested.path}/${'a' * 40}')..createSync();
      }
      Directory.current = nested;
      expect(posix.getcwd(), nested.absolute.path);
    } finally {
      Directory.current = original;
      root.deleteSync(recursive: true);
    }
  });

  test('getdomainname rejects a length beyond its native buffer', () {
    expect(() => posix.getdomainname('', 1000000), throwsRangeError);
    expect(() => posix.setdomainname('a', 1000000), throwsRangeError);
  });

  test('filesystem paths reject embedded NUL bytes', () {
    expect(() => posix.stat('/tmp/allowed\x00/other'), throwsArgumentError);
    expect(() => posix.unlink('/tmp/allowed\x00/other'), throwsArgumentError);
  });

  test('execl wrappers pass terminated vectors on failure', () {
    const missing = '/no/such/posix-security-executable';
    expect(posix.execl(missing, 'missing'), -1);
    expect(posix.execle(missing, 'missing'), -1);
    expect(posix.execlp('no-such-posix-security-executable', 'missing'), -1);
  });
}
