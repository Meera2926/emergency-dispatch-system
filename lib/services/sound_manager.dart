class SoundManager {
  bool _isSirenActive = false;
  double _volume = 1.0;

  bool get isSirenActive => _isSirenActive;
  double get volume => _volume;

  void playSiren() {
    _isSirenActive = true;
  }

  void stopSiren() {
    _isSirenActive = false;
  }

  void setVolume(double volume) {
    _volume = volume.clamp(0.0, 1.0);
  }
}
