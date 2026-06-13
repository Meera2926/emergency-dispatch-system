import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/medical/choking_guide.dart';

void main() {
  group('ChokingGuide Tests', () {
    test('Provides 5-and-5 choking relief steps', () {
      final steps = ChokingGuide.getAdultChokingSteps();
      expect(steps.length, equals(2));
      expect(steps[1].title, equals('5 Abdominal Thrusts'));
    });
  });
}
