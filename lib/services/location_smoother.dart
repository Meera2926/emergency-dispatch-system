class LocationSmoother {
  final double smoothingFactor;
  double? _lastLat;
  double? _lastLng;

  LocationSmoother({this.smoothingFactor = 0.35});

  (double, double) smooth(double rawLat, double rawLng) {
    if (_lastLat == null || _lastLng == null) {
      _lastLat = rawLat;
      _lastLng = rawLng;
      return (rawLat, rawLng);
    }

    final smoothLat = _lastLat! + smoothingFactor * (rawLat - _lastLat!);
    final smoothLng = _lastLng! + smoothingFactor * (rawLng - _lastLng!);

    _lastLat = smoothLat;
    _lastLng = smoothLng;
    return (smoothLat, smoothLng);
  }

  void reset() {
    _lastLat = null;
    _lastLng = null;
  }
}
