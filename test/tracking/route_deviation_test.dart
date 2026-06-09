import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/tracking/route_deviation_detector.dart';

void main() {
  group('RouteDeviationDetector Tests', () {
    test('Detects off route deviation when responder moves away', () {
      const detector = RouteDeviationDetector(thresholdKm: 0.5);
      final polyline = [(12.970, 77.590), (12.975, 77.595)];

      expect(
        detector.isOffRoute(currentLat: 12.971, currentLng: 77.591, polylinePoints: polyline),
        isFalse,
      );

      expect(
        detector.isOffRoute(currentLat: 13.050, currentLng: 77.700, polylinePoints: polyline),
        isTrue,
      );
    });
  });
}
