import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/pages/triage_eye_scan_page.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_questionnaire/pages/triage_questionnaire_page.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/pages/visual_acuity_tumbling_page.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../visual_acuity_tumbling/presentation/providers/accessibility_provider.dart';

class TriagePage extends ConsumerStatefulWidget {
  const TriagePage({super.key});

  @override
  ConsumerState<TriagePage> createState() => _TriagePageState();
}

class _TriagePageState extends ConsumerState<TriagePage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () async {
      try {
        await ref.read(accessibilityProvider).setBrightness(80.0);
        Fluttertoast.showToast(msg: "Brightness set to 80%");
      } catch (e) {
        Fluttertoast.showToast(
          msg: "Please set the brightness manually to 80%",
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentStep = ref.watch(triageStepperProvider).currentStep;

    return ref.watch(getTriageProvider).when(
      data: (data) {
        switch (currentStep) {
          case 0:
            return TriageQuestionnairePage(
              questionnaireSections:
                  data.questionnaire?.questionnaireItem ?? [],
            );
          case 1:
            ref.read(globalProvider).setVAMode = VisionAcuityMode.TRIAGE;
            return const VisualAcuityTumblingPage();
          case 2:
            return const TriageEyeScanPage();
          default:
            return TriageQuestionnairePage(
              questionnaireSections:
                  data.questionnaire?.questionnaireItem ?? [],
            );
        }
      },
      error: (error, stackTrace) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(error.toString()),
                ),
                const SizedBox(
                  height: AppSize.klheight,
                ),
                TextButton.icon(
                  onPressed: () {
                    ref.invalidate(getTriageProvider);
                  },
                  icon: const Icon(Icons.refresh_outlined),
                  label: const Text("Retry"),
                ),
              ],
            ),
          ),
        );
      },
      loading: () {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
