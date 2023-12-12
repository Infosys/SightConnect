import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/source/vision_technician_home_local_source.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var visionTechnicianHomeProvider =
    ChangeNotifierProvider((ref) => VisionTechnicianHomeNotifier());

class VisionTechnicianHomeNotifier extends ChangeNotifier {
  List<VTPatientModel> _listOfAssessments =
      VisionTechnicianLocalSourceImpl().getListOfPatients();

  String filterValue = "All";

  List<VTPatientModel> get listOfAssessments => _listOfAssessments;

  void updateListOfAssessments() {

    if(filterValue == "All"){
      _listOfAssessments = VisionTechnicianLocalSourceImpl().getListOfPatients();
    }

    notifyListeners();
  }

  void updateFilterValue(String value) {
    filterValue = value;
    updateListOfAssessments();
    notifyListeners();
  }
}
