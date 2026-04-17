import 'package:emergency_resource_dispatch_system/utils/geo_calculator.dart';

class CandidateResponder {
  final String id;
  final String name;
  final double lat;
  final double lng;
  final bool isAvailable;

  const CandidateResponder({
    required this.id,
    required this.name,
    required this.lat,
    required this.lng,
    required this.isAvailable,
  });
}

class DispatchAllocator {
  static CandidateResponder? findNearestAvailable({
    required double victimLat,
    required double victimLng,
    required List<CandidateResponder> pool,
  }) {
    final available = pool.where((r) => r.isAvailable).toList();
    if (available.isEmpty) return null;

    available.sort((a, b) {
      final distA = GeoCalculator.distanceBetween(victimLat, victimLng, a.lat, a.lng);
      final distB = GeoCalculator.distanceBetween(victimLat, victimLng, b.lat, b.lng);
      return distA.compareTo(distB);
    });

    return available.first;
  }
}
