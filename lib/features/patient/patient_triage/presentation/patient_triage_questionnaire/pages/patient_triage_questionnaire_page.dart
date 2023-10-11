import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/widgets/traige_exit_alert_box.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../patient_triage_member_selection/widget/patient_triage_steps_drawer.dart';
import '../../patient_visual_acuity_tumbling/pages/tumbling_test_instructional_video_page.dart';
import '../provider/patient_triage_questionnaire_provider.dart';
import '../widgets/question_tile.dart';

class PatientTriageQuestionnairePage extends HookConsumerWidget {
  const PatientTriageQuestionnairePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var questions = ref.watch(patientTriageQuestionnaireProvider).questions;
    var currentIndex = ref.watch(patientTriageQuestionnaireProvider).index;
    return WillPopScope(
      onWillPop: () async {
        var result = await showDialog(
          context: context,
          builder: (context) => const TriageExitAlertBox(
            content:
                "Answering these questions will help in identifying your eye problems. Do you really wish to exit?",
          ),
        );
        return result ?? false;
      },
      child: Scaffold(
        drawer: const PatientTriageStepsDrawer(),
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Step 1 of 3",
                  style: applyRobotoFont(
                    color: AppColor.primary,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(width: AppSize.kmwidth),
                Text(
                  "Eye Assessment",
                  style: applyFiraSansFont(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppSize.kmpadding),
            child: QuestionTile(
              question: questions[currentIndex],
              isLast: currentIndex == questions.length - 1,
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
        ),
      ),
    );
  }
}
