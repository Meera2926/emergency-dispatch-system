import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/storage/telemetry_dao.dart';

void main() {
  group('TelemetryDao Tests', () {
    test('Appends and filters telemetry trails by incident id', () {
      final dao = TelemetryDao();
      dao.appendPoint(
        emergencyId: 'EM-1',
        lat: 12.97,
        lng: 77.59,
        recordedAt: DateTime.now(),
      );
      dao.appendPoint(
        emergencyId: 'EM-2',
        lat: 13.01,
        lng: 77.62,
        recordedAt: DateTime.now(),
      );

      final trail1 = dao.getTrail('EM-1');
      expect(trail1.length, equals(1));
      expect(trail1.first['lat'], equals(12.97));
    });
  });
}
