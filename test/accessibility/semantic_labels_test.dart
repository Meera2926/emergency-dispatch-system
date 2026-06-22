import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/accessibility/semantic_labels.dart';

void main() {
  group('SemanticLabels Tests', () {
    test('Contains descriptive accessibility instructions for SOS trigger', () {
      expect(SemanticLabels.sosButton, contains('Emergency SOS Button'));
      expect(SemanticLabels.sosButton, contains('Double tap and hold'));
    });
  });
}
