import 'package:flutter/material.dart';

class AppSize {
  AppSize._();

  static const double ks = 8.0;
  static const double km = 16.0;
  static const double kl = 24.0;

  static const double knavbarwidth = 0.1;
  static const double knavbarheight = 0.1;

  static double width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
