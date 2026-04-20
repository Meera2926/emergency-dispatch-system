import 'package:flutter/foundation.dart';
import 'app_settings_state.dart';

class AppSettingsNotifier extends ChangeNotifier {
  AppSettingsState _state = const AppSettingsState();

  AppSettingsState get state => _state;

  void toggleSound(bool enabled) {
    _state = _state.copyWith(soundEnabled: enabled);
    notifyListeners();
  }

  void toggleHaptics(bool enabled) {
    _state = _state.copyWith(hapticsEnabled: enabled);
    notifyListeners();
  }

  void toggleDarkMode(bool enabled) {
    _state = _state.copyWith(darkMode: enabled);
    notifyListeners();
  }
}
