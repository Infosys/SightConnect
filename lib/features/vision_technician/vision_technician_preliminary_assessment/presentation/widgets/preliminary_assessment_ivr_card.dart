import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
// import 'dart:js';

class PreliminaryAssessmentIvrCard extends StatelessWidget {
  const PreliminaryAssessmentIvrCard({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.all(
              Radius.circular(AppSize.km - 5),
            )),
        padding: const EdgeInsets.all(AppSize.kl),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(loc.vtIvrSelections,
              style: applyFiraSansFont(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              )),
          const SizedBox(height: AppSize.ks),
          Wrap(spacing: AppSize.km * 5, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  loc.vtLanguageSelection,
                  style: applyFiraSansFont(fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: AppSize.ks),
                Text(loc.vtEnglish,
                    style: applyRobotoFont(
                      fontWeight: FontWeight.w400,
                      color: AppColor.grey,
                      fontSize: 14,
                    )),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  loc.vtPatientType,
                  style: applyFiraSansFont(fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: AppSize.ks),
                Text(
                  loc.vtEnglish,
                  style: applyRobotoFont(
                    fontWeight: FontWeight.w400,
                    color: AppColor.grey,
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
                  style: applyFiraSansFont(fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: AppSize.ks),
                Text(
                  loc.vtEyeSight,
                  style: applyRobotoFont(
                    fontWeight: FontWeight.w400,
                    color: AppColor.grey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ]),
        ]));
  }
}
