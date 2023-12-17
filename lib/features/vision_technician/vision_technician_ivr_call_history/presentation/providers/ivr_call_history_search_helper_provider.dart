import 'package:eye_care_for_all/features/vision_technician/vision_technician_ivr_call_history/data/contracts/ivr_repository.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_ivr_call_history/data/model/ivr_call_history_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_ivr_call_history/data/repositories/ivr_repository_impl.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

var getIvrCallHistoryDetailsProvider =
    FutureProvider.autoDispose<List<IvrCallHistoryModel>>((ref) async {
  return await ref.watch(ivrRepository).getIvrCallHistory(mobile: "8985050890");
});

final ivrCallHistorySearchHelperProvider =
    ChangeNotifierProvider<IvrCallHistorySearchHelperNotifier>((ref) {
  return IvrCallHistorySearchHelperNotifier(
    ivrRepositoryRef: ref.watch(ivrRepository),
  );
});

class IvrCallHistorySearchHelperNotifier extends ChangeNotifier {
  IvrRepository ivrRepositoryRef;
  List<IvrCallHistoryModel> ivrCallHistoryDetails = [];
  bool isLoading = false;

  IvrCallHistorySearchHelperNotifier({required this.ivrRepositoryRef});

  var tablefilter = [
    {"type": "All", "checked": true},
    {"type": "Completed", "checked": true},
    {"type": "Failed", "checked": true},
    {"type": "No Answer", "checked": true},
    {"type": "Incoming", "checked": true},
    {"type": "Outgoing", "checked": true}
  ];

  Future<void> makeIvrCall(String patientMobile) async {
    try {
      isLoading = true;
      notifyListeners();
      await ivrRepositoryRef.makeIvrCall(patientMobile: patientMobile);
    } finally {
      isLoading = false;
      notifyListeners();
    }
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
