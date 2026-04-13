import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/utils/formatters.dart';

void main() {
  group('Formatters Tests', () {
    test('formatDistance formats meters when under 1km', () {
      expect(Formatters.formatDistance(0.45), equals('450 m'));
    });

    test('formatDistance formats km when 1km or above', () {
      expect(Formatters.formatDistance(4.56), equals('4.6 km'));
    });

    test('formatDurationMinutes formats mm:ss correctly', () {
      expect(Formatters.formatDurationMinutes(125), equals('02:05'));
    });

    test('sanitizePhoneNumber strips special characters', () {
      expect(Formatters.sanitizePhoneNumber('+91 (987) 654-3210'), equals('+919876543210'));
    });
  });
}
