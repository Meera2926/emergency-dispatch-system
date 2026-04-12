class Formatters {
  Formatters._();

  static String formatDistance(double km) {
    if (km < 1.0) {
      final meters = (km * 1000).round();
      return '$meters m';
    }
    return '${km.toStringAsFixed(1)} km';
  }

  static String formatDurationMinutes(int totalSeconds) {
    final minutes = totalSeconds ~/ 60;
    final seconds = totalSeconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  static String sanitizePhoneNumber(String raw) {
    return raw.replaceAll(RegExp(r'[^0-9+]'), '');
  }

  static String formatCoordinates(double lat, double lng) {
    return '${lat.toStringAsFixed(4)}°, ${lng.toStringAsFixed(4)}°';
  }
}
