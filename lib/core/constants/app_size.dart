import 'package:flutter/material.dart';

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

  static const double kselevation = 8.0;
  static const double kmelevation = 16.0;
  static const double klelevation = 24.0;

  static const double knavbarwidth = 0.1;
  static const double knavbarheight = 0.1;
  
  static double width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
