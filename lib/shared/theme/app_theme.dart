import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

var themeProvider = StateNotifierProvider<AppTheme, ThemeMode>((ref) {
  return AppTheme();
});

class AppTheme extends StateNotifier<ThemeMode> {
  AppTheme() : super(ThemeMode.light);

  void toggleTheme() {
    state = state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  }

  static ThemeData lightTheme = ThemeData(
    primarySwatch: MaterialColor(
      const Color(0xff296DF6).value,
      const {
        50: Color(0xff296DF6),
        100: Color(0xff296DF6),
        200: Color(0xff296DF6),
        300: Color(0xff296DF6),
        400: Color(0xff296DF6),
        500: Color(0xff296DF6),
        600: Color(0xff296DF6),
        700: Color(0xff296DF6),
        800: Color(0xff296DF6),
        900: Color(0xff296DF6),
      },
    ),
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColor.kScaffold,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    iconTheme: const IconThemeData(
      color: AppColor.kBlack,
      size: 24,
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: AppColor.kScaffold,
      foregroundColor: AppColor.kBlack,
      iconTheme: const IconThemeData(
        color: AppColor.kBlack,
      ),
      titleTextStyle: applyFiraSansFont(fontWeight: FontWeight.w500),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        shape: const StadiumBorder(),
        textStyle: applyRobotoFont(
          fontSize: 14,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: const StadiumBorder(),
        side: const BorderSide(
          color: AppColor.kPrimary,
        ),
        textStyle: applyRobotoFont(
          fontSize: 14,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 32,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: AppColor.kWhite,
        backgroundColor: AppColor.kPrimary,
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 32,
        ),
        textStyle: applyRobotoFont(
          fontSize: 14,
        ),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData();
}
