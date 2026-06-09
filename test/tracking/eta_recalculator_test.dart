import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/tracking/eta_recalculator.dart';

void main() {
  group('EtaRecalculator Tests', () {
    test('Estimates realistic arrival minutes', () {
      final eta = EtaRecalculator.calculateEtaMinutes(
        remainingDistanceKm: 7.0,
        averageSpeedKmh: 35.0,
      );
      expect(eta, equals(12.0));
    });

    test('Returns minimum 1 minute ETA when immediately arriving', () {
      final eta = EtaRecalculator.calculateEtaMinutes(remainingDistanceKm: 0.05);
      expect(eta, equals(1.0));
    });
  });
}
