import 'dart:io';

///
///
/// Returns a FileStat instance describing the
/// file or directory located by [path].
///
FileStat stat(String path) => File(path).statSync();
