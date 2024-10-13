/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_images.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AssessmentReportProfile extends ConsumerWidget {
  const AssessmentReportProfile({
    super.key,
    required this.assessmentId,
    required this.patientDetails,
    this.assessmentDate,
  });
  final int assessmentId;
  final VTPatientDto patientDetails;
  final DateTime? assessmentDate;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    return Container(
      padding: const EdgeInsets.all(AppSize.ks),
      decoration: BoxDecoration(
        boxShadow: applyLightShadow(),
        image: const DecorationImage(
          fit: BoxFit.fitWidth,
          image: AssetImage(AppImages.profileBg),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.km),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSize.km),
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  patientDetails.name.capitalizeFirstOfEach(),
                  style: applyRobotoFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.white,
                  ),
                ),
                Text(
                  "${loc.vtAssessmentIDEA} $assessmentId",
                  style: applyRobotoFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.white,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${loc.vtPid} ${patientDetails.id ?? ""}",
                  style: applyRobotoFont(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColor.white.withOpacity(0.7),
                  ),
                ),
                Text(
                  assessmentDate?.formatDateTimeMonthNameWithTime ?? "-",
                  style: applyRobotoFont(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColor.white.withOpacity(0.7),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
