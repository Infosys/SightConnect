import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSize {
  AppSize._();

  static const double kspadding = 8.0;
  static const double kmpadding = 16.0;
  static const double klpadding = 24.0;

  static const double ksradius = 8.0;
  static const double kmradius = 16.0;
  static const double klradius = 24.0;

  static const double kswidth = 8.0;
  static const double kmwidth = 16.0;
  static const double klwidth = 24.0;

  static const double ksheight = 8.0;
  static const double kmheight = 16.0;
  static const double klheight = 24.0;

  static double get width => ScreenUtil().screenWidth;
  static double get height => ScreenUtil().screenHeight;
}
