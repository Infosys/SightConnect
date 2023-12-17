import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/contracts/vt_home_repository.dart';
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

var getAssessmentTableProvider = FutureProvider((ref) async {
  return await ref.watch(vtHomeRepository).getListOfPatients();
});

class VTHomeHelperNotifier extends ChangeNotifier {
  VTHomeRepository vtHomeRepositoryRef;
  VTHomeHelperNotifier({required this.vtHomeRepositoryRef});

  String filterValue = "All";

  final bool _isLoading = false;
  bool get isLoading => _isLoading;

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
