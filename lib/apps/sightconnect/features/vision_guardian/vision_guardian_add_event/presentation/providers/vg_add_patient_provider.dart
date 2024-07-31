import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/data/contracts/vg_add_event_repository.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_patient_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/data/repository/vg_add_event_respository_impl.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final addPatientEventProvider =
    ChangeNotifierProvider<AddPatientEventNotifier>((ref) {
  return AddPatientEventNotifier(
    vgAddEventRepository: ref.watch(vgAddEventRepository),
  );
});

class AddPatientEventNotifier extends ChangeNotifier {
  final VgAddEventRepository vgAddEventRepository;

  String patientQueryData = "";

  int limit = 10;
  int offset = 0;
  bool isLoading = false;

  int get getLimit => limit;
  int get offsetValue => offset;

  String get patientQueryDataValue => patientQueryData;

  ScrollController patientListScrollController = ScrollController();

  List<VisionGuardianEventPatientResponseModel> patientList = [];
  List<VisionGuardianEventPatientResponseModel> newpatientList = [];

  List<VisionGuardianEventPatientResponseModel> get getPatientListValue =>
      patientList;

  AddPatientEventNotifier({required this.vgAddEventRepository}) {
    // patientListScrollController.addListener(scrollBarListener);
  }

  void setPatientSearchQuery(queryData) {
    offset = 0;
    isLoading = false;
    patientQueryData = queryData;
    List<VisionGuardianEventPatientResponseModel> previousList = [];
    getPatientList(previousList);
    if (patientListScrollController.hasClients) {
      patientListScrollController.jumpTo(0);
    }

    notifyListeners();
  }

  // void scrollBarListener() {
  //   logger.d("message");
  //   if (patientListScrollController.position.pixels ==
  //           patientListScrollController.position.maxScrollExtent &&
  //       (newpatientList.length == 10)) {
  //     offset = offset + 10;
  //     getPatientList(patientList);
  //   }
  // }

  void resetFields() {
    patientQueryData = "";
    patientList = [];
    offset = 0;
    isLoading = false;
  }

  Future<void> getPatientList(previousList) async {
    try {
      isLoading = true;
      var response =
          await vgAddEventRepository.getEventPatientList(patientQueryData: {
        "searchParams": patientQueryDataValue
        // "offset": offsetValue,
        // "limit": getLimit
      });
      newpatientList = response;
      patientList = previousList + response;
      isLoading = false;
      notifyListeners();
    } catch (error) {
      patientList = [];
      isLoading = false;
    }
  }
}
