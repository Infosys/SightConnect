import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final patientRegistrationProvider = ChangeNotifierProvider.autoDispose(
  (ref) => PatientRegistrationProvider(),
);

class PatientRegistrationProvider extends ChangeNotifier {
  String _name;
  String _gender;
  DateTime _dateOfBirth;
  String _mobileNumber;
  String _pincode;
  bool _isLoading;

  PatientRegistrationProvider()
      : _isLoading = false,
        _name = "",
        _gender = "",
        _dateOfBirth = DateTime.now(),
        _mobileNumber = "",
        _pincode = "";

  bool get isLoading => _isLoading;
  DateTime get dateOfBirth => _dateOfBirth;
  String get name => _name;
  String get mobileNumber => _mobileNumber;
  String get pincode => _pincode;
  String get gender => _gender;

  set setName(String name) {
    _name = name;
    notifyListeners();
  }

  set setDateOfBirth(DateTime dateOfBirth) {
    _dateOfBirth = dateOfBirth;
    notifyListeners();
  }

  set setMobileNumber(String mobileNumber) {
    _mobileNumber = mobileNumber;
    notifyListeners();
  }

  set setPincode(String pincode) {
    _pincode = pincode;
    notifyListeners();
  }

  set setGender(String gender) {
    _gender = gender;
    notifyListeners();
  }

  Future<void> registerPatient() async {
    _isLoading = true;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 2));
    _isLoading = false;
    notifyListeners();
    logger.d({
      "Name": _name,
      "DOB": _dateOfBirth,
      "Gender": _gender,
      "Mobile Number": _mobileNumber,
      "Pincode": _pincode,
    });
  }
}
