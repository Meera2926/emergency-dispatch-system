import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/utils/validators.dart';

void main() {
  group('Validators Tests', () {
    test('Latitude and Longitude bounds check', () {
      expect(Validators.isValidLatitude(45.0), isTrue);
      expect(Validators.isValidLatitude(-95.0), isFalse);
      expect(Validators.isValidLongitude(120.0), isTrue);
      expect(Validators.isValidLongitude(185.0), isFalse);
    });

    test('Phone number validation', () {
      expect(Validators.isValidPhoneNumber('+919876543210'), isTrue);
      expect(Validators.isValidPhoneNumber('12345'), isFalse);
    });
  });
}
