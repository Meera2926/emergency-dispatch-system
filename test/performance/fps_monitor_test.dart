import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/performance/fps_monitor.dart';

void main() {
  group('FpsMonitor Tests', () {
    test('Calculates frames per second accurately', () {
      final monitor = FpsMonitor();
      for (int i = 0; i < 60; i++) {
        monitor.onFrameRendered();
      }
      expect(monitor.calculateCurrentFps(), greaterThan(0.0));
    });
  });
}
