import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
// import 'dart:js';

class AssessmentReportProfile extends StatelessWidget {
  const AssessmentReportProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(AppSize.kspadding),
        decoration: BoxDecoration(
          boxShadow: applyLightShadow(),
          image: const DecorationImage(
            fit: BoxFit.fitWidth,
            image: AssetImage(AppImages.profileBg),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(AppSize.klradius),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppSize.kmpadding),
          child: Wrap(direction: Axis.horizontal, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Preethan Kumar",
                  style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColor.white),
                ),
                Text("Assessment ID: EA 010101",
                    style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColor.white,
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("PID: OP 5356785",
                    style: applyRobotoFont(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColor.white.withOpacity(0.7),
                    )),
                Text(
                  "19 Sep 2023, 10:30 AM",
                  style: applyRobotoFont(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColor.white.withOpacity(0.7),
                  ),
                ),
              ],
            ),
          ]),
        ));
  }
}
