import 'package:flutter/foundation.dart';
import 'emergency_state.dart';

class EmergencyNotifier extends ChangeNotifier {
  EmergencyState _state = const EmergencyState();

  EmergencyState get state => _state;

  void triggerEmergency({required String emergencyId}) {
    _state = _state.copyWith(
      stage: EmergencyStage.dispatched,
      activeEmergencyId: emergencyId,
      statusMessage: 'Dispatched to nearest emergency unit',
    );
    notifyListeners();
  }

  void updateResponderAssigned({required String responderName, required double etaMinutes}) {
    _state = _state.copyWith(
      stage: EmergencyStage.enRoute,
      responderName: responderName,
      estimatedMinutes: etaMinutes,
      statusMessage: '$responderName is on the way (ETA: ${etaMinutes.toStringAsFixed(0)} mins)',
    );
    notifyListeners();
  }

  void cancelEmergency() {
    _state = const EmergencyState(
      stage: EmergencyStage.cancelled,
      statusMessage: 'Emergency alert was cancelled',
    );
    notifyListeners();
  }

  void reset() {
    _state = const EmergencyState();
    notifyListeners();
  }
}
