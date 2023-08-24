import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle applyRobotoFont({
  double fontSize = 16,
  FontWeight fontWeight = FontWeight.normal,
  Color color = AppColor.kBlack,
  TextDecoration? decoration,
}) {
  return GoogleFonts.roboto(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    height: 1.2,
    decoration: decoration,
  );
}

TextStyle applyFiraSansFont({
  double fontSize = 16,
  FontWeight fontWeight = FontWeight.normal,
  Color color = AppColor.kBlack,
  TextDecoration? decoration,
}) {
  return GoogleFonts.firaSans(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    height: 1.2,
    decoration: decoration,
  );
}
