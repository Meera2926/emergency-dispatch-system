import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/models/responder_vehicle.dart';

void main() {
  group('ResponderVehicle Tests', () {
    test('Initializes with default medical flags', () {
      const vehicle = ResponderVehicle(
        registrationPlate: 'KA-01-EM-1122',
        type: VehicleType.ambulance,
        hasDefibrillator: true,
        hasOxygen: true,
      );

      expect(vehicle.type, equals(VehicleType.ambulance));
      expect(vehicle.hasDefibrillator, isTrue);
      expect(vehicle.hasOxygen, isTrue);
    });

    test('Serializes to JSON correctly', () {
      const vehicle = ResponderVehicle(
        registrationPlate: 'KA-01-EM-1122',
        type: VehicleType.policeCruiser,
      );
      final json = vehicle.toJson();
      expect(json['type'], equals('policeCruiser'));
    });
  });
}
