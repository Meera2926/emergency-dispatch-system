import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/services/sms_fallback_service.dart';

void main() {
  group('SmsFallbackService Tests', () {
    test('Builds formatted SMS alert payload with Google Maps link', () {
      final text = SmsFallbackService.buildEmergencySmsPayload(
        emergencyType: 'Medical',
        lat: 12.9716,
        lng: 77.5946,
        victimName: 'Meera',
      );

      expect(text, contains('EMERGENCY ALERT: Medical'));
      expect(text, contains('Meera'));
      expect(text, contains('https://maps.google.com/?q=12.9716,77.5946'));
    });
  });
}
