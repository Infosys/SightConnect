import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/features/patient/patient_authentication/domain/models/enums/gender.dart';
import 'package:eye_care_for_all/features/patient/patient_authentication/data/repositories/patient_authentication_repository_impl.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../domain/models/profile_model.dart';

final patientRegistrationProvider = ChangeNotifierProvider.autoDispose(
  (ref) => PatientRegistrationProvider(ref),
);

class PatientRegistrationProvider extends ChangeNotifier {
  Ref ref;

  String _name;
  String _gender;
  DateTime _dateOfBirth;
  String _mobileNumber;
  String _pincode;
  bool _isLoading;

  PatientRegistrationProvider(this.ref)
      : _isLoading = false,
        _name = "",
        _gender = "MALE",
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

  String? validateName(String? value) {
    if (value!.isEmpty) {
      return "Name cannot be empty";
    }
    return null;
  }

  String? validateMobileNumber(String? value) {
    if (value!.isEmpty || value.length != 10) {
      return "Invalid Mobile Number";
    }
    return null;
  }

  String? validatePincode(String? value) {
    if (value!.isEmpty || value.length != 6) {
      return "Invalid Pincode";
    }
    return null;
  }

  String? validateAge(String? value) {
    if (value!.isEmpty) {
      return "Age cannot be empty";
    }
    return null;
  }

  Future<void> registerPatient() async {
    _isLoading = true;
    notifyListeners();
    var patient = PatientModel(
      firstName: _name.split(" ").first,
      lastName: _name.split(" ").last,
      dayOfBirth: DateFormat('dd').format(_dateOfBirth),
      monthOfBirth: DateFormat('MM').format(_dateOfBirth),
      yearOfBirth: DateFormat('yyyy').format(_dateOfBirth),
      gender: _gender == "MALE"
          ? Gender.Male
          : _gender == "FEMALE"
              ? Gender.Female
              : Gender.Other,
      profilePhoto: AppImages.raghavi,
      mobile: _mobileNumber,
      email: "${_name.replaceAll(" ", "")}@gmail.com",
      address: [
        AddressModel(
            line: "Line 1",
            ward: "Ward 1",
            town: "Madhurawada",
            village: "Madhurawada",
            district: "Visakhapatnam",
            state: "Andhra Pradesh",
            pincode: _pincode,
            primary: true)
      ],
    );
    try {
      var response = await ref
          .read(patientAuthenticationRepositoryProvider)
          .onboardPatient(patient);
      logger.d(response);
    } catch (e) {
      logger.d(e);
    }
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
