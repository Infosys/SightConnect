import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const appLocales = <AppLocale>[
  AppLocale("en", "English"),
  AppLocale("te", "Telugu"),
  AppLocale("hi", "Hindi"),
];

class AppLocale {
  const AppLocale(this.locale, this.name);

  final String locale;
  final String name;
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
