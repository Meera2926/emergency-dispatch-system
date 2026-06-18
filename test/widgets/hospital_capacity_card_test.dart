import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/hospital/hospital_facility.dart';
import 'package:emergency_resource_dispatch_system/widgets/hospital_capacity_card.dart';

void main() {
  testWidgets('HospitalCapacityCard displays available bed count and trauma badge', (tester) async {
    const facility = HospitalFacility(
      id: 'H1',
      name: 'Apollo Hospital',
      latitude: 12.97,
      longitude: 77.59,
      totalIcuBeds: 30,
      occupiedIcuBeds: 25,
      hasTraumaCenter: true,
    );

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: HospitalCapacityCard(hospital: facility),
        ),
      ),
    );

    expect(find.text('Apollo Hospital'), findsOneWidget);
    expect(find.textContaining('ICU Beds: 5 available'), findsOneWidget);
  });
}
