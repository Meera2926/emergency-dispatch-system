import 'package:emergency_resource_dispatch_system/utils/geo_calculator.dart';

class SpeedCalculator {
  /// Computes vehicle speed in km/h between two timestamped points.
  static double computeSpeedKmh({
    required double lat1,
    required double lng1,
    required DateTime time1,
    required double lat2,
    required double lng2,
    required DateTime time2,
  }) {
    final distanceKm = GeoCalculator.distanceBetween(lat1, lng1, lat2, lng2);
    final hours = time2.difference(time1).inMilliseconds / (1000 * 3600);
    if (hours <= 0) return 0.0;
    return distanceKm / hours;
  }
}
