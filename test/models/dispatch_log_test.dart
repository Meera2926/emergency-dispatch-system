import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/models/dispatch_log.dart';

void main() {
  group('DispatchLog Tests', () {
    test('Serializes audit log timestamp to ISO8601', () {
      final now = DateTime.parse('2026-04-14T17:00:00.000Z');
      final log = DispatchLog(
        id: 'log-1',
        emergencyId: 'em-101',
        responderId: 'resp-202',
        eventType: 'DISPATCH_ACKNOWLEDGED',
        note: 'Ambulance en route with lights and sirens',
        timestamp: now,
      );

      final json = log.toJson();
      expect(json['eventType'], equals('DISPATCH_ACKNOWLEDGED'));
      expect(json['timestamp'], equals('2026-04-14T17:00:00.000Z'));
    });
  });
}
