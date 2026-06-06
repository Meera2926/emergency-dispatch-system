import 'dart:math' as math;

class ReconnectStrategy {
  final int maxRetries;
  final Duration minDelay;
  final Duration maxDelay;

  const ReconnectStrategy({
    this.maxRetries = 5,
    this.minDelay = const Duration(seconds: 1),
    this.maxDelay = const Duration(seconds: 30),
  });

  Duration calculateDelay(int attempt) {
    if (attempt <= 0) return minDelay;
    final ms = minDelay.inMilliseconds * math.pow(1.5, attempt);
    final clampedMs = ms.clamp(minDelay.inMilliseconds, maxDelay.inMilliseconds);
    return Duration(milliseconds: clampedMs.round());
  }
}
