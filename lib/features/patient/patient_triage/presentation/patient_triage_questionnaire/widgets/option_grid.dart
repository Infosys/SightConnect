import 'dart:developer';

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/data/models/triage_assessment.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/patient_triage_questionnaire/provider/patient_triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OptionGrid extends HookConsumerWidget {
  const OptionGrid({
    required this.questions,
    required this.pageNumber,
    super.key,
  });

  final List<Question> questions;
  final int pageNumber;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController remarksController = useTextEditingController();

    final totalQuestions = questions.length;

    final selectedOptions =
        ref.watch(patientTriageQuestionnaireProvider).selectedOptions;

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: totalQuestions,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        var isSelected = selectedOptions.containsKey(questions[index].code);
        var model = ref.read(patientTriageQuestionnaireProvider);

        return InkWell(
          onTap: () {
            if (pageNumber != 0) {
              if (questions[index].statement == "None of these") {
                print("111111111111111111111");
                model.removeAllQuestionnaireAnswer();
                if (isSelected) {
                  model.removeQuestionnaireAnswer(questions[index].code!);
                } else {
                  model.addQuestionnaireAnswer(
                    questions[index].code ?? 0,
                    true,
                  );
                }
              } else if (questions[index].statement == "Other symptoms") {
                print("222222222222222222222");
                _buildOtherOptionSheet(
                  context: context,
                  remarksController: remarksController,
                  onSubmitted: (remark) {
                    if (remark.isEmpty) {
                      model.removeQuestionnaireAnswer(questions[index].code!);
                    } else {
                      model.setQuestionnaireRemarks(remark);
                    }

                    Navigator.pop(context);
                  },
                );
              } else {
                print("3333333333333333333333333");
                if (isSelected) {
                  model.removeQuestionnaireAnswer(questions[index].code!);
                } else {
                  if (model.selectedOptions.containsKey(30000025) ||
                      model.selectedOptions.containsKey(30000010)) {
                    model.removeQuestionnaireAnswer(questions[index].code!);
                  } else {
                    model.addQuestionnaireAnswer(
                      questions[index].code ?? 0,
                      true,
                    );
                  }
                }
              }
            } else {
              if (questions[index].statement == "Yes") {
                model.addQuestionnaireAnswer(
                  questions[index].code ?? 0,
                  true,
                );
                model.removeQuestionnaireAnswer(questions[index + 1].code!);
              } else if (questions[index].statement == "No") {
                model.addQuestionnaireAnswer(
                  questions[index].code ?? 0,
                  true,
                );
                model.removeQuestionnaireAnswer(questions[index - 1].code!);
              }
            }
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: isSelected
                    ? AppColor.primary
                    : AppColor.grey.withOpacity(0.5),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                questions[index].statement ?? "",
                textAlign: TextAlign.left,
                softWrap: true,
                style: applyRobotoFont(
                  fontSize: 16,
                  color: AppColor.black,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  _buildOtherOptionSheet({
    required BuildContext context,
    required TextEditingController remarksController,
    required Function(String) onSubmitted,
  }) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isDismissible: false,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppSize.klradius),
            child: Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.circular(20),
              ),
              height: AppSize.height(context) * 0.7,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Other Symptoms",
                    style: applyRobotoFont(
                      fontSize: 16,
                      color: AppColor.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(12.0),
                    color: const Color(0xFFFAFAFA),
                    child: TextField(
                      maxLines: 6,
                      controller: remarksController,
                      keyboardType: TextInputType.text,
                      onSubmitted: onSubmitted,
                      decoration: InputDecoration(
                        hintText: 'Enter your symptoms here',
                        hintStyle: applyRobotoFont(
                          fontSize: 14,
                          color: AppColor.grey.withOpacity(0.4),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
