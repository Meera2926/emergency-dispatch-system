class HeartbeatWatchdog {
  final Duration pingInterval;
  final Duration timeoutThreshold;
  DateTime? _lastPongReceived;
  bool _isTimedOut = false;

  HeartbeatWatchdog({
    this.pingInterval = const Duration(seconds: 5),
    this.timeoutThreshold = const Duration(seconds: 15),
  });

  bool get isTimedOut => _isTimedOut;

  void onPongReceived() {
    _lastPongReceived = DateTime.now();
    _isTimedOut = false;
  }

  void checkLiveness(DateTime current) {
    if (_lastPongReceived != null && current.difference(_lastPongReceived!) > timeoutThreshold) {
      _isTimedOut = true;
    }
  }
}
