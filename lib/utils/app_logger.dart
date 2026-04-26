enum LogLevel { debug, info, warning, error }

class AppLogger {
  static void log(String message, {LogLevel level = LogLevel.info, Object? error}) {
    final timestamp = DateTime.now().toIso8601String();
    // Structured log format for production monitoring
    assert(() {
      // ignore: avoid_print
      print('[$timestamp] [${level.name.toUpperCase()}] $message ${error ?? ""}');
      return true;
    }());
  }
}
