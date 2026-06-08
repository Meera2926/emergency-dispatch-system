class InterpolationEngine {
  /// Linear interpolation between two coordinates.
  static (double, double) interpolate({
    required double startLat,
    required double startLng,
    required double endLat,
    required double endLng,
    required double fraction, // 0.0 to 1.0
  }) {
    final clamped = fraction.clamp(0.0, 1.0);
    final lat = startLat + (endLat - startLat) * clamped;
    final lng = startLng + (endLng - startLng) * clamped;
    return (lat, lng);
  }
}
