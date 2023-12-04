import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
// import 'dart:js';

class AssessmentReportDetails extends StatelessWidget {
  const   AssessmentReportDetails({super.key});

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
          Text("Assessment",
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
                  "1. Patient has the following eyesight related problems:",
                  style: applyRobotoFont(
                     fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: AppSize.ksheight),
                Text(" * (None)",
                    style: applyRobotoFont(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    )),
              ],
            ),
            Divider(
              thickness: 1,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "2. Patient has the following eye related problems:",
                  style: applyRobotoFont(
                     fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: AppSize.ksheight),
                Text(" * Sticky discharge in eyes",
                    style: applyRobotoFont(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    )),
                Divider(
                  thickness: 1,
                ),
              ],
            ),
          ]),
        ]));
  }
}
