class IncidentWatchdog {
  final Duration acknowledgmentTimeout;
  bool _isEscalated = false;

  IncidentWatchdog({
    this.acknowledgmentTimeout = const Duration(seconds: 30),
  });

  bool get isEscalated => _isEscalated;

  void evaluateTimeElapsed(Duration elapsed) {
    if (elapsed >= acknowledgmentTimeout) {
      _isEscalated = true;
    }
  }

  void acknowledge() {
    _isEscalated = false;
  }
}
