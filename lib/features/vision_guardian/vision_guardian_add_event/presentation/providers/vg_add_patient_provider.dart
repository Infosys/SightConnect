import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/contracts/vg_add_event_repository.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_patient_model.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/repository/vg_add_event_respository_impl.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var getEventPatientListProvider =
    FutureProvider.autoDispose<List<VisionGuardianEventPatientResponseModel>>(
        (ref) async {
  ref.watch(addPatientEventProvider).patientQueryDataValue;
  return await ref.watch(vgAddEventRepository).getEventPatientList(
      patientQueryData:
          ref.read(addPatientEventProvider).patientQueryDataValue);
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

  String get patientQueryDataValue => patientQueryData;

  AddPatientEventNotifier({required this.vgAddEventRepository});

  void setPatientSearchQuery(queryData) {
    patientQueryData = queryData;
    notifyListeners();
  }
}
