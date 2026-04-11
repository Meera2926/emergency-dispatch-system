class AppException implements Exception {
  final String message;
  final StackTrace? stackTrace;

  const AppException(this.message, [this.stackTrace]);

  @override
  String toString() => 'AppException: $message';
}

class LocationServiceDisabledException extends AppException {
  const LocationServiceDisabledException([super.message = 'Device location services are disabled']);
}

class PermissionDeniedException extends AppException {
  const PermissionDeniedException([super.message = 'Required permission was denied by user']);
}

class DispatchTimeoutException extends AppException {
  const DispatchTimeoutException([super.message = 'Emergency dispatch timed out']);
}
