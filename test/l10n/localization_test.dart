import 'package:flutter_test/flutter_test.dart';
import 'package:emergency_resource_dispatch_system/l10n/app_localizations.dart';

void main() {
  group('AppLocalizations Tests', () {
    test('English translations return correct values', () {
      final loc = AppLocalizations(language: AppLanguage.en);
      expect(loc.get('sos_button'), equals('HOLD FOR SOS'));
      expect(loc.get('police'), equals('Police'));
    });

    test('Hindi translations return localized strings', () {
      final loc = AppLocalizations(language: AppLanguage.hi);
      expect(loc.get('help_on_the_way'), equals('मदद रास्ते में है'));
    });

    test('Tamil translations return localized strings', () {
      final loc = AppLocalizations(language: AppLanguage.ta);
      expect(loc.get('ambulance'), equals('ஆம்புலன்ஸ்'));
    });
  });
}
