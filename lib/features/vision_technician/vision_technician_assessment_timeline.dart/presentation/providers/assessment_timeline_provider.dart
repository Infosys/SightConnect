import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_timeline.dart/data/models/assessment_timeline_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final assessmentTimelineProvider = ChangeNotifierProvider<AssessmentTimelineNotifier>((ref) {
  return AssessmentTimelineNotifier();
});


class AssessmentTimelineNotifier extends ChangeNotifier {
  
   List<AssessmentTimelineViewModel> timeLineList = [
    AssessmentTimelineViewModel(
        type: "Success",
        title: "2nd Reminder Call",
        subtitle: "Patient Agreed to meet VT",
        date: "16 Sep 2023, 9:30 AM",
        call: "VT Call",
        assessmentId: ""),
    AssessmentTimelineViewModel(
      type: "fail",
      title: "1st Reminder Call",
      subtitle: "No Response from Patient",
      date: "10 Sep 2023, 10:30 AM",
      call: "IVR Call",
      assessmentId: "",
    ),
    AssessmentTimelineViewModel(
      type: "Success",
      title: "Preliminary Assessment",
      subtitle: "Obstructed Vision due to Sticky Discharge.",
      date: "11 Apr 23, 3:30 PM",
      call: "IVR Call",
      assessmentId: "Assessment ID: EA 010101",
    ),
    AssessmentTimelineViewModel(
      type: "Success",
      title: "Patient Registered",
      subtitle: "PID: OP 934567.",
      date: "11 Apr 23, 3:10 PM",
      call: "IVR Call",
      assessmentId: "",
    ),
  ];
  
  void addToTimeline() {
    timeLineList.insert(
      0,
      AssessmentTimelineViewModel(
        type: "Success",
        title: "Case Closed",
        subtitle: "",
        date: "11 Apr 23, 3:30 PM",
        call: "",
        assessmentId: "",
      ),
    );
  }

}


 

