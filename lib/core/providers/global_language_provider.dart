import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appLocales = <AppLocale>[
  AppLocale("en", "English", "English", Colors.blue.shade100),
  AppLocale("te", "Telugu", "తెలుగు", Colors.green.shade100),
  AppLocale("hi", "Hindi", "हिन्दी", Colors.yellow.shade100),
  AppLocale("ta", "Tamil", "தமிழ்", Colors.pink.shade100),
  AppLocale("ml", "Malayalam", "മലയാളം", Colors.purple.shade100),
  AppLocale("kn", "Kannada", "ಕನ್ನಡ", Colors.orange.shade100),
  AppLocale("or", "Odiya", "ଓଡ଼ିଆ", Colors.cyan.shade100),
  AppLocale("bn", "Bengali", "বাংলা", Colors.deepOrange.shade100),
  // AppLocale("as", "Assamese", "অসমীয়া", Colors.green.shade100),
  // AppLocale("gu", "Gujarati", "ગુજરાતી", Colors.yellow.shade100),
  // AppLocale("pa", "Punjabi", "ਪੰਜਾਬੀ", Colors.pink.shade100),
  // AppLocale("mr", "Marathi", "मराठी", Colors.purple.shade100),
];

final x = Colors.blue.shade100;

class AppLocale {
  const AppLocale(this.locale, this.name, this.localeName, this.color);

  final String locale;
  final String name;
  final String localeName;
  final Color color;
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
