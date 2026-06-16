import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/geofencing/danger_zone.dart';
import 'package:emergency_resource_dispatch_system/geofencing/geofence_manager.dart';

void main() {
  group('GeofenceManager Tests', () {
    test('Triggers active hazard warning when coordinates are inside zone', () {
      final mgr = GeofenceManager();
      mgr.registerDangerZone(const DangerZone(
        id: 'Z1',
        title: 'Fire Perimeter',
        hazard: HazardType.wildfire,
        centerLat: 12.9716,
        centerLng: 77.5946,
        radiusMeters: 1000.0,
      ));

      final detected = mgr.getActiveHazardAt(12.9720, 77.5950);
      expect(detected, isNotNull);
      expect(detected?.title, equals('Fire Perimeter'));

      final outside = mgr.getActiveHazardAt(13.0500, 77.8000);
      expect(outside, isNull);
    });
  });
}
