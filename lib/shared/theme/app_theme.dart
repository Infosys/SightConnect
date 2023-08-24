import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
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
        50: Color(0xffe7eefe),
        100: Color(0xffb6cdfc),
        200: Color(0xff85acfa),
        300: Color(0xff548af8),
        400: Color(0xff2369f6),
        500: Color(0xff094fdc),
        600: Color(0xff073eab),
        700: Color(0xff052c7a),
        800: Color(0xff031a49),
        900: Color(0xff010918),
      },
    ),
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColor.kScaffold,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: GoogleFonts.roboto().fontFamily,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: AppColor.kScaffold,
      foregroundColor: AppColor.kBlack,
      iconTheme: IconThemeData(
        color: AppColor.kBlack,
      ),
      titleTextStyle: TextStyle(
        color: AppColor.kBlack,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: AppColor.kWhite,
        backgroundColor: AppColor.kPrimary,
        shape: const StadiumBorder(),
      ),
    ),
    textTheme: TextTheme(
      bodySmall: TextStyle(fontSize: 14.0.sp),
      bodyMedium: TextStyle(fontSize: 16.0.sp),
      bodyLarge: TextStyle(fontSize: 18.0.sp),
      titleSmall: TextStyle(fontSize: 14.0.sp),
      titleMedium: TextStyle(fontSize: 16.0.sp),
      titleLarge: TextStyle(
        fontSize: 18.0.sp,
        fontFamily: GoogleFonts.firaSans().fontFamily,
      ),
      labelSmall: TextStyle(fontSize: 10.0.sp),
      labelMedium: TextStyle(fontSize: 12.0.sp),
      labelLarge: TextStyle(fontSize: 14.0.sp),
      headlineSmall: TextStyle(fontSize: 20.sp),
      headlineMedium: TextStyle(fontSize: 24.sp),
      headlineLarge: TextStyle(fontSize: 34.sp),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primarySwatch: MaterialColor(
      const Color(0xff296DF6).value,
      const {
        50: Color(0xffe7eefe),
        100: Color(0xffb6cdfc),
        200: Color(0xff85acfa),
        300: Color(0xff548af8),
        400: Color(0xff2369f6),
        500: Color(0xff094fdc),
        600: Color(0xff073eab),
        700: Color(0xff052c7a),
        800: Color(0xff031a49),
        900: Color(0xff010918),
      },
    ),
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColor.kDarkGrey,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: GoogleFonts.roboto().fontFamily,
    textTheme: TextTheme(
      bodySmall: TextStyle(fontSize: 14.0.sp),
      bodyMedium: TextStyle(fontSize: 16.0.sp),
      bodyLarge: TextStyle(fontSize: 18.0.sp),
      titleSmall: TextStyle(fontSize: 14.0.sp),
      titleMedium: TextStyle(fontSize: 16.0.sp),
      titleLarge: TextStyle(fontSize: 18.0.sp),
      labelSmall: TextStyle(fontSize: 10.0.sp),
      labelMedium: TextStyle(fontSize: 12.0.sp),
      labelLarge: TextStyle(
        fontSize: 14.0.sp,
        fontFamily: GoogleFonts.firaSans().fontFamily,
      ),
      headlineSmall: TextStyle(fontSize: 20.sp),
      headlineMedium: TextStyle(fontSize: 24.sp),
      headlineLarge: TextStyle(fontSize: 34.sp),
    ),
  );
}
