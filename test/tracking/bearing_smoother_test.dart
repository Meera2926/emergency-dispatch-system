import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/tracking/bearing_smoother.dart';

void main() {
  group('BearingSmoother Tests', () {
    test('Smoothly interpolates across 360 degree boundary', () {
      final smoothed = BearingSmoother.smoothBearing(350.0, 10.0, 0.5);
      expect(smoothed, equals(0.0));
    });
  });
}
