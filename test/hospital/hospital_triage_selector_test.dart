import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/hospital/hospital_facility.dart';
import 'package:emergency_resource_dispatch_system/hospital/hospital_triage_selector.dart';

void main() {
  group('HospitalTriageSelector Tests', () {
    test('Selects nearest hospital with available ICU and trauma center', () {
      const facilities = [
        HospitalFacility(
          id: 'H1',
          name: 'Full Hospital',
          latitude: 12.971,
          longitude: 77.591,
          totalIcuBeds: 10,
          occupiedIcuBeds: 10,
          hasTraumaCenter: true,
        ),
        HospitalFacility(
          id: 'H2',
          name: 'Nearest Capable Hospital',
          latitude: 12.980,
          longitude: 77.600,
          totalIcuBeds: 15,
          occupiedIcuBeds: 8,
          hasTraumaCenter: true,
        ),
      ];

      final selected = HospitalTriageSelector.selectBestHospital(
        victimLat: 12.970,
        victimLng: 77.590,
        facilities: facilities,
        requiresTrauma: true,
      );

      expect(selected?.id, equals('H2'));
    });
  });
}
