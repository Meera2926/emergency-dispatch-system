import 'package:emergency_resource_dispatch_system/models/responder_status.dart';

class ResponderState {
  final String responderId;
  final ResponderStatusState status;
  final String? activeMissionId;
  final double currentLat;
  final double currentLng;

  const ResponderState({
    required this.responderId,
    this.status = ResponderStatusState.available,
    this.activeMissionId,
    this.currentLat = 0.0,
    this.currentLng = 0.0,
  });

  ResponderState copyWith({
    ResponderStatusState? status,
    String? activeMissionId,
    double? currentLat,
    double? currentLng,
  }) {
    return ResponderState(
      responderId: responderId,
      status: status ?? this.status,
      activeMissionId: activeMissionId ?? this.activeMissionId,
      currentLat: currentLat ?? this.currentLat,
      currentLng: currentLng ?? this.currentLng,
    );
  }
}
