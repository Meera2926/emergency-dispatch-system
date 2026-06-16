import 'package:emergency_resource_dispatch_system/utils/geo_calculator.dart';
import 'hospital_facility.dart';

class HospitalTriageSelector {
  static HospitalFacility? selectBestHospital({
    required double victimLat,
    required double victimLng,
    required List<HospitalFacility> facilities,
    bool requiresTrauma = false,
  }) {
    final eligible = facilities.where((h) {
      if (!h.hasCapacity) return false;
      if (requiresTrauma && !h.hasTraumaCenter) return false;
      return true;
    }).toList();

    if (eligible.isEmpty) return null;

    eligible.sort((a, b) {
      final distA = GeoCalculator.distanceBetween(victimLat, victimLng, a.latitude, a.longitude);
      final distB = GeoCalculator.distanceBetween(victimLat, victimLng, b.latitude, b.longitude);
      return distA.compareTo(distB);
    });

    return eligible.first;
  }
}
