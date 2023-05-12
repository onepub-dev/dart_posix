import 'package:logging/logging.dart';
import 'package:stack_trace/stack_trace.dart';

/// Logs a message to the console if the verbose
/// settings are on.
void verbose(String Function() callback) {
  final calledBy = Trace.current().frames[1];

  /// We log at info level (as that is logger's default)
  /// so that verbose messages will print when verbose
  /// is enabled.
  Logger('dcli').info('${calledBy.library}:${calledBy.line} ${callback()}}');
}
