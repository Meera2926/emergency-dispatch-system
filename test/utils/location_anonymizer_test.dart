import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/utils/location_anonymizer.dart';

void main() {
  group('LocationAnonymizer Tests', () {
    test('Truncates coordinate precision accurately', () {
      final (anonLat, anonLng) = LocationAnonymizer.anonymize(12.345678, 77.876543, precision: 3);
      expect(anonLat, equals(12.346));
      expect(anonLng, equals(77.877));
    });
  });
}
