class AppSettingsState {
  final bool soundEnabled;
  final bool hapticsEnabled;
  final bool darkMode;
  final int sosHoldDurationSeconds;

  const AppSettingsState({
    this.soundEnabled = true,
    this.hapticsEnabled = true,
    this.darkMode = true,
    this.sosHoldDurationSeconds = 3,
  });

  AppSettingsState copyWith({
    bool? soundEnabled,
    bool? hapticsEnabled,
    bool? darkMode,
    int? sosHoldDurationSeconds,
  }) {
    return AppSettingsState(
      soundEnabled: soundEnabled ?? this.soundEnabled,
      hapticsEnabled: hapticsEnabled ?? this.hapticsEnabled,
      darkMode: darkMode ?? this.darkMode,
      sosHoldDurationSeconds: sosHoldDurationSeconds ?? this.sosHoldDurationSeconds,
    );
  }
}
