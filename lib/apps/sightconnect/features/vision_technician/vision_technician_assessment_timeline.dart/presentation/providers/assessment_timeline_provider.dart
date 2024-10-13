/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/common/triage/data/models/triage_response_dto.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_search_page/presentation/providers/vision_technician_search_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final assessmentTimelineProvider =
    ChangeNotifierProvider.autoDispose<AssessmentTimelineNotifier>((ref) {
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
