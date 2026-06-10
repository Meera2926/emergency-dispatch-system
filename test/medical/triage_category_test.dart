import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/medical/triage_category.dart';

void main() {
  group('TriageCategory Tests', () {
    test('Immediate priority is ranked highest', () {
      expect(TriageCategory.immediate.priority, equals(1));
      expect(TriageCategory.immediate.code, equals('RED'));
    });
  });
}
