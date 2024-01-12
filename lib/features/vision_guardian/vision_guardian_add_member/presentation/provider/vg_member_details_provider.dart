import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_eye_assessment/data/model/vg_eye_assessment_patient_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var visionGuardianMemberDetailsProvider = ChangeNotifierProvider.autoDispose(
    (ref) => VisionGuardianMemberDetailsProvider());

class VisionGuardianMemberDetailsProvider extends ChangeNotifier {
  var casesCritical = [
    VisionGuardianEyeAssessmentPatientModel(
      name: "Raghav Pandey - PD 789996",
      age: "28 yrs",
      gender: "Male",
      reportDate: "17 Dec 23",
      reportTime: "11:00 AM",
      assessmentId: "Assessment ID: AT 010111",
      urgency: "Urgent Consult",
      profession: "Eye Surgeon",
      recommendation:
          "Hey Raghavan, you have an upcoming appointment for your eye checkup on Sep 23rd at 2.00 PM.",
      image: AppImages.raghavi,
      prefix: "PG",
    ),
    VisionGuardianEyeAssessmentPatientModel(
      name: "Raghav Pandey - PD 789996",
      age: "28 yrs",
      gender: "Male",
      reportDate: "17 Dec 23",
      reportTime: "11:00 AM",
      assessmentId: "Assessment ID: AT 010111",
      urgency: "Routine Consult",
      profession: "Eye Surgeon",
      recommendation:
          "Hey Raghavan, you have an upcoming appointment for your eye checkup on Sep 23rd at 2.00 PM.",
      image: AppImages.raghavi,
      prefix: "PG",
    )
  ];

  var addMemberFilters = [
    "All",
    "Early Consult",
    "Urgent Consult",
    "Routine Consult"
  ];
  XFile? _imageFile;
  final _nameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _ageController = TextEditingController();
  final _dobController = TextEditingController();
  final _abhaidController = TextEditingController();
  final _mobileNumberController = TextEditingController();
  final _emailController = TextEditingController();
  final _doorNoController = TextEditingController();
  final _streetController = TextEditingController();
  final _subDistrictController = TextEditingController();
  final _districtController = TextEditingController();
  final _cityController = TextEditingController();
  final _stateController = TextEditingController();
  final _pincodeController = TextEditingController();
  String? _gender;

  XFile? get image => _imageFile;
  set image(XFile? value) {
    _imageFile = value;
    notifyListeners();
  }

  set setGender(String value) => _gender = value;
  String? get gender => _gender;

  TextEditingController get name => _nameController;
  TextEditingController get lastName => _lastNameController;
  TextEditingController get age => _ageController;
  TextEditingController get dob => _dobController;
  TextEditingController get abhaid => _abhaidController;
  TextEditingController get mobileNumber => _mobileNumberController;
  TextEditingController get email => _emailController;
  TextEditingController get doorNo => _doorNoController;
  TextEditingController get street => _streetController;
  TextEditingController get subDistrict => _subDistrictController;
  TextEditingController get district => _districtController;
  TextEditingController get city => _cityController;
  TextEditingController get state => _stateController;
  TextEditingController get pincode => _pincodeController;
}
