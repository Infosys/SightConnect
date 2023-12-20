import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';

class AssessmentReportDetails extends StatelessWidget {
  const AssessmentReportDetails({super.key, this.questionResponseBreifModel});

  final List<QuestionResponseBriefEntity>? questionResponseBreifModel;

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

          (questionResponseBreifModel == null ||
                  questionResponseBreifModel!.isEmpty)
              ? const Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Center(
                    child: Text(
                      "No Data Available",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              : ListView.builder(
                  itemCount: questionResponseBreifModel!.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    var responseModel = questionResponseBreifModel![index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          responseModel.question,
                          style: applyRobotoFont(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black.withOpacity(0.8),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "\u2022  ",
                                style: applyRobotoFont(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black.withOpacity(0.7),
                                    height: 1.5),
                              ),
                              Text(
                                responseModel.response,
                                style: applyRobotoFont(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Divider(
                            thickness: 1.5,
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    );
                  },
                ),

          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Text(
          //       "1. Patient has the following eyesight related problems:",
          //       style: applyRobotoFont(fontWeight: FontWeight.w400),
          //     ),
          //     const SizedBox(height: AppSize.ksheight),
          //     ListView.builder(
          //       itemCount: 1,
          //       shrinkWrap: true,
          //       itemBuilder: (context, index) {
          //         return Text(
          //           "(None)",
          //           style: applyRobotoFont(
          //             fontWeight: FontWeight.w500,
          //             fontSize: 14,
          //           ),
          //         );
          //       },
          //     )
          //   ],
          // ),
          // const Divider(
          //   thickness: 1,
          // ),
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Text(
          //       "2. Patient has the following eye related problems:",
          //       style: applyRobotoFont(fontWeight: FontWeight.w400),
          //     ),
          //     const SizedBox(height: AppSize.ksheight),
          //     ListView.builder(
          //       itemCount: 1,
          //       shrinkWrap: true,
          //       itemBuilder: (context, index) {
          //         return Text(
          //           "Sticky discharges in eyes",
          //           style: applyRobotoFont(
          //             fontWeight: FontWeight.w500,
          //             fontSize: 14,
          //           ),
          //         );
          //       },
          //     ),
          //     const Divider(
          //       thickness: 1,
          //     ),
          //   ],
          // ),
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
