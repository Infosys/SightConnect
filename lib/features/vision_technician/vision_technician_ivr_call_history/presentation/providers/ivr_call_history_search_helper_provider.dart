import 'package:eye_care_for_all/features/vision_technician/vision_technician_ivr_call_history/data/contracts/ivr_repository.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_ivr_call_history/data/model/ivr_call_history_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_ivr_call_history/data/repositories/ivr_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final ivrCallHistorySearchHelperProvider =
    ChangeNotifierProvider<IvrCallHistorySearchHelperNotifier>((ref) {
  return IvrCallHistorySearchHelperNotifier(
      ivrRepositoryRef: ref.watch(ivrRepository));
});

class IvrCallHistorySearchHelperNotifier extends ChangeNotifier {
  IvrRepository ivrRepositoryRef;

  IvrCallHistorySearchHelperNotifier({required this.ivrRepositoryRef}) {
    getIvrCallHistoryDetails();
  }

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
      duration: 300,
      logDate: DateTime.now(),
      status: "COMPLETED",
      calltype: "in",
    ),
    IvrCallHistoryModel(
      patientId: "OP 545678",
      name: "Arun Das",
      duration: 300,
      logDate: DateTime.now(),
      status: "COMPLETED",
      calltype: "out",
    ),
    IvrCallHistoryModel(
      patientId: "OP 545678",
      name: "Arun Das",
      duration: 300,
      logDate: DateTime.now(),
      status: "COMPLETED",
      calltype: "in",
    ),
    IvrCallHistoryModel(
      patientId: "OP 545678",
      name: "Arun Das",
      duration: 300,
      logDate: DateTime.now(),
      status: "No Answer",
      calltype: "out",
    ),
  ];

  bool isLoading = false;

  void getIvrCallHistoryDetails() async {
    isLoading = true;
    notifyListeners();
    ivrCallHistoryDetails =
        await ivrRepositoryRef.getIvrCallHistory(mobile: "8985050890");
    isLoading = false;
    notifyListeners();
  }

  void makeIvrCall(String patientMobile) async {
    isLoading = true;
    notifyListeners();
    await ivrRepositoryRef.makeIvrCall(patientMobile: patientMobile);
    isLoading = false;
    notifyListeners();
  }

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
