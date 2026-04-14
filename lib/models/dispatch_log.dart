class DispatchLog {
  final String id;
  final String emergencyId;
  final String responderId;
  final String eventType;
  final String note;
  final DateTime timestamp;

  const DispatchLog({
    required this.id,
    required this.emergencyId,
    required this.responderId,
    required this.eventType,
    required this.note,
    required this.timestamp,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'emergencyId': emergencyId,
    'responderId': responderId,
    'eventType': eventType,
    'note': note,
    'timestamp': timestamp.toIso8601String(),
  };
}
