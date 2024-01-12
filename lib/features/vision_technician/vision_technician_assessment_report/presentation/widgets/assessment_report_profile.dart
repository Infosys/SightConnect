import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/provider/vision_technician_search_provider.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';

class AssessmentReportProfile extends ConsumerWidget {
  const AssessmentReportProfile({super.key, required this.assessmentId});
  final int assessmentId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    VTPatientDto? patient =
        ref.read(visionTechnicianSearchProvider).patientDetails;
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
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  patient?.name ?? "",
                  style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColor.white),
                ),
                Text(
                  "Assessment ID: EA $assessmentId",
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
                  "PID: OP ${patient?.id ?? ""}",
                  style: applyRobotoFont(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColor.white.withOpacity(0.7),
                  ),
                ),
                Text(
                  "${patient?.encounterStartDate?.formatDateTimeMonthNameWithTime}",
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
