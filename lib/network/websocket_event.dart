enum WebSocketEventType {
  connect,
  disconnect,
  telemetryUpdate,
  statusChanged,
  emergencyCancelled,
  heartbeatPing,
  heartbeatPong;

  static WebSocketEventType parse(String name) {
    return WebSocketEventType.values.firstWhere(
      (e) => e.name == name,
      orElse: () => WebSocketEventType.telemetryUpdate,
    );
  }
}

class WebSocketEvent {
  final WebSocketEventType type;
  final Map<String, dynamic> payload;
  final DateTime timestamp;

  const WebSocketEvent({
    required this.type,
    required this.payload,
    required this.timestamp,
  });

  Map<String, dynamic> toJson() => {
    'type': type.name,
    'payload': payload,
    'timestamp': timestamp.toIso8601String(),
  };
}
