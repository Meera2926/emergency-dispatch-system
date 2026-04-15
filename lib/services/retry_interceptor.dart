import 'dart:math' as math;

class RetryInterceptor {
  final int maxRetries;
  final Duration baseDelay;
  final double backoffMultiplier;

  const RetryInterceptor({
    this.maxRetries = 3,
    this.baseDelay = const Duration(milliseconds: 500),
    this.backoffMultiplier = 2.0,
  });

  Duration getDelayForAttempt(int attempt) {
    if (attempt <= 0) return Duration.zero;
    final ms = baseDelay.inMilliseconds * math.pow(backoffMultiplier, attempt - 1);
    return Duration(milliseconds: ms.round());
  }
}
