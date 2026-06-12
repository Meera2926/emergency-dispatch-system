import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/medical/bleeding_control_guide.dart';

void main() {
  group('BleedingControlGuide Tests', () {
    test('Retrieves severe hemorrhage protocol steps', () {
      final steps = BleedingControlGuide.getProtocol();
      expect(steps.length, equals(3));
      expect(steps[2].title, equals('Tourniquet Application'));
    });
  });
}
