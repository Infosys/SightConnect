import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:flutter/material.dart';

appShadow() {
  return [
    // BoxShadow(
    //   color: AppColor.shadowColor.withOpacity(0.02),
    //   blurRadius: 10,
    //   spreadRadius: 5,
    //   offset: const Offset(10, 10),
    // ),
    // BoxShadow(
    //   color: AppColor.shadowColor.withOpacity(0.02),
    //   blurRadius: 10,
    //   spreadRadius: 5,
    //   offset: const Offset(-10, -10),
    // ),
    BoxShadow(
      color: AppColor.shadowColor.withOpacity(0.04),
      blurRadius: 64,
      offset: const Offset(0, 24),
    ),
  ];
}
