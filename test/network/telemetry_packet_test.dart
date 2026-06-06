import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/network/telemetry_packet.dart';

void main() {
  group('TelemetryPacket Tests', () {
    test('Parses JSON telemetry packet with high precision values', () {
      final json = {
        'responderId': 'AMB-1',
        'latitude': 12.9716,
        'longitude': 77.5946,
        'speedKmh': 54.2,
        'bearingDegrees': 180.5,
        'batteryLevel': 92,
      };

      final packet = TelemetryPacket.fromJson(json);
      expect(packet.responderId, equals('AMB-1'));
      expect(packet.speedKmh, equals(54.2));
      expect(packet.batteryLevel, equals(92));
    });
  });
}
