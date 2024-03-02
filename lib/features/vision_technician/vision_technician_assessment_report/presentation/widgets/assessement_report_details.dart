import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

import '../../../../patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';

class AssessmentReportDetails extends StatelessWidget {
  const AssessmentReportDetails({super.key, this.questionResponseBreifModel});

  final List<QuestionResponseBriefEntity>? questionResponseBreifModel;

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;

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
            loc.vtAssessment,
            style: applyFiraSansFont(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: AppSize.ksheight),
          (questionResponseBreifModel == null ||
                  questionResponseBreifModel!.isEmpty)
              ? Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Center(
                    child: Text(
                      loc.vtNoDataAvailable,
                      style: const TextStyle(
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
                          "${index + 1}. ${responseModel.question}",
                          style: applyRobotoFont(
                            fontSize: 14,
                            color: const Color(0xff333333),
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
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
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
        ],
      ),
    );
  }
}
