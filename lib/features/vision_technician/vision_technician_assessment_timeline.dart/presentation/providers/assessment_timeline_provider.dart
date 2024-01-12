import 'package:eye_care_for_all/features/common_features/triage/data/models/triage_response_dto.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/provider/vision_technician_search_provider.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

final assessmentTimelineProvider =
    ChangeNotifierProvider<AssessmentTimelineNotifier>((ref) {
  return AssessmentTimelineNotifier(ref.watch(visionTechnicianSearchProvider));
});

class AssessmentTimelineNotifier extends ChangeNotifier {
  final VisionTechnicianSearchProvider _visionTechnicianSearchProvider;
  AssessmentTimelineNotifier(this._visionTechnicianSearchProvider) {
    patientDetails = _visionTechnicianSearchProvider.patientDetails;
  }

  VTPatientDto? patientDetails;
  Encounter? currentEncounter;

  void setEncounter(Encounter encounter) {
    currentEncounter = encounter;
    notifyListeners();
  }
}
