# ERDS Developer Setup & Onboarding Guide

## Prerequisites
1. **Flutter SDK**: 3.x or later (`flutter doctor` should be green).
2. **Android Studio / Xcode**: For emulator and simulator testing.
3. **Google Maps API Key**:
   - Enable Maps SDK for Android & iOS in Google Cloud Console.
   - Insert key in `android/app/src/main/AndroidManifest.xml` and `ios/Runner/AppDelegate.swift`.

## Quick Start
```bash
# Clone the repository
git clone https://github.com/Meera2926/emergency-dispatch-system.git
cd emergency-dispatch-system

# Fetch dependencies
flutter pub get

# Run unit tests
flutter test

# Launch debug app
flutter run
```
