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

  // List<AssessmentTimelineViewModel> timeLineList = [
  //   AssessmentTimelineViewModel(
  //     type: "Success",
  //     title: "2nd Reminder Call",
  //     subtitle: "Patient Agreed to meet VT",
  //     date: DateTime.now(),
  //     call: "VT Call",
  //     assessmentId: 0,
  //     encounterId: 0,
  //   ),
  //   AssessmentTimelineViewModel(
  //     type: "fail",
  //     title: "1st Reminder Call",
  //     subtitle: "No Response from Patient",
  //     date: DateTime.now(),
  //     call: "IVR Call",
  //     assessmentId: 0,
  //     encounterId: 0,
  //   ),
  //   AssessmentTimelineViewModel(
  //     type: "Success",
  //     title: "Preliminary Assessment",
  //     subtitle: "Obstructed Vision due to Sticky Discharge.",
  //     date: DateTime.now(),
  //     call: "IVR Call",
  //     assessmentId: 010101,
  //     encounterId: 0,
  //   ),
  //   AssessmentTimelineViewModel(
  //     type: "Success",
  //     title: "Patient Registered",
  //     subtitle: "PID: OP 934567.",
  //     date: DateTime.now(),
  //     call: "IVR Call",
  //     assessmentId: 0,
  //     encounterId: 0,
  //   ),
  // ];

  // void addToTimeline(VTPatientModel patient) {
  //   List<String> listOfSolutions = [];

  //   if (patient.spectacles) {
  //     listOfSolutions.add("Spectacles");
  //   }

  //   if (patient.cataractSurgery) {
  //     listOfSolutions.add("Cataract Surgery");
  //   }

  //   if (patient.eyeDrops) {
  //     listOfSolutions.add("Eye Drops");
  //   }

  //   if (patient.oralMedication) {
  //     listOfSolutions.add("Oral Medication");
  //   }

  //   String subtitle = "";

  //   for (int i = 0; i < listOfSolutions.length; i++) {
  //     subtitle += listOfSolutions[i];
  //     if (i < listOfSolutions.length - 2) {
  //       subtitle += ", ";
  //     } else if (i == listOfSolutions.length - 2) {
  //       subtitle += " and ";
  //     } else {
  //       subtitle += " ";
  //     }
  //   }

  //   if (listOfSolutions.isNotEmpty) {
  //     subtitle += "Prescribed.";
  //   }

  //   // timeLineList.insert(
  //   //   0,
  //   //   AssessmentTimelineViewModel(
  //   //     type: "Success",
  //   //     title: "Case Closed",
  //   //     subtitle: subtitle,
  //   //     date: DateTime.now(),
  //   //     call: "",
  //   //     assessmentId: 0,
  //   //   encounterId: 0,
  //   //   ),
  //   // );
  // }
}
