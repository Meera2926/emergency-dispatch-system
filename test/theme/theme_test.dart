import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/theme/color_schemes.dart';
import 'package:emergency_resource_dispatch_system/theme/text_themes.dart';

void main() {
  group('Theme Tests', () {
    test('Dark color scheme has accessible primary color', () {
      expect(EmergencyColorSchemes.darkScheme.primary.value, equals(0xFFFF3D00));
    });

    test('TextTheme defines clear font sizes', () {
      expect(EmergencyTextThemes.textTheme.displayLarge?.fontSize, equals(32));
    });
  });
}
