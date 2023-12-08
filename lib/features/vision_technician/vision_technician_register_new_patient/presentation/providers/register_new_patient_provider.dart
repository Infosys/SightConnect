import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/data/model/eye_care_details_question_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var registerNewPatientProvider =
    ChangeNotifierProvider<RegisterNewPatientNotifier>(
        (ref) => RegisterNewPatientNotifier());

class RegisterNewPatientNotifier extends ChangeNotifier {
  Map<String, TextEditingController> basicDetailsTextEditingControllers = {
    "firstNameController": TextEditingController(),
    "middleNameController": TextEditingController(),
    "emailIdController": TextEditingController(),
    "abhaIdController": TextEditingController(),
    "lastNameController": TextEditingController(),
    "ageController": TextEditingController(),
    "dateofBirthController": TextEditingController(),
    "mobileNumberController": TextEditingController(),
  };
  Map<String, TextEditingController> eyeCareDetailsTextEditingControllers = {
    "whereController1": TextEditingController(),
    "whereController2": TextEditingController()
  };
  var addressDetailsTextEditingControllers = {
    "doorNoController": TextEditingController(),
    "streetController": TextEditingController(),
    "districtController": TextEditingController(),
    "cityController": TextEditingController(),
    "stateController": TextEditingController(),
    "landMarkController": TextEditingController(),
    "pinCodeController": TextEditingController(),
  };

  String stateDropDownValue = "Andhra Pradesh";
  int genderValue = -1;

  List<EyeCareDetailsQuestionModel> eyeCareDetailsQuestion = [
    EyeCareDetailsQuestionModel(
      questionId: 1,
      question: "Did you have eye examination done previously",
      answer: "UnSelected",
      answerDescription: "",
    ),
    EyeCareDetailsQuestionModel(
        questionId: 2,
        question: "Did you have cataract surgery",
        answer: "UnSelected",
        answerDescription: ""),
    EyeCareDetailsQuestionModel(
        questionId: 3,
        question: "Are you using eye glasses",
        answer: "UnSelected",
        answerDescription: ""),
  ];

  Map<String, String> getFormDetails() {
    var registerNewPatientDetails = {
      ...basicDetailsTextEditingControllers.map((key, value) {
        return MapEntry(key, value.text);
      })
    };
    registerNewPatientDetails
        .addAll(eyeCareDetailsTextEditingControllers.map((key, value) {
      return MapEntry(key, value.text);
    }));

    registerNewPatientDetails
        .addAll(addressDetailsTextEditingControllers.map((key, value) {
      return MapEntry(key, value.text);
    }));

    registerNewPatientDetails.addAll({"stateDropDown": stateDropDownValue});
    registerNewPatientDetails.addAll({
      "Gender": (genderValue == 1)
          ? "Male"
          : (genderValue == 2 ? "Female" : (genderValue == 3 ? "Others" : ""))
    });

    return registerNewPatientDetails;
  }

  void setStateDropDown(value) {
    stateDropDownValue = value;
    notifyListeners();
  }

  void setGenderValue(value) {
    genderValue = value;
    notifyListeners();
  }

  void seteyeCareAnser(index, value) {
    eyeCareDetailsQuestion[index].answer = value;
    print(eyeCareDetailsQuestion);
    notifyListeners();
  }
}
