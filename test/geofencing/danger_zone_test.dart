import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/geofencing/danger_zone.dart';

void main() {
  group('DangerZone Tests', () {
    test('Constructs danger zone with hazard type', () {
      const zone = DangerZone(
        id: 'DZ-10',
        title: 'Chemical Spill Sector',
        hazard: HazardType.gasLeak,
        centerLat: 12.97,
        centerLng: 77.59,
        radiusMeters: 500.0,
      );

      expect(zone.hazard, equals(HazardType.gasLeak));
      expect(zone.radiusMeters, equals(500.0));
    });
  });
}
