import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:flutter/material.dart';

appShadow() {
  return [
    BoxShadow(
      color: AppColor.shadowColor.withOpacity(0.1),
      blurRadius: 24,
      offset: const Offset(0, 4),
    ),
  ];
}
