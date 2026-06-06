import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/network/reconnect_strategy.dart';

void main() {
  group('ReconnectStrategy Tests', () {
    test('Clamps maximum delay to threshold', () {
      const strategy = ReconnectStrategy(
        minDelay: Duration(seconds: 1),
        maxDelay: Duration(seconds: 10),
      );

      final delayAttempt10 = strategy.calculateDelay(10);
      expect(delayAttempt10.inSeconds, equals(10));
    });
  });
}
