import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/dispatch/multi_agency_coordinator.dart';
import 'package:emergency_resource_dispatch_system/models/emergency_type.dart';

void main() {
  group('MultiAgencyCoordinator Tests', () {
    test('Accidents coordinate both ambulance and traffic police', () {
      final agencies = MultiAgencyCoordinator.determineRequiredAgencies(EmergencyType.accident);
      expect(agencies, contains('AMBULANCE'));
      expect(agencies, contains('TRAFFIC_POLICE'));
    });
  });
}
