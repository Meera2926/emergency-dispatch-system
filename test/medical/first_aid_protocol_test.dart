import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/medical/first_aid_protocol_registry.dart';

void main() {
  group('FirstAidProtocolRegistry Tests', () {
    test('Provides 3-step AHA CPR protocol', () {
      final steps = FirstAidProtocolRegistry.getCprProtocol();
      expect(steps.length, equals(3));
      expect(steps[0].title, equals('Check Responsiveness'));
    });
  });
}
