import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:flutter/material.dart';

applyLightShadow() {
  return [
    BoxShadow(
      color: AppColor.shadowColor.withOpacity(0.1),
      blurRadius: 24,
      offset: const Offset(0, 4),
    ),
  ];
}

applyMediumShadow() {
  return [
    BoxShadow(
      color: AppColor.shadowColor.withOpacity(0.3),
      blurRadius: 24,
      offset: const Offset(0, 4),
    ),
  ];
}
