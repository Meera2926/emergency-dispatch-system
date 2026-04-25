import 'strings_en.dart';
import 'strings_hi.dart';
import 'strings_ta.dart';

enum AppLanguage { en, hi, ta }

class AppLocalizations {
  final AppLanguage language;

  AppLocalizations({this.language = AppLanguage.en});

  String get(String key) {
    switch (language) {
      case AppLanguage.hi:
        return StringsHi.values[key] ?? StringsEn.values[key] ?? key;
      case AppLanguage.ta:
        return StringsTa.values[key] ?? StringsEn.values[key] ?? key;
      case AppLanguage.en:
      default:
        return StringsEn.values[key] ?? key;
    }
  }
}
