import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/models/emergency_type.dart';
import 'package:emergency_resource_dispatch_system/models/emergency_severity.dart';

void main() {
  group('Emergency Enums Tests', () {
    test('EmergencyType parses valid string', () {
      expect(EmergencyType.parse('police'), equals(EmergencyType.police));
      expect(EmergencyType.parse('fire'), equals(EmergencyType.fire));
      expect(EmergencyType.parse('unknown'), equals(EmergencyType.medical));
    });

    test('EmergencySeverity priority ranking is accurate', () {
      expect(EmergencySeverity.critical.priorityScore > EmergencySeverity.medium.priorityScore, isTrue);
      expect(EmergencySeverity.low.priorityScore, equals(1));
    });
  });
}
