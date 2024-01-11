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

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: ExpansionTile(
        title: Text(
          loc.questionnaireTitle,
          style: applyRobotoFont(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
        children: [
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
              : ListView.separated(
                  itemCount: questionResponseBreifModel!.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider(
                      height: 1,
                      thickness: 1,
                      color: Colors.black12,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    var responseModel = questionResponseBreifModel![index];

                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text(
                          "${index + 1}. ${responseModel.question}",
                          style: applyRobotoFont(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black.withOpacity(0.8),
                          ),
                        ),
                        subtitle: Row(
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
                    );
                  },
                ),
        ],
      ),
    );
  }
}
