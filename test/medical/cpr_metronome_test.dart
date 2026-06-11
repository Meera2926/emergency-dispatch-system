import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/medical/cpr_metronome.dart';

void main() {
  group('CprMetronome Tests', () {
    test('Tracks chest compression count accurately', () {
      final metronome = CprMetronome();
      metronome.start();
      for (int i = 0; i < 30; i++) {
        metronome.tick();
      }
      expect(metronome.compressionCount, equals(30));
      metronome.stop();
      expect(metronome.isRunning, isFalse);
    });
  });
}
