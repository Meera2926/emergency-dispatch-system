import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/state/emergency_notifier.dart';
import 'package:emergency_resource_dispatch_system/state/emergency_state.dart';

void main() {
  group('EmergencyNotifier Tests', () {
    test('Full lifecycle transitions from idle to dispatched to enRoute to cancelled', () {
      final notifier = EmergencyNotifier();
      expect(notifier.state.stage, equals(EmergencyStage.idle));

      notifier.triggerEmergency(emergencyId: 'EM-1');
      expect(notifier.state.stage, equals(EmergencyStage.dispatched));
      expect(notifier.state.activeEmergencyId, equals('EM-1'));

      notifier.updateResponderAssigned(responderName: 'Officer Rao', etaMinutes: 4.5);
      expect(notifier.state.stage, equals(EmergencyStage.enRoute));
      expect(notifier.state.responderName, equals('Officer Rao'));

      notifier.cancelEmergency();
      expect(notifier.state.stage, equals(EmergencyStage.cancelled));
    });
  });
}
