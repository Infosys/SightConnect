import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../core/constants/app_images.dart';
import '../../../../../patient/patient_authentication/data/repositories/patient_authentication_repository_impl.dart';
import '../../../../../patient/patient_authentication/domain/models/enums/gender.dart';
import '../../../../../patient/patient_authentication/domain/models/enums/relationship.dart';
import '../../../../../patient/patient_authentication/domain/models/profile_model.dart';

var memberDetailsProvider = ChangeNotifierProvider(
  (ref) => MemberDetailsProvider(ref),
);

class MemberDetailsProvider extends ChangeNotifier {

Ref _ref;

MemberDetailsProvider(this._ref);

  String _name = "";
  String _mobileNumber = "";
  String _address = "";
  String _dob = "";
  String _gender = "";
  bool _isLoading = false;

  get isLoading => _isLoading;

 set isLoading( value) => _isLoading = value;



  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  List<Map<String, dynamic>> response = [];

  GlobalKey<FormState> get formKey => _formKey;
  void setInfo(String type, String value) {
    switch (type) {
      case 'Name':
        setname(value);
        break;
      case 'Address (Pincode)':
        setaddress(value);
        break;
      case 'Mobile Number':
        setmobileNumber(value);
        break;
      case 'Date of Birth':
        setdob(value);
        break;
      // Handle other cases as needed
      default:
        // Handle unknown type
        break;
    }
    notifyListeners();
  }

  void setname(String name) {
    _name = name;
    notifyListeners();
    logger.d('\n\n$_name\n\n');
  }

  void setmobileNumber(String mobileNumber) {
    _mobileNumber = mobileNumber;
    notifyListeners();
    logger.d('\n\n$_mobileNumber\n\n');
  }

  void setaddress(String address) {
    _address = address;
    notifyListeners();
    logger.d('\n\n$_address\n\n');
  }

  void setdob(String dob) {
    _dob = dob;
    notifyListeners();
    logger.d('\n\n$_dob\n\n');
  }

  void setresponse() async {
    _isLoading = true;
    notifyListeners();
    var patient = PatientModel(
      name: _name,
      dayOfBirth: _dob.split("/")[0],
      monthOfBirth: _dob.split("/")[1],
      yearOfBirth: _dob.split("/")[2],
      gender: _gender == "Male"
          ? Gender.MALE
          : _gender == "Female"
              ? Gender.FEMALE
              : Gender.OTHER,
      profilePhoto: AppImages.raghavi,
      mobile: _mobileNumber,
      parentPatientId: "1202",
      email: "${_name.replaceAll(" ", "")}@gmail.com",
      relationship: Relationship.UNCLE,
      address: [
        AddressModel(
            line: "Line 1",
            ward: "Ward 1",
            town: "Madhurawada",
            village: "Madhurawada",
            district: "Visakhapatnam",
            state: "Andhra Pradesh",
            pincode: _address,
            primary: true)
      ],
    );
    try {
      var response = await _ref
          .read(patientAuthenticationRepositoryProvider)
          .onboardPatient(patient);
      logger.d(response);
    } catch (e) {
      logger.d(e);
    }
    _isLoading = false;
    notifyListeners();
    response.add({
      'name': _name,
      'mobileNumber': _mobileNumber,
      'address': _address,
      'dob': _dob,
      'gender': _gender
    });
    logger.d('\n\n$response\n\n');
    // notifyListeners();
  }

  set gender(String gender) => _gender = gender;

  String? get name => _name;
  String? get mobileNumber => _mobileNumber;
  String? get address => _address;
  String? get dob => _dob;
}
