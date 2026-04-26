class LocationAnonymizer {
  /// Truncates latitude and longitude to specified decimal places for privacy preservation.
  static (double, double) anonymize(double lat, double lng, {int precision = 3}) {
    final factor = precision == 3 ? 1000.0 : 100.0;
    final anonLat = (lat * factor).round() / factor;
    final anonLng = (lng * factor).round() / factor;
    return (anonLat, anonLng);
  }
}
