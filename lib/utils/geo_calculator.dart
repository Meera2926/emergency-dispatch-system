import 'dart:math' as math;

class GeoCalculator {
  static const double earthRadiusKm = 6371.0;

  /// Calculates the Haversine distance between two coordinates in kilometers.
  static double distanceBetween(
    double startLat,
    double startLng,
    double endLat,
    double endLng,
  ) {
    final dLat = _toRadians(endLat - startLat);
    final dLng = _toRadians(endLng - startLng);

    final a = math.sin(dLat / 2) * math.sin(dLat / 2) +
        math.cos(_toRadians(startLat)) *
            math.cos(_toRadians(endLat)) *
            math.sin(dLng / 2) *
            math.sin(dLng / 2);

    final c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));
    return earthRadiusKm * c;
  }

  /// Calculates initial bearing in degrees from start to end coordinate.
  static double bearingBetween(
    double startLat,
    double startLng,
    double endLat,
    double endLng,
  ) {
    final dLng = _toRadians(endLng - startLng);
    final y = math.sin(dLng) * math.cos(_toRadians(endLat));
    final x = math.cos(_toRadians(startLat)) * math.sin(_toRadians(endLat)) -
        math.sin(_toRadians(startLat)) * math.cos(_toRadians(endLat)) * math.cos(dLng);

    final initialBearing = math.atan2(y, x);
    return (_toDegrees(initialBearing) + 360) % 360;
  }

  static double _toRadians(double degrees) => degrees * (math.pi / 180.0);
  static double _toDegrees(double radians) => radians * (180.0 / math.pi);
}
