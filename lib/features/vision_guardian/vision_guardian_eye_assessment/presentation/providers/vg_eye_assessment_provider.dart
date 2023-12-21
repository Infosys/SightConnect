import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_eye_assessment/data/fake_data_source.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_eye_assessment/data/model/vg_eye_assessment_patient_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var visionGuardianEyeAssessmentProvider = ChangeNotifierProvider.autoDispose(
    (ref) => VisionGuardianEyeAssessmentNotifier());

class VisionGuardianEyeAssessmentNotifier extends ChangeNotifier {
  var eyeAssessmenttableFilter = eyeAssessmentfilters;
   List<VisionGuardianEyeAssessmentPatientModel> eyeAssessmentPatientDetails = casesCritical;
  List<VisionGuardianEyeAssessmentPatientModel> searchResults = casesCritical;
  var checkedFilter = "";

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
  var status = [
    {"type": "Early Consult", "checked": true},
    {"type": "Urgent Consult", "checked": true},
    {"type": "Routine Consult", "checked": true},
    {"type": "Follow Up", "checked": true},
    {"type": "Completed", "checked": true},
  ];


  void setSearchPatientList(String query) async {

   searchResults=[]; 
    
    for (int i = 0; i < eyeAssessmentPatientDetails.length; i++) {
 
      if (eyeAssessmentPatientDetails[i]
          .name!
          .toLowerCase()
          .contains(query.toLowerCase())) {
        searchResults.add(eyeAssessmentPatientDetails[i]);
      }

      else if (eyeAssessmentPatientDetails[i]
          .assessmentId!
          .toLowerCase()
          .contains(query.toLowerCase())) {
        searchResults.add(eyeAssessmentPatientDetails[i]);
      }

      else if (eyeAssessmentPatientDetails[i]
          .gender!
          .toLowerCase()
          .contains(query.toLowerCase())) {
        searchResults.add(eyeAssessmentPatientDetails[i]);
      }
    }

    notifyListeners();
  }


  void setRangeSliderValues(values) {
    currentRangeValues = values;
    notifyListeners();
  }

  void toggleFilterBoxes(name, index) {
    if (name == "Gender") {
      gender[index]["checked"] = !(gender[index]["checked"] as bool);
    } else if (name == "Location") {
      location[index]["checked"] = !(location[index]["checked"] as bool);
    } else {
      status[index]["checked"] = !(status[index]["checked"] as bool);
    }
    notifyListeners();
  }

  void setTableFilter(int index) {
    for (int i = 0; i < eyeAssessmenttableFilter.length; i++) {
      eyeAssessmenttableFilter[i]["checked"] = false;
    }
    eyeAssessmenttableFilter[index]["checked"] =
        !(eyeAssessmenttableFilter[index]["checked"] as bool);
    checkedFilter = eyeAssessmenttableFilter[index]["type"].toString();
    filterEyeAssessmentPatientDetails();
    notifyListeners();
  }

/*   void filterEyeAssessment()
  {

  } */

  void filterEyeAssessmentPatientDetails() {
    if (checkedFilter == "All") {
      searchResults = casesCritical;
      notifyListeners();
    } else {
      searchResults = casesCritical
          .where((element) => element.urgency.toString() == checkedFilter)
          .toList();
      notifyListeners();
    }
  }
}
