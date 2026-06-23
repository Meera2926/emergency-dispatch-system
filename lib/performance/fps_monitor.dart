class FpsMonitor {
  int _renderedFrames = 0;
  DateTime? _windowStartTime;

  void onFrameRendered() {
    _renderedFrames++;
    _windowStartTime ??= DateTime.now();
  }

  double calculateCurrentFps() {
    if (_windowStartTime == null) return 60.0;
    final seconds = DateTime.now().difference(_windowStartTime!).inMilliseconds / 1000.0;
    if (seconds <= 0) return 60.0;
    return _renderedFrames / seconds;
  }

  void reset() {
    _renderedFrames = 0;
    _windowStartTime = null;
  }
}
