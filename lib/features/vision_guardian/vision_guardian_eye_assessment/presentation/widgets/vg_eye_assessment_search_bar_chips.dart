import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_eye_assessment/presentation/providers/vg_eye_assessment_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_size.dart';
import '../../../../../shared/theme/text_theme.dart';

Widget vgEyeAssessmentHeaderChips(ValueNotifier<int> isSelected,
    BuildContext context, List<String> patientStatus) {
  return Consumer(
    builder: (context, ref, child) {
      return SizedBox(
        height: AppSize.height(context) * 0.04,
        width: AppSize.width(context) * 0.9,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: patientStatus.length,
          itemBuilder: (BuildContext context, int index) {
            var data = patientStatus[index];

            return InkWell(
              onTap: () {
                if (isSelected.value != index) {
                  isSelected.value = index;
                  ref
                      .read(visionGuardianEyeAssessmentProvider)
                      .filterPatientList(isSelected.value, data);
                }
              },
              child: Container(
                margin: const EdgeInsets.only(right: AppSize.ks),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: isSelected.value == index
                        ? AppColor.blue
                        : AppColor.grey,
                  ),
                  color: isSelected.value == index
                      ? const Color(0xFFC9DAFD)
                      : AppColor.white,
                  borderRadius: BorderRadius.circular(
                    AppSize.ks,
                  ),
                ),
                child: Center(
                  child: Text(
                    data,
                    style: applyRobotoFont(
                        fontSize: 14,
                        color: AppColor.black,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            );
          },
        ),
      );
    },
  );
}
