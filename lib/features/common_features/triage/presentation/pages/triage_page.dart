import 'package:eye_care_for_all/core/providers/global_provider.dart';
import 'package:eye_care_for_all/core/services/network_info.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/pages/triage_eye_scan_page.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_questionnaire/pages/triage_questionnaire_page.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/pages/visual_acuity_tumbling_page.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_triage_report/presentation/pages/optometritian_report_page_offline.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:screen_brightness/screen_brightness.dart';

class TriagePage extends ConsumerStatefulWidget {
  const TriagePage({super.key});

  @override
  ConsumerState<TriagePage> createState() => _TriagePageState();
}

class _TriagePageState extends ConsumerState<TriagePage> {
  bool isInternetConnected = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () async {
      await _setBrightness(0.8);
      Fluttertoast.showToast(msg: "Brightness set to 80%");
    });
  }

  getConnectivity() async {
    isInternetConnected = await ref.watch(connectivityProvider).isConnected();
  }

  @override
  Widget build(BuildContext context) {
    var currentStep = ref.watch(triageStepperProvider).currentStep;

    switch (currentStep) {
      case 0:
        return const TriageQuestionnairePage();
      case 1:
        ref.read(globalProvider).setHideTumblingElement = false;
        return const VisualAcuityTumblingPage();
      case 2:
        return const TriageEyeScanPage();
      default:
        return const TriageQuestionnairePage();
    }
  }

  Future<void> _setBrightness(double brightness) async {
    try {
      await ScreenBrightness().setScreenBrightness(brightness);
    } catch (e) {
      logger.d(e.toString());
      throw 'Failed to set brightness';
    }
  }
}
