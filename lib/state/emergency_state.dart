enum EmergencyStage {
  idle,
  holding,
  triggering,
  dispatched,
  enRoute,
  arrived,
  resolved,
  cancelled;
}

class EmergencyState {
  final EmergencyStage stage;
  final String? activeEmergencyId;
  final String? responderName;
  final double? estimatedMinutes;
  final String? statusMessage;

  const EmergencyState({
    this.stage = EmergencyStage.idle,
    this.activeEmergencyId,
    this.responderName,
    this.estimatedMinutes,
    this.statusMessage,
  });

  EmergencyState copyWith({
    EmergencyStage? stage,
    String? activeEmergencyId,
    String? responderName,
    double? estimatedMinutes,
    String? statusMessage,
  }) {
    return EmergencyState(
      stage: stage ?? this.stage,
      activeEmergencyId: activeEmergencyId ?? this.activeEmergencyId,
      responderName: responderName ?? this.responderName,
      estimatedMinutes: estimatedMinutes ?? this.estimatedMinutes,
      statusMessage: statusMessage ?? this.statusMessage,
    );
  }
}
