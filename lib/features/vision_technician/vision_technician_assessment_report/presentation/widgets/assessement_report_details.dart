import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AssessmentReportDetails extends StatelessWidget {
  const AssessmentReportDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: applyLightShadow(),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.kmradius - 5),
        ),
      ),
      padding: const EdgeInsets.all(AppSize.klpadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Assessment",
            style: applyFiraSansFont(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: AppSize.ksheight),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "1. Patient has the following eyesight related problems:",
                style: applyRobotoFont(fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: AppSize.ksheight),
              ListView.builder(
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Text(
                    "(None)",
                    style: applyRobotoFont(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  );
                },
              )
            ],
          ),
          const Divider(
            thickness: 1,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "2. Patient has the following eye related problems:",
                style: applyRobotoFont(fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: AppSize.ksheight),
              ListView.builder(
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Text(
                    "Sticky discharges in eyes",
                    style: applyRobotoFont(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  );
                },
              ),
              const Divider(
                thickness: 1,
              ),
            ],
          ),
          // Consumer(
          //   builder: (context, ref, child) {
          //     var eyeSightProblems =
          //         ref.watch(preliminaryAssessmentHelperProvider).eyeSightProblem;

          //     var eyeRelatedProblems =
          //         ref.watch(preliminaryAssessmentHelperProvider).eyeRelatedProblem;

          //     var eyeRelatedProblemsFilter = eyeRelatedProblems
          //         .where((e) => e.checked == true)
          //         .toList();
          //     var eyeSightProblemsFilter =
          //         eyeSightProblems.where((e) => e.checked == true).toList();

          //     return Wrap(spacing: AppSize.kmwidth * 5, children: [

          //     ],);
          //   },
          // )
        ],
      ),
    );
  }
}
