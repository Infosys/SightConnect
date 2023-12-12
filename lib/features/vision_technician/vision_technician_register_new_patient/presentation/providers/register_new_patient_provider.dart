import 'dart:math';

import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/repositories/vision_technician_home_repository_impl.dart';
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
    "dateOfBirthController": TextEditingController(),
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

  String stateDropDownValue = "";
  String genderValue = "";
  VisionTechnicianHomeRepositoryImpl visionTechnicianHomeRepositoryImpl =
      VisionTechnicianHomeRepositoryImpl();
  VTPatientModel? patientDetails;

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

  String patientId = "";
  String assessmentId = "";

   List<String> listOfStates = [
    "",
    "Andhra Pradesh",
    "Arunachal Pradesh",
    "Assam",
    "Bihar",
    "Chhattisgarh",
    "Goa",
    "Madhya Pradesh",
  ];

  void saveAndProceed() {
    String firstName =
        basicDetailsTextEditingControllers["firstNameController"]!.text;
    String middleName =
        basicDetailsTextEditingControllers["middleNameController"]!.text;
    String abhaId =
        basicDetailsTextEditingControllers["abhaIdController"]!.text;
    String lastName =
        basicDetailsTextEditingControllers["lastNameController"]!.text;
    String age = basicDetailsTextEditingControllers["ageController"]!.text;
    String dateOfBirth =
        basicDetailsTextEditingControllers["dateOfBirthController"]!.text;
    String gender = genderValue;
    String mobileNo =
        basicDetailsTextEditingControllers["mobileNumberController"]!.text;
    String email =
        basicDetailsTextEditingControllers["emailIdController"]!.text;

    if (patientId.isEmpty) {
      patientId = _generateId(7);
    }

    if (assessmentId.isEmpty) {
      assessmentId = _generateId(6);
    }

    DateTime now = DateTime.now();
    String date = DateTime(
      now.year,
      now.month,
      now.day,
    ).toString();

    EyeCareDetailsQuestionModel question1 = EyeCareDetailsQuestionModel(
      questionId: 1,
      question: "Did you have eye examination done previously",
      answer: "UnSelected",
      answerDescription:
          eyeCareDetailsTextEditingControllers["whereController1"]!.text,
    );
    EyeCareDetailsQuestionModel question2 = EyeCareDetailsQuestionModel(
      questionId: 2,
      question: "Did you have cataract surgery",
      answer: "UnSelected",
      answerDescription:
          eyeCareDetailsTextEditingControllers["whereController2"]!.text,
    );

    List<EyeCareDetailsQuestionModel> eyeCareDetailsQuestion = [
      question1,
      question2,
    ];

    Address address = Address(
      doorNumber:
          addressDetailsTextEditingControllers["doorNoController"]!.text,
      street: addressDetailsTextEditingControllers["streetController"]!.text,
      district:
          addressDetailsTextEditingControllers["districtController"]!.text,
      city: addressDetailsTextEditingControllers["cityController"]!.text,
      state: stateDropDownValue,
      landmark:
          addressDetailsTextEditingControllers["landMarkController"]!.text,
      pincode: addressDetailsTextEditingControllers["pinCodeController"]!.text,
    );

    VTPatientModel patient = VTPatientModel(
      firstName: firstName,
      middleName: middleName,
      lastName: lastName,
      gender: gender,
      abhaId: abhaId,
      email: email,
      age: age,
      dateOfBirth: dateOfBirth,
      patientId: patientId!,
      assessmentId: assessmentId!,
      assessmentDate: date,
      status: "status",
      category: "category",
      mobileNo: mobileNo,
      closed: false,
      spectacles: false,
      cataractSurgery: false,
      eyeDrops: false,
      oralMedication: false,
      eyeCareDetailsQuestion: eyeCareDetailsQuestion,
      address: address,
    );
    patientDetails = patient;
    notifyListeners();
  }

  String _generateId(int length) {
    String id = "";
    for (int i = 0; i < length; i++) {
      id += _random(0, 10).toString();
    }
    return id;
  }

  int _random(int min, int max) {
    return min + Random().nextInt(max - min);
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
    notifyListeners();
  }

  void closeAssessment() {
    patientDetails!.closed = true;
    int length = visionTechnicianHomeRepositoryImpl.listOfPatients().length;
    visionTechnicianHomeRepositoryImpl.closeAssessment(length - 1);
    notifyListeners();
  }

  void submit() {
    visionTechnicianHomeRepositoryImpl.addPatient(patientDetails!);

    print(visionTechnicianHomeRepositoryImpl.listOfPatients());
  }
}
