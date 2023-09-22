import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_questionnaire/presentation/provider/patient_triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_questionnaire/presentation/widgets/question_tile.dart';
import 'package:eye_care_for_all/features/patient/patient_tumbling_test/presentation/pages/tumbling_test_instructional_video_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientTriageQuestionnairePage extends HookConsumerWidget {
  const PatientTriageQuestionnairePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var questions = ref.watch(patientTriageQuestionnaireProvider).questions;
    var currentIndex = ref.watch(patientTriageQuestionnaireProvider).index;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: AppColor.blue,
                visualDensity: VisualDensity.compact,
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.kspadding + 2,
                ),
              ),
              onPressed: () {},
              child: Text(
                "Step 1 of 3",
                style: applyRobotoFont(
                  color: AppColor.primary,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(width: AppSize.kmwidth),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text("Eye Assessment"),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSize.kmpadding),
        child: QuestionTile(
          question: questions[currentIndex],
          onNext: () {
            if (currentIndex == questions.length - 1) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      const TumblingTestInstructionalVideoPage(),
                ),
              );
              return;
            }
            ref
                .read(patientTriageQuestionnaireProvider)
                .setIndex(currentIndex + 1);
          },
        ),
      ),
    );
  }
}
