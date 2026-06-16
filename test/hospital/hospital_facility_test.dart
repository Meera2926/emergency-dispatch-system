import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/hospital/hospital_facility.dart';

void main() {
  group('HospitalFacility Tests', () {
    test('Calculates remaining ICU capacity correctly', () {
      const facility = HospitalFacility(
        id: 'HOSP-1',
        name: 'City General Hospital',
        latitude: 12.97,
        longitude: 77.59,
        totalIcuBeds: 20,
        occupiedIcuBeds: 18,
        hasTraumaCenter: true,
      );

      expect(facility.availableIcuBeds, equals(2));
      expect(facility.hasCapacity, isTrue);
    });
  });
}
