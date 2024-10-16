/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:easy_stepper/easy_stepper.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

EasyStep vtCustomStep(
    String title, int activeStep, int currentStep, bool stepFinished) {
  String eye = title.split(' ')[0].toLowerCase();

  return EasyStep(
    customStep: CircleAvatar(
      radius: 12,
      backgroundColor: AppColor.grey,
      child: CircleAvatar(
        radius: 11,
        backgroundColor: (activeStep > currentStep) || stepFinished
            ? AppColor.green
            : activeStep == currentStep
                ? AppColor.primary
                : Colors.white,
      ),
    ),
    customTitle: Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: applyRobotoFont(
            height: 1,
            fontSize: 14,
            color: activeStep == currentStep ? AppColor.black : Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 50),
        Container(
          width: AppSize.kl * 3,
          height: AppSize.ks * 7,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: activeStep == currentStep
                ? AppColor.lightBlue
                : AppColor.lightGrey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(AppSize.ks),
          ),
          child: Image.asset(
            "assets/images/vt_${eye}_eye.png",
            height: AppSize.km * 2,
          ),
        ),
      ],
    ),
    topTitle: true,
  );
}
