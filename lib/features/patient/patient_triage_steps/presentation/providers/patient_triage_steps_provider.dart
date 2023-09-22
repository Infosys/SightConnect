import 'package:eye_care_for_all/features/patient/patient_triage_steps/data/model/triage.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_steps/data/model/visual_acuity_report.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var patientTriageStepsProvider = ChangeNotifierProvider(
  /// // // inject all steps
  (ref) => TriageStepsProvider(),
);

class TriageStepsProvider extends ChangeNotifier {
  late Triage triage;
  TriageStepsProvider() : triage = const Triage(id: 0);

  void setVisionEquityReport(VisualAcuityReport report) {
    triage = triage.copyWith(visualAcuityReport: report);
    notifyListeners();
  }
}
