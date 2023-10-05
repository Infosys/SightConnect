import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_questionnaire/data/model/triage_question.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_questionnaire/presentation/provider/patient_triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_questionnaire/presentation/widgets/option_grid.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class QuestionTile extends ConsumerWidget {
  const QuestionTile({
    this.onNext,
    required this.question,
    this.isLast = false,
    super.key,
  });
  final TriageQuestion question;
  final VoidCallback? onNext;
  final bool isLast;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          question.question,
          style: applyFiraSansFont(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 20),
        OptionGrid(
          symptoms: question.answers,
          onTap: (optionIndex) {
            ref.read(patientTriageQuestionnaireProvider.notifier).updateAnswer(
                  questionIndex: question.qNo - 1,
                  answerIndex: optionIndex,
                );
          },
        ),
        const SizedBox(height: AppSize.klheight),
        SizedBox(
          width:
              isLast ? AppSize.width(context) : AppSize.width(context) * 0.45,
          child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
            onPressed: onNext,
            child: Text(
              isLast ? "Proceed" : "Next",
              style: applyRobotoFont(fontSize: 14, color: AppColor.white),
            ),
          ),
        ),
        const SizedBox(height: AppSize.klheight),
      ],
    );
  }
}
