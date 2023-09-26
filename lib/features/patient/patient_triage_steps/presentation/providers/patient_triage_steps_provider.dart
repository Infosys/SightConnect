import 'package:eye_care_for_all/features/patient/patient_triage_eye_scan/presentation/provider/patient_triage_eye_scan_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_questionnaire/presentation/provider/patient_triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_steps/data/model/triage.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_steps/data/model/triage_response.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_steps/data/model/visual_acuity_report.dart';
import 'package:eye_care_for_all/features/patient/patient_tumbling_test/presentation/providers/tumbling_test_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var patientTriageStepsProvider = ChangeNotifierProvider(
  (ref) => TriageStepsProvider(
    ref,
  ),
);

class TriageStepsProvider extends ChangeNotifier {
  Ref ref;
  TriageStepsProvider(this.ref);

  void getTriageDetails() {
    TriageResponse triageQuestionnaireResponse = ref
        .read(patientTriageQuestionnaireProvider)
        .getTriageQuestionnaireResponse();

    Map<String, List<String>?> triageEyeScanResponse =
        ref.read(patientTriageEyeScanProvider).getTriageEyeScanResponse();

    VisualAcuityReport tumblingEResponse =
        ref.read(tumblingTestProvider).getTriageTumblingEResponse();

    saveTriage(
        tumblingEResponse, triageQuestionnaireResponse, triageEyeScanResponse);
  }

  Future<void> saveTriage(
    VisualAcuityReport tumblingEResponse,
    TriageResponse triageQuestionnaireResponse,
    Map<String, List<String>?> triageEyeScanResponse,
  ) async {
    Triage triage = Triage(
      id: 0,
      visualAcuityReport: tumblingEResponse,
      triageResponse: triageQuestionnaireResponse,
      leftEyeImage: triageEyeScanResponse["leftEyeImage"],
      rightEyeImage: triageEyeScanResponse["rightEyeImage"],
    );

    logger.f(triage.toString());
  }
}
