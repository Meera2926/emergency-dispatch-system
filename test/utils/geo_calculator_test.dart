import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/utils/geo_calculator.dart';

void main() {
  group('GeoCalculator Tests', () {
    test('Calculates zero distance for identical coordinates', () {
      final distance = GeoCalculator.distanceBetween(12.9716, 77.5946, 12.9716, 77.5946);
      expect(distance, closeTo(0.0, 0.001));
    });

    test('Calculates accurate distance between Bangalore and Chennai (~290 km)', () {
      final distance = GeoCalculator.distanceBetween(12.9716, 77.5946, 13.0827, 80.2707);
      expect(distance, inInclusiveRange(280.0, 310.0));
    });

    test('Calculates north bearing accurately as 0 degrees', () {
      final bearing = GeoCalculator.bearingBetween(10.0, 20.0, 20.0, 20.0);
      expect(bearing, closeTo(0.0, 0.5));
    });
  });
}
