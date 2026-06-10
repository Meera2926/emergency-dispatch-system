import 'triage_category.dart';

class StartTriageEngine {
  /// Evaluates START (Simple Triage and Rapid Treatment) assessment algorithm.
  static TriageCategory assess({
    required bool canWalk,
    required bool isBreathing,
    required double respiratoryRatePerMinute,
    required bool hasRadialPulse,
    required bool canFollowSimpleCommands,
  }) {
    if (canWalk) return TriageCategory.minor;
    if (!isBreathing) return TriageCategory.deceased;
    if (respiratoryRatePerMinute > 30 || respiratoryRatePerMinute < 10) {
      return TriageCategory.immediate;
    }
    if (!hasRadialPulse) return TriageCategory.immediate;
    if (!canFollowSimpleCommands) return TriageCategory.immediate;

    return TriageCategory.delayed;
  }
}
