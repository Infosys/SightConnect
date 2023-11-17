import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
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

  static ThemeData getLightTheme(BuildContext context) {
    return ThemeData(
      primarySwatch: MaterialColor(
        const Color(0xff286DF6).value,
        const {
          50: Color(0xff286DF6),
          100: Color(0xff286DF6),
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
      scaffoldBackgroundColor: AppColor.scaffold,
      // pageTransitionsTheme: const PageTransitionsTheme(
      //   builders: {
      //     TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      //     TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      //   },
      // ),
      visualDensity: VisualDensity.adaptivePlatformDensity,

      iconTheme: IconThemeData(
        color: AppColor.black,
        size: Responsive.isMobile(context) ? 24 : 32,
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: AppColor.scaffold,
        foregroundColor: AppColor.black,
        iconTheme: IconThemeData(
          color: AppColor.black,
          size: Responsive.isMobile(context) ? 24 : 32,
        ),
        actionsIconTheme: IconThemeData(
          color: AppColor.black,
          size: Responsive.isMobile(context) ? 24 : 32,
        ),
        titleTextStyle: applyFiraSansFont(
          fontWeight: FontWeight.w500,
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          iconSize: Responsive.isMobile(context) ? 24 : 32,
        ),
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
            color: AppColor.primary,
          ),
          textStyle: applyRobotoFont(
            fontSize: 14,
          ),
          padding: Responsive.isMobile(context)
              ? const EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 20,
                )
              : const EdgeInsets.symmetric(
                  horizontal: AppSize.klpadding,
                  vertical: AppSize.kmpadding,
                ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: AppColor.white,
          backgroundColor: AppColor.primary,
          shape: const StadiumBorder(),
          textStyle: applyRobotoFont(
            fontSize: 14,
          ),
          padding: Responsive.isMobile(context)
              ? const EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 20,
                )
              : const EdgeInsets.symmetric(
                  horizontal: AppSize.klpadding,
                  vertical: AppSize.kmpadding,
                ),
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }

  static ThemeData getDarkTheme(BuildContext context) {
    return ThemeData(
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
      brightness: Brightness.dark,
    );
  }
}
