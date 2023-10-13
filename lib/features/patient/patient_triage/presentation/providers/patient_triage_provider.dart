import 'package:eye_care_for_all/features/patient/patient_triage/presentation/patient_triage_eye_scan/provider/patient_triage_eye_scan_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/patient_triage_questionnaire/provider/patient_triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/patient_visual_acuity_tumbling/providers/patient_visual_acuity_test_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var patientTriageProvider = ChangeNotifierProvider(
  (ref) => PatientTriageProvider(
    ref,
  ),
);

class PatientTriageProvider extends ChangeNotifier {
  Ref ref;
  PatientTriageProvider(this.ref);

  resetTraigeState() {
    ref.invalidate(patientTriageQuestionnaireProvider);
    ref.invalidate(patientTriageEyeScanProvider);
    ref.invalidate(tumblingTestProvider);
    ref.invalidate(patientTriageProvider);
  }
}
