import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/medical/first_aid_step.dart';

void main() {
  group('FirstAidStep Tests', () {
    test('Serializes rescue step instructions cleanly', () {
      const step = FirstAidStep(
        stepNumber: 1,
        title: 'Check Safety',
        instruction: 'Ensure scene is safe from hazards before approaching victim.',
      );

      final json = step.toJson();
      expect(json['stepNumber'], equals(1));
      expect(json['title'], equals('Check Safety'));
    });
  });
}
