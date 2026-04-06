import 'package:shopping_app/entities/value_failure.dart';

class ServerException implements Exception {
  ServerException({
    required this.message,
    required this.statusCode,
  });
  final String message;
  final int statusCode;
}

class CacheException implements Exception {}

class UnexpectedValueError extends Error {
  UnexpectedValueError(this.valueFailure);

  final ValueFailure<dynamic> valueFailure;

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}

class ResetPasswordException implements Exception {
  ResetPasswordException(this.message);
  final String message;
}
