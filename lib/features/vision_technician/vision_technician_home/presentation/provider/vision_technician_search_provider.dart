import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/repositories/vision_technician_home_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var visionTechnicianSearchProvider =
    ChangeNotifierProvider((ref) => VisionTechnicianSearchProvider());

class VisionTechnicianSearchProvider extends ChangeNotifier {
  VisionTechnicianHomeRepositoryImpl visionTechnicianHomeRepositoryImpl =
      VisionTechnicianHomeRepositoryImpl();

  VisionTechnicianSearchProvider() {
    _listOfPatients = visionTechnicianHomeRepositoryImpl.listOfPatients();
  }

  VTPatientModel? _patientDetails;

  List<VTPatientModel> _listOfPatients = [];
  List<VTPatientModel> _searchedPatientList = [];
  List<VTPatientModel> get listOfPatients => _listOfPatients;
  List<VTPatientModel> get searchedPatientUserList => _searchedPatientList;
  VTPatientModel? get patientDetails => _patientDetails;

  void setPatientDetails(VTPatientModel patientDetails) {
    _patientDetails = patientDetails;

    notifyListeners();
  }

  void setSearchPatientList(String query) {
    _searchedPatientList =
        visionTechnicianHomeRepositoryImpl.searchUsers(query);
    notifyListeners();
  }

  void addSolutions(String solution) {
    if (_patientDetails == null) {
      return;
    }

    if (solution == "Spectacles") {
      _patientDetails!.spectacles = true;
    }

    if (solution == "Cataract Surgery") {
      _patientDetails!.cataractSurgery = true;
    }

    if (solution == "Eye Drops") {
      _patientDetails!.eyeDrops = true;
    }

    if (solution == "Oral Medication") {
      _patientDetails!.oralMedication = true;
    }
  }

  void closeAssessment() {
    if (_patientDetails == null) {
      return;
    }
    _patientDetails!.closed = true;
    notifyListeners();
  }
}
