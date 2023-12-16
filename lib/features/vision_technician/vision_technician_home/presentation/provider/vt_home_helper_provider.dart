import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/contracts/vt_home_repository.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/source/vision_technician_home_local_source.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/domain/repositories/vt_home_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// var visionTechnicianHomeProvider =
//     ChangeNotifierProvider((ref) => VisionTechnicianHomeNotifier());

final vtHomeHelperProvider =
    ChangeNotifierProvider<VTHomeHelperNotifier>((ref) {
  return VTHomeHelperNotifier(
    vtHomeRepositoryRef: ref.watch(vtHomeRepository),
  );
});

class VTHomeHelperNotifier extends ChangeNotifier {
  VTHomeRepository vtHomeRepositoryRef;
  VTHomeHelperNotifier({
    required this.vtHomeRepositoryRef,
  }) {
    getListOfPatients();
  }

  List<VTPatientDto> _listOfAssessments =[];

  String filterValue = "All";

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void getListOfPatients() async {
    _isLoading = true;
    notifyListeners();
    _listOfAssessments = await vtHomeRepositoryRef.getListOfPatients();
    _isLoading = false;
    notifyListeners();
  }

  List<VTPatientDto> get listOfAssessments => _listOfAssessments;

  void updateListOfAssessments() {
    if (filterValue == "All") {
      // _listOfAssessments =
      //     VisionTechnicianLocalSourceImpl().getListOfPatients();
    }

    notifyListeners();
  }

  void updateFilterValue(String value) {
    filterValue = value;
    updateListOfAssessments();
    notifyListeners();
  }
}
