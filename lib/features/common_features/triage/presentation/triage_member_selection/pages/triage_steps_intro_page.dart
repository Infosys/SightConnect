import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity/features/visual_acuity_tumbling/presentation/providers/visual_acuity_test_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../triage_eye_scan/provider/triage_eye_scan_provider.dart';
import '../../triage_questionnaire/provider/triage_questionnaire_provider.dart';

import 'triage_member_selection_page.dart';

class TriageStepsIntroPage extends ConsumerWidget {
  const TriageStepsIntroPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    return PopScope(
      canPop: false,
      onPopInvoked: (value) {
        if (value) {
          return;
        }
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.kl),
              ),
              title: Text(loc.areYouSure),
              content: Text(loc.triageExitConfirmation),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(loc.noButton),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    ref.invalidate(triageQuestionnaireProvider);
                    ref.invalidate(triageEyeScanProvider);
                    ref.invalidate(tumblingTestProvider);
                    ref.invalidate(triageProvider);
                    // ref.read(patientDashboardProvider).changeIndex(0);
                  },
                  child: Text(loc.yesButton),
                ),
              ],
            );
          },
        );
      },
      child: Scaffold(
        backgroundColor: AppColor.scaffold,
        appBar: CustomAppbar(
          leadingIcon: const SizedBox(),
          title: Text(loc.triageReportEyeProblems),
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
            child: Text(loc.proceedButton),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  loc.triageHowToReport,
                  style: applyFiraSansFont(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  loc.triageReportInstructions,
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
