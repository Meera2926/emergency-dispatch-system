import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/services/retry_interceptor.dart';

void main() {
  group('RetryInterceptor Tests', () {
    test('Calculates exponential backoff delays', () {
      const retry = RetryInterceptor(
        baseDelay: Duration(milliseconds: 200),
        backoffMultiplier: 2.0,
      );

      expect(retry.getDelayForAttempt(1).inMilliseconds, equals(200));
      expect(retry.getDelayForAttempt(2).inMilliseconds, equals(400));
      expect(retry.getDelayForAttempt(3).inMilliseconds, equals(800));
    });
  });
}
