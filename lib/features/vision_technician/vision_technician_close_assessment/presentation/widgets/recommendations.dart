import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/provider/vt_close_assessment_helper_provider.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Recommendations extends ConsumerWidget {
  const Recommendations({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(AppSize.kmpadding),
      margin: const EdgeInsets.all(AppSize.kspadding),
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: applyLightShadow(),
        borderRadius: BorderRadius.circular(AppSize.kmradius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommendation(s)",
            style: applyFiraSansFont(
              fontWeight: FontWeight.w500,
            ),
          ),
          TextField(
            controller: ref
                .watch(vtCloseAssessmentHelperProvider)
                .recommendationsController,
            decoration: InputDecoration(
              hintText: "Enter Recommendations Here",
              hintStyle: applyRobotoFont(fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
