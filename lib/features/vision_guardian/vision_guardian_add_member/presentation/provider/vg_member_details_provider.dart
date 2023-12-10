import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var visionGuardianMemberDetailsProvider = ChangeNotifierProvider.autoDispose(
    (ref) => VisionGuardianMemberDetailsProvider());

class VisionGuardianMemberDetailsProvider extends ChangeNotifier {
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

  // set setName(String value) => _nameController.text = value;

  // String get lastName => _lastNameController.text;
  // set setLastName(String value) => _lastNameController.text = value;

  // String get age => _ageController.text;
  // set setAge(String value) => _ageController.text = value;

  // String get dob => _dobController.text;
  // set setDob(String value) => _dobController.text = value;

  // String get abhaid => _abhaidController.text;
  // set setAbhaid(String value) => _abhaidController.text = value;

  // String get mobileNumber => _mobileNumberController.text;
  // set setMobileNumber(String value) => _mobileNumberController.text = value;

  // String get email => _emailController.text;
  // set setEmail(String value) => _emailController.text = value;

  // String get doorNo => _doorNoController.text;
  // set setDoorNo(String value) => _doorNoController.text = value;

  // String get street => _streetController.text;
  // set setStreet(String value) => _streetController.text = value;

  // String get subDistrict => _subDistrictController.text;
  // set setSubDistrict(String value) => _subDistrictController.text = value;

  // String get district => _districtController.text;
  // set setDistrict(String value) => _districtController.text = value;

  // String get city => _cityController.text;
  // set setCity(String value) => _cityController.text = value;

  // String get state => _stateController.text;
  // set setState(String value) => _stateController.text = value;

  // String get pincode => _pincodeController.text;
  // set setPincode(String value) => _pincodeController.text = value;
}
