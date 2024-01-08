import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class ReportAssessmentQuestions extends StatelessWidget {
  const ReportAssessmentQuestions({
    super.key,
    this.questionResponseBreifModel,
  });
  final List<QuestionResponseBriefEntity>? questionResponseBreifModel;

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            loc.questionnaireTitle,
            style: applyRobotoFont(
              fontSize: 16,
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          (questionResponseBreifModel == null ||
                  questionResponseBreifModel!.isEmpty)
              ? Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Center(
                    child: Text(
                      loc.reportDataUnavailable,
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
                                (responseModel.response == "Yes")
                                    ? context.loc!.yesButton
                                    : context.loc!.noButton,
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
        ],
      ),
    );
  }
}
