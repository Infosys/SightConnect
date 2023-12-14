import 'package:eye_care_for_all/features/vision_technician/vision_technician_ivr_call_history/data/model/ivr_call_history_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final ivrCallHistorySearchHelperProvider =
    ChangeNotifierProvider<IvrCallHistorySearchHelperNotifier>((ref) {
  return IvrCallHistorySearchHelperNotifier();
});

class IvrCallHistorySearchHelperNotifier extends ChangeNotifier {
  var tablefilter = [
    {"type": "All", "checked": true},
    {"type": "Completed", "checked": true},
    {"type": "Failed", "checked": true},
    {"type": "No Answer", "checked": true},
    {"type": "Incoming", "checked": true},
    {"type": "Outgoing", "checked": true}
  ];

  List<IvrCallHistoryModel> ivrCallHistoryDetails = [
    IvrCallHistoryModel(
      patientId: "OP 545678",
      name: "Arun Das",
      duration: "5 min",
      day: "Today",
      time: "1:15 pm",
      status: "COMPLETED",
      calltype: "in",
    ),
    IvrCallHistoryModel(
      patientId: "OP 545678",
      name: "Arun Das",
      duration: "5 min",
      day: "Today",
      time: "1:15 pm",
      status: "COMPLETED",
      calltype: "out",
    ),
    IvrCallHistoryModel(
      patientId: "OP 545678",
      name: "Arun Das",
      duration: "5 min",
      day: "Today",
      time: "1:15 pm",
      status: "COMPLETED",
      calltype: "in",
    ),
    IvrCallHistoryModel(
      patientId: "OP 545678",
      name: "Arun Das",
      duration: "5 min",
      day: "Today",
      time: "1:15 pm",
      status: "No Answer",
      calltype: "out",
    ),
  ];

    List<String> tableHeading = [
      "Patient ID",
      "Name",
      "Duration",
      "Day",
      "Time",
      "Status",
      ""
    ];
  void setTableFilter(index) {
    tablefilter[index]["checked"] = !(tablefilter[index]["checked"] as bool);
    notifyListeners();
  }
}
