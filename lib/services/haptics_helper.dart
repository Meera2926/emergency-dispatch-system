enum HapticFeedbackType {
  lightTap,
  mediumImpact,
  heavyAlarm,
  continuousPulse;
}

class HapticsHelper {
  static HapticFeedbackType getPatternForSeverity(int severityScore) {
    if (severityScore >= 4) {
      return HapticFeedbackType.continuousPulse;
    } else if (severityScore >= 3) {
      return HapticFeedbackType.heavyAlarm;
    } else if (severityScore >= 2) {
      return HapticFeedbackType.mediumImpact;
    }
    return HapticFeedbackType.lightTap;
  }
}
