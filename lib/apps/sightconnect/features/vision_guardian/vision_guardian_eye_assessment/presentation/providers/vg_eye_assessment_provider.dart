/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/data/model/vg_patient_response_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_eye_assessment/data/contracts/vg_eye_assessment_repository.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_eye_assessment/data/repository/vg_eye_assessment_respository_impl.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_vg_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../vision_guardian_add_event/presentation/providers/vg_user_data_provider.dart';

final visionGuardianEyeAssessmentProvider =
    ChangeNotifierProvider.autoDispose<VisionGuardianEyeAssessmentNotifier>(
        (ref) {
  return VisionGuardianEyeAssessmentNotifier(
    vgEyeAssessmentRepository: ref.watch(vgEyeAssessmentRepository),
    globalVGProvider: ref.read(globalVGProvider),
    vgUserDataProvider: ref.read(vgUserDataProvider),
  );
});

class VisionGuardianEyeAssessmentNotifier extends ChangeNotifier {
  bool initialValue = true;
  var checkedFilter = "";
  final VgEyeAssessmentRepository vgEyeAssessmentRepository;
  final GlobalVGProvider globalVGProvider;
  final VGUserDataProvider vgUserDataProvider;
  List<VisionGuardianPatientResponseModel> listOfPatientDetails = [];
  List<VisionGuardianPatientResponseModel> searchResults = [];
  String patientStatusFiltervalue = "";
  var isSelected = -1;

  ScrollController eyeAssessmentController = ScrollController();
  bool error = false;
  List<VisionGuardianPatientResponseModel> newEyeAssessmentPatientList = [];
  VisionGuardianEyeAssessmentNotifier({
    required this.vgEyeAssessmentRepository,
    required this.globalVGProvider,
    required this.vgUserDataProvider,
  }) {
    List<VisionGuardianPatientResponseModel> previousList = [];
    getEyeAssessmentPatientsReport(previousList);
    eyeAssessmentController.addListener(scrollListener);
  }

  get listOfPatientDetailsValue => listOfPatientDetails;
  get getisSelected => isSelected;
  get getpatientStatusFiltervalue => patientStatusFiltervalue;

  int offset = 0;
  get getOffset => offset;
  var getisLoading = false;
  get initialVal => initialValue;

  TextEditingController searchController = TextEditingController();
  String errorMessage = "";
  RangeValues currentRangeValues = const RangeValues(40, 80);
  var gender = [
    {"type": "Male", "checked": true},
    {"type": "Female", "checked": true},
    {"type": "Others", "checked": true},
  ];
  var location = [
    {"type": "Hyderabad", "checked": true},
    {"type": "Warangal", "checked": true},
    {"type": "Nizamabad", "checked": true},
    {"type": "Nalgonda", "checked": true},
    {"type": "Khammam", "checked": true},
    {"type": "Karimnagar", "checked": true},
  ];

  void filterPatientList(selectedIndex, selectedValue) {
    isSelected = selectedIndex;
    patientStatusFiltervalue = selectedValue;
    offset = 0;
    listOfPatientDetails = [];
    searchResults = [];

    List<VisionGuardianPatientResponseModel> previousList = [];
    notifyListeners();
    getEyeAssessmentPatientsReport(previousList);
  }

  void getEyeAssessmentPatientsReport(previousList) async {
    try {
      getisLoading = true;
      initialValue = true;

      var statusfilter = getpatientStatusFiltervalue;

      List<VisionGuardianPatientResponseModel> response;

      response = await vgEyeAssessmentRepository.getVgEyeAssessmentReports(
          practitionerId: vgUserDataProvider.getUserId ?? 0,
          queryparams: {
            "page": offset,
            "size": 10,
            "category": statusfilter == "ALL" ? "" : statusfilter,
            "sort": ["encounterStartDate"]
          });

      // if (PersistentAuthStateService.authState.activeRole == "ROLE_VOLUNTEER") {

      // } else {
      //   response = await vgEyeAssessmentRepository.getVgEyeAssessmentReports(
      //       practitionerId: globalVGProvider.userId,
      //       queryparams: {
      //         "page": offset,
      //         "size": 10,
      //         "category": statusfilter == "ALL" ? "" : statusfilter,
      //         "sort": ["encounterStartDate"]
      //       });
      // }

      setPatientDetails(previousList + response);

      setSearchPatientDetails(previousList + response);
      newEyeAssessmentPatientList = response;
      getisLoading = false;
      error = false;
    } catch (e) {
      error = true;
      errorMessage = e.toString();
      getisLoading = false;
    }
    notifyListeners();
  }

  void setIsLoading() {
    initialValue = false;
    getisLoading = !getisLoading;
    notifyListeners();
  }

  void setSearchPatientList(String query) async {
    List<VisionGuardianPatientResponseModel> resultList = [];

    for (int i = 0; i < searchResults.length; i++) {
      if (searchResults[i].name!.toLowerCase().contains(query.toLowerCase())) {
        resultList.add(searchResults[i]);
      } else if (searchResults[i]
          .id!
          .toString()
          .contains(query.toLowerCase())) {
        resultList.add(searchResults[i]);
      }
    }
    listOfPatientDetails = resultList;

    notifyListeners();
  }

  void setPatientDetails(patientDetails) {
    listOfPatientDetails = patientDetails;
  }

  void setSearchPatientDetails(patientDetails) {
    searchResults = patientDetails;
  }

  void setOffset(pageNo) {
    offset = pageNo;
    notifyListeners();
  }

  void scrollListener() {
    logger.d("page");
    if (eyeAssessmentController.position.pixels ==
            eyeAssessmentController.position.maxScrollExtent &&
        (newEyeAssessmentPatientList.length == 10)) {
      offset = offset + 1;
      getEyeAssessmentPatientsReport(listOfPatientDetails);
    }
  }
}
