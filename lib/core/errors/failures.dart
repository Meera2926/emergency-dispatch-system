abstract class Failure {
  final String message;
  final int? code;

  const Failure(this.message, [this.code]);

  @override
  String toString() => '$runtimeType(message: $message, code: $code)';
}

class NetworkFailure extends Failure {
  const NetworkFailure([String message = 'Network connection failed', int? code])
      : super(message, code);
}

class LocationFailure extends Failure {
  const LocationFailure([String message = 'Location permission denied or unavailable', int? code])
      : super(message, code);
}

class ServerFailure extends Failure {
  const ServerFailure([String message = 'Emergency dispatch server error', int? code])
      : super(message, code);
}

class CacheFailure extends Failure {
  const CacheFailure([String message = 'Local storage cache error', int? code])
      : super(message, code);
}
