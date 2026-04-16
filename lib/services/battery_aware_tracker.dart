class BatteryAwareTracker {
  /// Returns recommended location polling interval based on battery percentage.
  static Duration getPollingInterval({required int batteryPercent, required bool isCharging}) {
    if (isCharging) {
      return const Duration(seconds: 2);
    }
    if (batteryPercent > 50) {
      return const Duration(seconds: 3);
    } else if (batteryPercent > 20) {
      return const Duration(seconds: 6);
    } else {
      return const Duration(seconds: 15);
    }
  }
}
