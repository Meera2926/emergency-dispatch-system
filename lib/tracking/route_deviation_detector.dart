import 'package:emergency_resource_dispatch_system/utils/geo_calculator.dart';

class RouteDeviationDetector {
  final double thresholdKm;

  const RouteDeviationDetector({this.thresholdKm = 0.5});

  bool isOffRoute({
    required double currentLat,
    required double currentLng,
    required List<(double, double)> polylinePoints,
  }) {
    if (polylinePoints.isEmpty) return false;

    double minDistance = double.infinity;
    for (final pt in polylinePoints) {
      final dist = GeoCalculator.distanceBetween(currentLat, currentLng, pt.$1, pt.$2);
      if (dist < minDistance) {
        minDistance = dist;
      }
    }
    return minDistance > thresholdKm;
  }
}
