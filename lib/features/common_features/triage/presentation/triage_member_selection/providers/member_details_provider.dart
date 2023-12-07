import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var memberDetailsProvider = ChangeNotifierProvider(
  (ref) => MemberDetailsProvider(),
);

class MemberDetailsProvider extends ChangeNotifier {
  String _name = "";
  String _mobileNumber = "";
  String _address = "";
  String _dob = "";
  String _gender = "";

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

  void setresponse() {
    response.add({
      'name': _name,
      'mobileNumber': _mobileNumber,
      'address': _address,
      'dob': _dob,
      'gender': _gender
    });
    logger.d('\n\n$response\n\n');
    notifyListeners();
  }

  set gender(String gender) => _gender = gender;

  String get name => _name;
  String get mobileNumber => _mobileNumber;
  String get address => _address;
  String get dob => _dob;
}
