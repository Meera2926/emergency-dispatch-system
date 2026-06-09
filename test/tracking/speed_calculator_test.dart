import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/tracking/speed_calculator.dart';

void main() {
  group('SpeedCalculator Tests', () {
    test('Calculates velocity accurately over time elapsed', () {
      final t1 = DateTime.now();
      final t2 = t1.add(const Duration(hours: 1));

      // Coordinate difference of ~111 km
      final speed = SpeedCalculator.computeSpeedKmh(
        lat1: 12.0,
        lng1: 77.0,
        time1: t1,
        lat2: 13.0,
        lng2: 77.0,
        time2: t2,
      );

      expect(speed, inInclusiveRange(100.0, 125.0));
    });
  });
}
