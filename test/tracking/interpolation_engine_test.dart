import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/tracking/interpolation_engine.dart';

void main() {
  group('InterpolationEngine Tests', () {
    test('Interpolates midpoint at fraction 0.5', () {
      final (lat, lng) = InterpolationEngine.interpolate(
        startLat: 10.0,
        startLng: 20.0,
        endLat: 20.0,
        endLng: 30.0,
        fraction: 0.5,
      );

      expect(lat, equals(15.0));
      expect(lng, equals(25.0));
    });
  });
}
