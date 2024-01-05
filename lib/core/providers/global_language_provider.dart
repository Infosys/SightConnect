import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const appLocales = <AppLocale>[
  AppLocale("en", "English", "English"),
  AppLocale("te", "Telugu", "తెలుగు"),
  AppLocale("hi", "Hindi", "हिन्दी"),
  AppLocale("ta", "Tamil", "தமிழ்"),
  AppLocale("ml", "Malayalam", "മലയാളം"),
  AppLocale("kn", "Kannada", "ಕನ್ನಡ"),
  AppLocale("or", "Odiya", "ଓଡ଼ିଆ"),
  AppLocale("bn", "Bengali", "বাংলা"),
  AppLocale("as", "Assamese", "অসমীয়া"),
  AppLocale("gu", "Gujarati", "ગુજરાતી"),
  AppLocale("pa", "Punjabi", "ਪੰਜਾਬੀ"),
  AppLocale("mr", "Marathi", "मराठी"),
];

class AppLocale {
  const AppLocale(this.locale, this.name, this.localeName);

  final String locale;
  final String name;
  final String localeName;
}

var globalLanguageProvider =
    ChangeNotifierProvider((ref) => GlobalLanguageProvider());

class GlobalLanguageProvider extends ChangeNotifier {
  Locale _currentLocale = const Locale('en');

  Locale get currentLocale => _currentLocale;

  void setCurrentLocale(String locale) {
    _currentLocale = Locale(locale);
    notifyListeners();
  }
}
