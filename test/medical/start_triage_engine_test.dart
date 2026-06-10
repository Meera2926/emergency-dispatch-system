import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/medical/start_triage_engine.dart';
import 'package:emergency_resource_dispatch_system/medical/triage_category.dart';

void main() {
  group('StartTriageEngine Tests', () {
    test('Walking patient classified as Minor / Green', () {
      final category = StartTriageEngine.assess(
        canWalk: true,
        isBreathing: true,
        respiratoryRatePerMinute: 18,
        hasRadialPulse: true,
        canFollowSimpleCommands: true,
      );
      expect(category, equals(TriageCategory.minor));
    });

    test('High respiratory rate triggers Immediate / Red category', () {
      final category = StartTriageEngine.assess(
        canWalk: false,
        isBreathing: true,
        respiratoryRatePerMinute: 34,
        hasRadialPulse: true,
        canFollowSimpleCommands: true,
      );
      expect(category, equals(TriageCategory.immediate));
    });
  });
}
