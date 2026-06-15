import 'package:emergency_resource_dispatch_system/utils/geo_calculator.dart';
import 'danger_zone.dart';

class GeofenceManager {
  final List<DangerZone> _activeDangerZones = [];

  void registerDangerZone(DangerZone zone) {
    _activeDangerZones.add(zone);
  }

  DangerZone? getActiveHazardAt(double lat, double lng) {
    for (final zone in _activeDangerZones) {
      final distKm = GeoCalculator.distanceBetween(lat, lng, zone.centerLat, zone.centerLng);
      if (distKm * 1000.0 <= zone.radiusMeters) {
        return zone;
      }
    }
    return null;
  }
}
