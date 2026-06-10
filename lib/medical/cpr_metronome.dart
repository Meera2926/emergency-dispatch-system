class CprMetronome {
  static const int targetBpm = 110; // AHA recommendation 100-120 bpm
  static const Duration beatInterval = Duration(milliseconds: 545);

  bool _isRunning = false;
  int _compressionCount = 0;

  bool get isRunning => _isRunning;
  int get compressionCount => _compressionCount;

  void start() {
    _isRunning = true;
    _compressionCount = 0;
  }

  void tick() {
    if (_isRunning) {
      _compressionCount++;
    }
  }

  void stop() {
    _isRunning = false;
  }
}
