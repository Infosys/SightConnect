import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
// import 'dart:js';

class AssessmentReportIvrCard extends StatelessWidget {
  const AssessmentReportIvrCard({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: applyLightShadow(),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.km - 5),
        ),
      ),
      padding: const EdgeInsets.all(AppSize.kl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            loc.vtIvrSelections,
            style: applyFiraSansFont(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: AppSize.ks),
          Wrap(
            spacing: AppSize.km * 5,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    loc.vtLanguageSelection,
                    style: applyFiraSansFont(
                        color: AppColor.grey, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: AppSize.ks),
                  Text(
                    loc.vtEnglish,
                    style: applyRobotoFont(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    loc.vtPatientType,
                    style: applyFiraSansFont(
                        color: AppColor.grey, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: AppSize.ks),
                  Text(
                    loc.vtEnglish,
                    style: applyRobotoFont(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    loc.vtProblem,
                    style: applyFiraSansFont(
                        color: AppColor.grey, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: AppSize.ks),
                  Text(
                    loc.vtEyeSight,
                    style: applyRobotoFont(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    loc.vtVisionTechnician,
                    style: applyFiraSansFont(
                        color: AppColor.grey, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: AppSize.ks),
                  Text(
                    "Geetha R (ID314232)",
                    style: applyRobotoFont(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
