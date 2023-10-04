import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/providers/patient_dashboard_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/providers/patient_home_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_eye_scan/presentation/provider/patient_triage_eye_scan_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_questionnaire/presentation/provider/patient_triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_steps/presentation/pages/triage_member_selection_page.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_steps/presentation/providers/patient_triage_steps_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_tumbling_test/presentation/providers/tumbling_test_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TriageStepsIntroPage extends ConsumerWidget {
  const TriageStepsIntroPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WillPopScope(
      onWillPop: () async {
        var status = await showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.klradius),
                ),
                title: const Text('Are you sure?'),
                content: const Text('Do you want to exit the Test?'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: const Text('No'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: const Text('Yes'),
                  ),
                ],
              );
            });
        if (status) {
          ref.invalidate(patientTriageQuestionnaireProvider);
          ref.invalidate(patientTriageEyeScanProvider);
          ref.invalidate(tumblingTestProvider);
          ref.invalidate(patientTriageStepsProvider);

          ref.read(patientDashboardProvider).changeIndex(0);
        }
        return false;
      },
      child: Scaffold(
        backgroundColor: AppColor.scaffold,
        appBar: AppBar(
          leading: const SizedBox(),
          title: const Text('Report Eye Problems'),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSize.width(context) * AppSize.knavbarwidth,
            vertical: AppSize.height(context) * AppSize.knavbarheight,
          ),
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const TriageMemberSelectionPage(),
                ),
              );
            },
            child: const Text('Proceed'),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "How to report eye problems?",
                  style: applyFiraSansFont(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "If you are an individual having eye related problems, you could self-declare and mention your problems here to get appropriate guidance. You could also mention the eye problems of your friends or family members here and get appropriate guidance.\n\nYou will be asked a set of questions in the following sections to understand the nature and severity of the eye problem. You will be recommended and guided with the tests to be performed and steps to follow after answering all the questions.",
                  style: applyRobotoFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
