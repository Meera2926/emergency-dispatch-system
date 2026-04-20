import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/models/responder_status.dart';
import 'package:emergency_resource_dispatch_system/state/responder_notifier.dart';

void main() {
  group('ResponderNotifier Tests', () {
    test('Accepts and completes mission correctly', () {
      final notifier = ResponderNotifier(responderId: 'R-77');
      expect(notifier.state.status, equals(ResponderStatusState.available));

      notifier.acceptMission('MISSION-404');
      expect(notifier.state.status, equals(ResponderStatusState.enRoute));
      expect(notifier.state.activeMissionId, equals('MISSION-404'));

      notifier.updateLocation(12.97, 77.59);
      expect(notifier.state.currentLat, equals(12.97));

      notifier.completeMission();
      expect(notifier.state.status, equals(ResponderStatusState.available));
      expect(notifier.state.activeMissionId, isNull);
    });
  });
}
