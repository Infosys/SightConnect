import 'package:eye_care_for_all/core/providers/global_vg_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_patient_response_model.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_eye_assessment/data/repository/vg_eye_assessment_respository_impl.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var vgEyeAssessmentHelperProvider =
    FutureProvider.autoDispose<List<VisionGuardianPatientResponseModel>>(
        (ref) async {
  ref.watch(visionGuardianEyeAssessmentProvider).getpatientStatusFiltervalue;
  ref.watch(visionGuardianEyeAssessmentProvider).isSelected;
  var statusfilter =
      ref.read(visionGuardianEyeAssessmentProvider).getpatientStatusFiltervalue;

  List<VisionGuardianPatientResponseModel> response = await ref
      .watch(vgEyeAssessmentRepository)
      .getVgEyeAssessmentReports(
          practitionerId: ref.read(globalVGProvider).userId,
          queryparams: {
        "page": ref.watch(visionGuardianEyeAssessmentProvider).offset,
        "size": 7,
        "category": statusfilter == "ALL" ? "" : statusfilter
      });

  ref.read(visionGuardianEyeAssessmentProvider).setPatientDetails(response);
  ref
      .read(visionGuardianEyeAssessmentProvider)
      .setSearchPatientDetails(response);

  return response;
});

final visionGuardianEyeAssessmentProvider =
    ChangeNotifierProvider<VisionGuardianEyeAssessmentNotifier>((ref) {
  return VisionGuardianEyeAssessmentNotifier();
});

class VisionGuardianEyeAssessmentNotifier extends ChangeNotifier {
  var checkedFilter = "";
  List<VisionGuardianPatientResponseModel> listOfPatientDetails = [];
  List<VisionGuardianPatientResponseModel> searchResults = [];
  String patientStatusFiltervalue = "";
  var isSelected = -1;

  ScrollController eyeAssessmentController = ScrollController();

  VisionGuardianEyeAssessmentNotifier() {
    eyeAssessmentController.addListener(() {
      logger.d("page");
    });
  }

  get listOfPatientDetailsValue => listOfPatientDetails;
  get getisSelected => isSelected;
  get getpatientStatusFiltervalue => patientStatusFiltervalue;

  int offset = 0;
  get getOffset => offset;

  TextEditingController searchController = TextEditingController();

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

/*   void updateList() {
    listOfEyeAssessmentPatientDetails = searchResultsPatientDetails;
/*     notifyListeners(); */
  } */

  void filterPatientList(selectedIndex, selectedValue) {
    isSelected = selectedIndex;
    patientStatusFiltervalue = selectedValue;
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

/*   void scrollListener() {
    logger.d("page");
    if (eyeAssessmentController.position.pixels ==
        eyeAssessmentController.position.maxScrollExtent) {
      offset = offset + 1;
      notifyListeners();
    }
  } */
}
