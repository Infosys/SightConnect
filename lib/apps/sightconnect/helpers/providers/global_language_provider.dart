/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/common/chatbot/utils/language_utils.dart';
import 'package:eye_care_for_all/services/shared_preference.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const appLocales = <AppLocale>[
  AppLocale(
    locale: "en",
    localeSymbol: "Aa",
    name: "English",
    localeName: "English",
  ),
  AppLocale(
    locale: "te",
    localeSymbol: "అ",
    name: "Telugu",
    localeName: "తెలుగు",
  ),
  AppLocale(
    locale: "hi",
    localeSymbol: "अ",
    name: "Hindi",
    localeName: "हिन्दी",
  ),
  AppLocale(
    locale: "ta",
    localeSymbol: "அ",
    name: "Tamil",
    localeName: "தமிழ்",
  ),
  AppLocale(
    locale: "ml",
    localeSymbol: "എ",
    name: "Malayalam",
    localeName: "മലയാളം",
  ),
  AppLocale(
    locale: "kn",
    localeSymbol: "ಅ",
    name: "Kannada",
    localeName: "ಕನ್ನಡ",
  ),
  AppLocale(
    locale: "or",
    localeSymbol: "ଅ",
    name: "Odiya",
    localeName: "ଓଡ଼ିଆ",
  ),
  AppLocale(
    locale: "bn",
    localeSymbol: "ক",
    name: "Bengali",
    localeName: "বাংলা",
  ),
  AppLocale(
    locale: "as",
    localeSymbol: "অ",
    name: "Assamese",
    localeName: "অসমীয়া",
  ),
  AppLocale(
    locale: "gu",
    localeSymbol: "આ",
    name: "Gujarati",
    localeName: "ગુજરાતી",
  ),
  AppLocale(
    locale: "pa",
    localeSymbol: "ੳ",
    name: "Punjabi",
    localeName: "ਪੰਜਾਬੀ",
    flag: false,
  ),
  AppLocale(
    locale: "mr",
    localeSymbol: "अ",
    name: "Marathi",
    localeName: "मराठी",
  ),
];

class AppLocale {
  const AppLocale({
    required this.locale,
    required this.localeSymbol,
    required this.name,
    required this.localeName,
    this.flag = true,
  });

  final String locale;
  final String localeSymbol;
  final String name;
  final String localeName;
  final bool flag;
}

var globalLanguageProvider = ChangeNotifierProvider(
  (ref) {
    final lang = SharedPreferenceService.getLanguage;
    return GlobalLanguageProvider(lang);
  },
);

class GlobalLanguageProvider extends ChangeNotifier {
  String? _currentLocale;
  GlobalLanguageProvider(this._currentLocale);

  String get currentLanguage => resolveLanguageByLocaleCode(_currentLocale);
  Locale? get currentLocale =>
      _currentLocale == null ? null : Locale(_currentLocale!);

  Future<void> setCurrentLocale(String locale) async {
    _currentLocale = locale;
    await SharedPreferenceService.setLanguage(locale);
    notifyListeners();
  }
}
