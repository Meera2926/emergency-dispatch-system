class TelemetryDao {
  final List<Map<String, dynamic>> _telemetryLog = [];

  void appendPoint({
    required String emergencyId,
    required double lat,
    required double lng,
    required DateTime recordedAt,
  }) {
    _telemetryLog.add({
      'emergencyId': emergencyId,
      'lat': lat,
      'lng': lng,
      'recordedAt': recordedAt.toIso8601String(),
    });
  }

  List<Map<String, dynamic>> getTrail(String emergencyId) {
    return _telemetryLog.where((p) => p['emergencyId'] == emergencyId).toList();
  }

  void purgeOldPoints(Duration maxAge) {
    final cutoff = DateTime.now().subtract(maxAge);
    _telemetryLog.removeWhere((p) {
      final dt = DateTime.parse(p['recordedAt'] as String);
      return dt.isBefore(cutoff);
    });
  }
}
