class EtaRecalculator {
  /// Estimates remaining arrival minutes based on distance and average city speed.
  static double calculateEtaMinutes({
    required double remainingDistanceKm,
    double averageSpeedKmh = 35.0,
  }) {
    if (averageSpeedKmh <= 0 || remainingDistanceKm <= 0) return 1.0;
    final hours = remainingDistanceKm / averageSpeedKmh;
    final minutes = hours * 60;
    return minutes < 1.0 ? 1.0 : minutes;
  }
}
