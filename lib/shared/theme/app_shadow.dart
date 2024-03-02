import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:flutter/material.dart';

List<BoxShadow> applyLightShadow() {
  return [
    BoxShadow(
      color: AppColor.shadowColor.withOpacity(0.1),
      blurRadius: 24,
      offset: const Offset(0, 4),
    ),
  ];
}

List<BoxShadow> applyMediumShadow() {
  return [
    BoxShadow(
      color: AppColor.shadowColor.withOpacity(0.3),
      blurRadius: 24,
      offset: const Offset(0, 4),
    ),
  ];
}

List<BoxShadow> customColorShadow(Color color) {
  return [
    BoxShadow(
      color: color.withOpacity(0.3),
      blurRadius: 24,
      offset: const Offset(0, 4),
    ),
  ];
}
