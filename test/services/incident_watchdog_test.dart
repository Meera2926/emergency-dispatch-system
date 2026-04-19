import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/services/incident_watchdog.dart';

void main() {
  group('IncidentWatchdog Tests', () {
    test('Escalates incident if acknowledgment window expires', () {
      final watchdog = IncidentWatchdog(acknowledgmentTimeout: const Duration(seconds: 20));
      expect(watchdog.isEscalated, isFalse);

      watchdog.evaluateTimeElapsed(const Duration(seconds: 15));
      expect(watchdog.isEscalated, isFalse);

      watchdog.evaluateTimeElapsed(const Duration(seconds: 25));
      expect(watchdog.isEscalated, isTrue);

      watchdog.acknowledge();
      expect(watchdog.isEscalated, isFalse);
    });
  });
}
