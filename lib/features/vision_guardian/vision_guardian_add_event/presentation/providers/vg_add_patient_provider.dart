import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/contracts/vg_add_event_repository.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_patient_model.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/repository/vg_add_event_respository_impl.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var getEventPatientListProvider =
    FutureProvider.autoDispose<List<VisionGuardianEventPatientResponseModel>>(
        (ref) async {
  ref.watch(addPatientEventProvider).patientQueryDataValue;

  var response = await ref
      .watch(vgAddEventRepository)
      .getEventPatientList(patientQueryData: {
    "searchParams": ref.read(addPatientEventProvider).patientQueryDataValue,
    "offset": ref.read(addPatientEventProvider).offsetValue,
    "limit": ref.read(addPatientEventProvider).getLimit
  });
  var controller =
      ref.watch(addPatientEventProvider).patientListScrollController;

  controller.jumpTo(controller.position.maxScrollExtent);

  ref.read(addPatientEventProvider).setPatientList(response);
  return ref.read(addPatientEventProvider).getPatientListValue;
});

final addPatientEventProvider =
    ChangeNotifierProvider<AddPatientEventNotifier>((ref) {
  return AddPatientEventNotifier(
    vgAddEventRepository: ref.watch(vgAddEventRepository),
  );
});

class AddPatientEventNotifier extends ChangeNotifier {
  final VgAddEventRepository vgAddEventRepository;

  String patientQueryData = "";

  int limit = 5;
  int offset = 0;

  int get getLimit => limit;
  int get offsetValue => offset;

  String get patientQueryDataValue => patientQueryData;

  ScrollController patientListScrollController = ScrollController();

  List<VisionGuardianEventPatientResponseModel> patientList = [];

  List<VisionGuardianEventPatientResponseModel> get getPatientListValue =>
      patientList;

  AddPatientEventNotifier({required this.vgAddEventRepository}) {
    patientListScrollController.addListener(scrollBarListener);
  }

  void setPatientList(List<VisionGuardianEventPatientResponseModel> list) {
    patientList = patientList + list;
  }

  void setPatientSearchQuery(queryData) {
    resetFields();
    patientQueryData = queryData;
/*     if (patientQueryData.length >= 4) {
      
    } */
    notifyListeners();
  }

  void scrollBarListener() {
    if (patientListScrollController.position.pixels ==
        patientListScrollController.position.maxScrollExtent) {
      print("scrollBarListener");
      offset = offset + 1;
      print(offset);
      print(limit);
      notifyListeners();
    }
  }

  void resetFields() {
    patientList = [];
    offset = 0;
  }
}
