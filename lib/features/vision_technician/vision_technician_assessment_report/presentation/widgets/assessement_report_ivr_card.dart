import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
// import 'dart:js';

class AssessmentReportIvrCard extends StatelessWidget {
  const AssessmentReportIvrCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.all(
              Radius.circular(AppSize.kmradius - 5),
            )),
        padding: const EdgeInsets.all(AppSize.klpadding),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("IVR Selections",
              style: applyFiraSansFont(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              )),
          const SizedBox(height: AppSize.ksheight),
          Wrap(spacing: AppSize.kmwidth * 5, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Language Selection",
                  style: applyFiraSansFont(
                      color: AppColor.grey, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: AppSize.ksheight),
                Text("English",
                    style: applyRobotoFont(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    )),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Patient Type",
                  style: applyFiraSansFont(
                      color: AppColor.grey, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: AppSize.ksheight),
                Text(
                  "English",
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
                  "Problem",
                  style: applyFiraSansFont(
                      color: AppColor.grey, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: AppSize.ksheight),
                Text(
                  "Eye Sight",
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
                  "Vision Technician",
                  style: applyFiraSansFont(
                      color: AppColor.grey, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: AppSize.ksheight),
                Text(
                  "Geetha R (ID314232)",
                  style: applyRobotoFont(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ]),
        ]));
  }
}
