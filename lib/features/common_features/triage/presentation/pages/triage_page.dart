import 'dart:developer';

import 'package:eye_care_for_all/core/providers/global_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/pages/triage_eye_scan_page.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_questionnaire/pages/triage_questionnaire_page.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/pages/visual_acuity_tumbling_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TriagePage extends ConsumerWidget {
  const TriagePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var currentStep = ref.watch(triageStepperProvider).currentStep;
    log("rebuliding triage page");
    switch (currentStep) {
      case 0:
        return const TriageQuestionnairePage();
      case 1:
        ref.read(globalProvider).setHideTumblingElement = false;
        return const VisualAcuityTumblingPage();
      case 2:
        return const TriageEyeScanPage();
      case 3:
        log("calling triage eye scan page");
        return const TriageEyeScanPage();
      default:
        return Container();
    }
  }
}
