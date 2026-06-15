enum HazardType { flood, structuralCollapse, gasLeak, activeThreat, wildfire }

class DangerZone {
  final String id;
  final String title;
  final HazardType hazard;
  final double centerLat;
  final double centerLng;
  final double radiusMeters;

  const DangerZone({
    required this.id,
    required this.title,
    required this.hazard,
    required this.centerLat,
    required this.centerLng,
    required this.radiusMeters,
  });
}
