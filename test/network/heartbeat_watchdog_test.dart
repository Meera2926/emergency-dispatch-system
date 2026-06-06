import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/network/heartbeat_watchdog.dart';

void main() {
  group('HeartbeatWatchdog Tests', () {
    test('Flags connection timeout when pong is overdue', () {
      final watchdog = HeartbeatWatchdog(timeoutThreshold: const Duration(seconds: 10));
      watchdog.onPongReceived();

      expect(watchdog.isTimedOut, isFalse);
      final futureTime = DateTime.now().add(const Duration(seconds: 12));
      watchdog.checkLiveness(futureTime);

      expect(watchdog.isTimedOut, isTrue);
    });
  });
}
