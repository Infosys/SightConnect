import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/domain/repositories/vision_technician_home_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/models/vt_search_result_model.dart';
import '../../domain/repositories/vt_search_repository_impl.dart';

var visionTechnicianSearchProvider =
    ChangeNotifierProvider((ref) => VisionTechnicianSearchProvider(ref));

class VisionTechnicianSearchProvider extends ChangeNotifier {
  Ref ref;
  VisionTechnicianHomeRepositoryImpl visionTechnicianHomeRepositoryImpl =
      VisionTechnicianHomeRepositoryImpl();

  VisionTechnicianSearchProvider(this.ref) {
    _listOfPatients = visionTechnicianHomeRepositoryImpl.listOfPatients();
  }

  // var dataModel = ref.read(vtPatientSearchRepositoryProvider);

  VTPatientSearchDto? _patientDetails;

  List<VTPatientModel> _listOfPatients = [];
  List<VTPatientModel> _searchedPatientList = [];
  List<VTPatientModel> get listOfPatients => _listOfPatients;
  List<VTPatientModel> get searchedPatientUserList => _searchedPatientList;
  VTPatientSearchDto? get patientDetails => _patientDetails;

  final List<VTPatientSearchDto> _patientSearchDto = [];
  List<VTPatientSearchDto> get patientSearchDto => _patientSearchDto;

  // vtPatientSearchRepositoryProvider

  void setPatientDetails(VTPatientSearchDto patientDetails) {
    _patientDetails = patientDetails;

    notifyListeners();
  }

  void setSearchPatientList(String query) async {
    _patientSearchDto.clear();
    _patientSearchDto.add(await ref
        .read(vtPatientSearchRepositoryProvider)
        .getPatientProfile(query));
    // _searchedPatientList =
    //     visionTechnicianHomeRepositoryImpl.searchUsers(query);
    notifyListeners();
  }

  // void addSolutions(String solution) {
  //   if (_patientDetails == null) {
  //     return;
  //   }

  //   if (solution == "Spectacles") {
  //     _patientDetails!.spectacles = true;
  //   }

  //   if (solution == "Cataract Surgery") {
  //     _patientDetails!.cataractSurgery = true;
  //   }

  //   if (solution == "Eye Drops") {
  //     _patientDetails!.eyeDrops = true;
  //   }

  //   if (solution == "Oral Medication") {
  //     _patientDetails!.oralMedication = true;
  //   }
  // }

  // void closeAssessment() {
  //   if (_patientDetails == null) {
  //     return;
  //   }
  //   _patientDetails!.closed = true;
  //   notifyListeners();
  // }
}
