import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/services/location_smoother.dart';

void main() {
  group('LocationSmoother Tests', () {
    test('First coordinate passes through unchanged', () {
      final filter = LocationSmoother();
      final (lat, lng) = filter.smooth(12.0, 77.0);
      expect(lat, equals(12.0));
      expect(lng, equals(77.0));
    });

    test('Smooths consecutive coordinate variations smoothly', () {
      final filter = LocationSmoother(smoothingFactor: 0.5);
      filter.smooth(10.0, 20.0);
      final (lat, lng) = filter.smooth(12.0, 22.0);

      expect(lat, equals(11.0));
      expect(lng, equals(21.0));
    });
  });
}
