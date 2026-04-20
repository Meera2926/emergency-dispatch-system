import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/state/app_settings_notifier.dart';

void main() {
  group('AppSettingsNotifier Tests', () {
    test('Toggles preferences successfully', () {
      final notifier = AppSettingsNotifier();
      expect(notifier.state.soundEnabled, isTrue);

      notifier.toggleSound(false);
      expect(notifier.state.soundEnabled, isFalse);

      notifier.toggleDarkMode(false);
      expect(notifier.state.darkMode, isFalse);
    });
  });
}
