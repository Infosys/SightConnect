import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle applyRobotoFont({
  double fontSize = 16,
  FontWeight fontWeight = FontWeight.normal,
  Color color = AppColor.black,
  TextDecoration? decoration,
  double height = 1.4,
}) {
  return GoogleFonts.roboto(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    height: height,
    decoration: decoration,
  );
}

TextStyle applyFiraSansFont({
  double fontSize = 16,
  FontWeight fontWeight = FontWeight.normal,
  Color color = AppColor.black,
  TextDecoration? decoration,
  double height = 1.4,
}) {
  return GoogleFonts.firaSans(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    height: height,
    decoration: decoration,
  );
}
