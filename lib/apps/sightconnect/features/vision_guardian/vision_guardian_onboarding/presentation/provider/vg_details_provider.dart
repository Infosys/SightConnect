import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var visionGuardianDetailsProvider =
    ChangeNotifierProvider((ref) => VisionGuardianDetailsProvider());

class VisionGuardianDetailsProvider extends ChangeNotifier {
  final _nameController = TextEditingController();
  final _middleNameController = TextEditingController();

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

  final _wVillageCode = TextEditingController();
  final _wVillage = TextEditingController();
  final _wSubDistrictController = TextEditingController();
  final _wDistrictController = TextEditingController();
  final _wCityController = TextEditingController();
  final _wStateController = TextEditingController();
  final _wPincodeController = TextEditingController();
  String? _gender;

  set setGender(String value) => _gender = value;
  String? get gender => _gender;

  TextEditingController get name => _nameController;
  TextEditingController get middleName => _middleNameController;
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

  TextEditingController get wVillageCode => _wVillageCode;
  TextEditingController get wVillage => _wVillage;
  TextEditingController get wSubDistrict => _wSubDistrictController;
  TextEditingController get wDistrict => _wDistrictController;
  TextEditingController get wCity => _wCityController;
  TextEditingController get wState => _wStateController;
  TextEditingController get wPincode => _wPincodeController;
}
