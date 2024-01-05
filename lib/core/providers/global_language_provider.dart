import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const appLocales = <AppLocale>[
  AppLocale("en", "Aa" ,"English", "English"),
  AppLocale("te", "అ" ,"Telugu", "తెలుగు"),
  AppLocale("hi", "अ" ,"Hindi", "हिन्दी"),
  AppLocale("ta", "அ" ,"Tamil", "தமிழ்"),
  AppLocale("ml", "എ" ,"Malayalam", "മലയാളം"),
  AppLocale("kn", "ಅ" ,"Kannada", "ಕನ್ನಡ"),
  AppLocale("or", "ଅ" ,"Odiya", "ଓଡ଼ିଆ"),
  AppLocale("bn", "ক" ,"Bengali", "বাংলা"),
  AppLocale("as", "অ" ,"Assamese", "অসমীয়া"),
  AppLocale("gu", "આ" ,"Gujarati", "ગુજરાતી"),
  AppLocale("pa", "ੳ" ,"Punjabi", "ਪੰਜਾਬੀ"),
  AppLocale("mr", "अ" ,"Marathi", "मराठी"),
];

class AppLocale {
  const AppLocale(this.locale, this.localeSymbol ,this.name, this.localeName);

  final String locale;
  final String localeSymbol;
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
