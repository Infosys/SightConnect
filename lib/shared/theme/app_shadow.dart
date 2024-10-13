/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/shared/constants/app_color.dart';
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

List<BoxShadow> applycustomShadow([
  Color color = AppColor.lightGrey,
  double opacity = 0.1,
]) {
  return [
    BoxShadow(
      color: color.withOpacity(opacity),
      blurRadius: 24,
      offset: const Offset(0, 4),
    )
  ];
}
