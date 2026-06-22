import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/accessibility/high_contrast_theme.dart';

void main() {
  group('HighContrastTheme Tests', () {
    test('Configures pure black background for maximum contrast', () {
      final theme = HighContrastTheme.themeData;
      expect(theme.scaffoldBackgroundColor, equals(Colors.black));
      expect(theme.brightness, equals(Brightness.dark));
    });
  });
}
