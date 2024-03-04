import 'package:easy_stepper/easy_stepper.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
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
          width: AppSize.klwidth * 3,
          height: AppSize.ksheight * 7,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: activeStep == currentStep
                ? AppColor.lightBlue
                : AppColor.lightGrey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(AppSize.ksradius),
          ),
          child: Image.asset(
            "assets/images/vt_${eye}_eye.png",
            height: AppSize.kmheight * 2,
          ),
        ),
      ],
    ),
    topTitle: true,
  );
}
