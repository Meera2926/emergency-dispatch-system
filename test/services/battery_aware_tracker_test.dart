import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/services/battery_aware_tracker.dart';

void main() {
  group('BatteryAwareTracker Tests', () {
    test('High battery returns rapid polling frequency', () {
      final interval = BatteryAwareTracker.getPollingInterval(batteryPercent: 85, isCharging: false);
      expect(interval.inSeconds, equals(3));
    });

    test('Critical battery level scales back polling interval to preserve power', () {
      final interval = BatteryAwareTracker.getPollingInterval(batteryPercent: 12, isCharging: false);
      expect(interval.inSeconds, equals(15));
    });

    test('Charging device uses fastest update frequency', () {
      final interval = BatteryAwareTracker.getPollingInterval(batteryPercent: 10, isCharging: true);
      expect(interval.inSeconds, equals(2));
    });
  });
}
