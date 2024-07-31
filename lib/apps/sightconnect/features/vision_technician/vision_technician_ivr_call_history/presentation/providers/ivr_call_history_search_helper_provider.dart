import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_ivr_call_history/data/contracts/ivr_repository.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_ivr_call_history/domain/model/ivr_call_history_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_ivr_call_history/domain/repositories/ivr_repository_impl.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_vt_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var getIvrCallHistoryDetailsProvider =
    FutureProvider.autoDispose<List<IvrCallHistoryModel>>((ref) async {
  final filters =
      ref.watch(ivrCallHistorySearchHelperProvider).getSelectedFilter();
  return await ref.watch(ivrRepository).getIvrCallHistory(
        mobile: ref
            .watch(ivrCallHistorySearchHelperProvider)
            .globalVTProvider
            .user
            ?.officialMobile
            .toString(),
        callStatus: filters,
      );
});

final ivrCallHistorySearchHelperProvider =
    ChangeNotifierProvider<IvrCallHistorySearchHelperNotifier>((ref) {
  return IvrCallHistorySearchHelperNotifier(
    ivrRepositoryRef: ref.watch(ivrRepository),
    globalVTProvider: ref.watch(globalVTProvider),
  );
});

class IvrCallHistorySearchHelperNotifier extends ChangeNotifier {
  IvrRepository ivrRepositoryRef;
  List<IvrCallHistoryModel> ivrCallHistoryDetails = [];
  bool isLoading = false;

  IvrCallHistorySearchHelperNotifier({
    required this.ivrRepositoryRef,
    required this.globalVTProvider,
  });
  final GlobalVTProvider globalVTProvider;
  var tablefilter = [
    {"type": "All", "checked": false},
    {"type": "Completed", "checked": true},
    {"type": "Failed", "checked": false},
    {"type": "No_Answer", "checked": false},
    {"type": "Incoming", "checked": false},
    {"type": "Outgoing", "checked": false}
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

  List<String>? getSelectedFilter() {
    if (tablefilter[0]["checked"] as bool) {
      return null;
    } else {
      List<String> selectedFilter = [];
      for (var element in tablefilter) {
        if (element["checked"] as bool) {
          selectedFilter.add((element["type"] as String).toUpperCase());
        }
      }
      return selectedFilter;
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
    if (index == 0) {
      for (var element in tablefilter) {
        element["checked"] = false;
      }
      tablefilter[index]["checked"] = true;
    } else {
      tablefilter[0]["checked"] = false;
      tablefilter[index]["checked"] = !(tablefilter[index]["checked"] as bool);
    }
    notifyListeners();
  }
}
