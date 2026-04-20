import 'package:flutter/foundation.dart';
import 'package:emergency_resource_dispatch_system/models/responder_status.dart';
import 'responder_state.dart';

class ResponderNotifier extends ChangeNotifier {
  ResponderState _state;

  ResponderNotifier({required String responderId})
      : _state = ResponderState(responderId: responderId);

  ResponderState get state => _state;

  void acceptMission(String missionId) {
    _state = _state.copyWith(
      status: ResponderStatusState.enRoute,
      activeMissionId: missionId,
    );
    notifyListeners();
  }

  void updateLocation(double lat, double lng) {
    _state = _state.copyWith(currentLat: lat, currentLng: lng);
    notifyListeners();
  }

  void completeMission() {
    _state = _state.copyWith(
      status: ResponderStatusState.available,
      activeMissionId: null,
    );
    notifyListeners();
  }
}
