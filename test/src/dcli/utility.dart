import 'package:path/path.dart';
import 'package:stack_trace/stack_trace.dart';

String truepath(
  String part1, [
  String? part2,
  String? part3,
  String? part4,
  String? part5,
  String? part6,
  String? part7,
]) =>
    normalize(absolute(join(part1, part2, part3, part4, part5, part6, part7)));

/// Base class for the classes that implement
/// the public DCli functions.
class DCliFunction {}

/// Base class for all dcli function exceptions.
class DCliFunctionException extends DCliException {
  /// Base class for all dcli function exceptions.
  DCliFunctionException(super.message, [super.stackTrace]);
}

/// Base class for all DCli exceptions.
class DCliException implements Exception {
  ///
  DCliException(this.message, [Trace? stackTrace])
      : cause = null,
        stackTrace = stackTrace ?? Trace.current(2);

  ///
  DCliException.from(this.cause, this.stackTrace) : message = cause.toString();

  ///
  DCliException.fromException(this.cause)
      : message = cause.toString(),
        stackTrace = Trace.current(2);

  ///
  final String message;

  /// If DCliException is wrapping another exception then this is the
  /// exeception that is wrapped.
  final Object? cause;

  ///
  Trace stackTrace;

  //  {
  //   return DCliException(this.message, stackTrace);
  // }

  @override
  String toString() => message;

  ///
  void printStackTrace() {
    print(stackTrace.terse);
  }
}
