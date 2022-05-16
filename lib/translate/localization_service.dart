import 'dart:ui';
import 'package:flutter_getx_themes/config/app_config.dart';
import 'package:flutter_getx_themes/models/language_model.dart';
import 'package:get/get.dart';
import 'lo_LA.dart';
import 'en_US.dart';

class LocalizationService extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {'en_US': enUS, 'lo_LA': loLA};

  // Supported languages
  // Needs to be same order with locales
  static final List<LanguageModel> langs = [
    LanguageModel(
        nativeName: 'English', code: 'en', key: 'US', fullKey: 'en_US'),
    LanguageModel(
        nativeName: 'ພາສາລາວ', code: 'lo', key: 'LA', fullKey: 'lo_LA'),
  ];

  static LanguageModel defaultLang =
      langs.firstWhere((lang) => lang.code == AppConfig.defaultLocale);

  static final locales = [
    const Locale('lo', 'LA'),
    const Locale('en', 'US'),
  ];

  // Gets locale from language, and updates the locale
  static void changeLocale(LanguageModel lang) {
    Get.updateLocale(Locale(lang.code, lang.key));
    defaultLang = lang;
  }
}
