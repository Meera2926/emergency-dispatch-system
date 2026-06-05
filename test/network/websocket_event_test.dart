import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/network/websocket_event.dart';

void main() {
  group('WebSocketEvent Tests', () {
    test('Serializes WebSocket event to JSON format cleanly', () {
      final now = DateTime.parse('2026-06-05T10:00:00Z');
      final event = WebSocketEvent(
        type: WebSocketEventType.telemetryUpdate,
        payload: {'lat': 12.97, 'lng': 77.59},
        timestamp: now,
      );

      final json = event.toJson();
      expect(json['type'], equals('telemetryUpdate'));
      expect(json['payload']['lat'], equals(12.97));
    });
  });
}
