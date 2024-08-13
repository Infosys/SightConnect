import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var visionGuardianOrganisationDetailsProvider = ChangeNotifierProvider.autoDispose(
    (ref) => VisionGuardianOrganisationDetailsProvider());

class VisionGuardianOrganisationDetailsProvider extends ChangeNotifier {
  final _orgID = TextEditingController();
  final _visionCenterCode = TextEditingController();

  final _doorNoController = TextEditingController();
  final _streetController = TextEditingController();
  final _subDistrictController = TextEditingController();
  final _districtController = TextEditingController();
  final _cityController = TextEditingController();
  final _stateController = TextEditingController();
  final _pincodeController = TextEditingController();
  String? _gender;

  set setGender(String value) => _gender = value;
  String? get gender => _gender;

  TextEditingController get orgID => _orgID;
  TextEditingController get visionCenterCode => _visionCenterCode;
  TextEditingController get doorNo => _doorNoController;
  TextEditingController get street => _streetController;
  TextEditingController get subDistrict => _subDistrictController;
  TextEditingController get district => _districtController;
  TextEditingController get city => _cityController;
  TextEditingController get state => _stateController;
  TextEditingController get pincode => _pincodeController;
}
