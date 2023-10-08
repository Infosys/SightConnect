import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var patientMemberDetailsProvider = ChangeNotifierProvider(
  (ref) => PatientMemberDetailsProvider(),
);

class PatientMemberDetailsProvider extends ChangeNotifier {
  late String _name;
  late String _mobileNumber;
  late String _address;
  late String _dob;

  List<Map<String, dynamic>> response = [];

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
    print('\n\n$_name\n\n');
  }

  void setmobileNumber(String mobileNumber) {
    _mobileNumber = mobileNumber;
    notifyListeners();
    print('\n\n$_mobileNumber\n\n');
  }

  void setaddress(String address) {
    _address = address;
    notifyListeners();
    print('\n\n$_address\n\n');
  }

  void setdob(String dob) {
    _dob = dob;
    notifyListeners();
    print('\n\n$_dob\n\n');
  }

  void setresponse() {
    response.add({
      'name': _name,
      'mobileNumber': _mobileNumber,
      'address': _address,
      'dob': _dob,
    });
    print('\n\n$response\n\n');
    notifyListeners();
  }

  String get name => _name;
  String get mobileNumber => _mobileNumber;
  String get address => _address;
  String get dob => _dob;
}
