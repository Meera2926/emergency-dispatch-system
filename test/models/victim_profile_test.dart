import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/models/victim_profile.dart';

void main() {
  group('VictimProfile Tests', () {
    test('Serializes to and from JSON cleanly', () {
      const profile = VictimProfile(
        id: 'vic-123',
        name: 'Jane Doe',
        phoneNumber: '+919876543210',
        bloodGroup: 'O+',
        medicalConditions: ['Asthma'],
        emergencyContactName: 'John Doe',
        emergencyContactPhone: '+919876543211',
      );

      final json = profile.toJson();
      final parsed = VictimProfile.fromJson(json);

      expect(parsed.id, equals('vic-123'));
      expect(parsed.bloodGroup, equals('O+'));
      expect(parsed.medicalConditions, contains('Asthma'));
    });
  });
}
