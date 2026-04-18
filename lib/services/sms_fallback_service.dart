class SmsFallbackService {
  static String buildEmergencySmsPayload({
    required String emergencyType,
    required double lat,
    required double lng,
    required String victimName,
  }) {
    final mapsUrl = 'https://maps.google.com/?q=$lat,$lng';
    return 'EMERGENCY ALERT: $emergencyType triggered by $victimName. Location: $mapsUrl. Immediate assistance requested.';
  }
}
