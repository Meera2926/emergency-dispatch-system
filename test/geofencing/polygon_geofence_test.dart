import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/geofencing/polygon_geofence.dart';

void main() {
  group('PolygonGeofence Tests', () {
    test('Ray-casting accurately verifies point inside polygon boundary', () {
      const geofence = PolygonGeofence(
        id: 'GEOFENCE-1',
        name: 'Zone A',
        vertices: [(0.0, 0.0), (10.0, 0.0), (10.0, 10.0), (0.0, 10.0)],
      );

      expect(geofence.contains(5.0, 5.0), isTrue);
      expect(geofence.contains(15.0, 15.0), isFalse);
    });
  });
}
