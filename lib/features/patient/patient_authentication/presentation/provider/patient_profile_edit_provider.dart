import 'package:camera/camera.dart';
import 'package:eye_care_for_all/app_environment.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/features/patient/patient_authentication/data/repositories/patient_authentication_repository_impl.dart';
import 'package:eye_care_for_all/features/patient/patient_authentication/domain/models/enums/gender.dart';
import 'package:eye_care_for_all/features/patient/patient_authentication/domain/models/profile_model.dart';
import 'package:eye_care_for_all/features/patient/patient_authentication/domain/repositories/patient_authentication_repository.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:openid_client/openid_client.dart';

var patientEditProfileProvider = ChangeNotifierProvider.autoDispose((ref) =>
    PatientEditProfileProvider(
        ref.watch(patientAuthenticationRepositoryProvider)));

class PatientEditProfileProvider extends ChangeNotifier {
  final PatientAuthenticationRepository _patientAuthenticationRepository;

  PatientEditProfileProvider(this._patientAuthenticationRepository) {
    const patientId = 1202;
  if (AppEnv.isDev) {
    _patient = PatientResponseModel.fromJson({
      "intent": "PROFILE_SHARE",
      "metaData": {
        "hipId": null,
        "counterId": null,
        "hprId": null,
        "latitude": null,
        "longitude": null
      },
      "profile": {
        "patient": {
          "patientID": "9627849171",
          "abhaNumber": null,
          "abhaAddress": null,
          "name": "Raghavi Mishra",
          "gender": "FEMALE",
          "profilePhoto": AppImages.profieImage,
          "email": "RaghaviMishra@gmail.com",
          "dayOfBirth": "15",
          "monthOfBirth": "08",
          "yearOfBirth": "2006",
          "phoneNumber": "8907685432",
          "parentPatientId": null,
          "address": [
            {
              "id": 1252,
              "line": "Line 1",
              "district": "Vishakapatnam",
              "state": "Andhra Pradesh",
              "pincode": "678543",
              "label": null,
              "isPrimary": true,
              "isDeleted": null,
              "status": null,
              "ward": "Vishakapatnam",
              "town": null,
              "village": null,
              "subDistrict": null,
              "primary": true,
              "deleted": null
            }
          ],
          "relatedParty": [
            {
              "patientId": 1201,
              "relation": "MOTHER",
              "parentPatientId": 1202,
              "name": "Raghavi Pandey",
              "profilePicture": "assets/images/user.png",
              "age": 20,
              "regRef": "1-07b601cf-cc06-4ec1-95ca-d2d0dd16439b"
            },
            {
              "patientId": 1203,
              "relation": "FATHER",
              "parentPatientId": 1202,
              "name": "Mangal Pandey",
              "profilePicture": "assets/images/user.png",
              "age": 10,
              "regRef": "1-e640f259-3656-45cd-ac7c-73f9c5056ae5"
            },

            // {
            //   "patientId": 1203,
            //   "relation": "FATHER",
            //   "parentPatientId": 1202,
            //   "name": "Mangal Pandey",
            //   "profilePicture": "assets/images/user.png",
            //   "age": 0,
            //   "regRef": "1-e640f259-3656-45cd-ac7c-73f9c5056ae5"
            // },
            // {
            //   "patientId": 1203,
            //   "relation": "FATHER",
            //   "parentPatientId": 1202,
            //   "name": "Mangal Pandey",
            //   "profilePicture": "assets/images/user.png",
            //   "age": 0,
            //   "regRef": "1-e640f259-3656-45cd-ac7c-73f9c5056ae5"
            // },
          ],
          "identifiers": null,
          "medicalRecords": null
        }
      }
    });

    _nameController.text = _patient.profile?.patient?.name ?? "";
    _mobileNumberController.text = _patient.profile?.patient?.phoneNumber ?? "";
    _emailController.text = _patient.profile?.patient?.email ?? "";
    _abhaidController.text = '${_patient.profile?.patient?.abhaNumber ?? ""}';
    // _ageController.text = calculateAge("${_patient.profile?.patient?.yearOfBirth ?? ""}-${_patient.profile?.patient?.monthOfBirth ?? ""}-${_patient.profile?.patient?.dayOfBirth ?? ""}").toString();
    _dobController.text = "${_patient.profile?.patient?.yearOfBirth ?? ""}/${_patient.profile?.patient?.monthOfBirth ?? ""}/${_patient.profile?.patient?.dayOfBirth ?? ""}";
    _doorNoController.text = _patient.profile?.patient?.address?.first.line ?? "";
    _streetController.text = _patient.profile?.patient?.address?.first.ward ?? "";
    _subDistrictController.text = _patient.profile?.patient?.address?.first.town ?? "";
    _districtController.text = _patient.profile?.patient?.address?.first.district ?? "";
    _cityController.text = _patient.profile?.patient?.address?.first.village ?? "";
    _stateController.text = _patient.profile?.patient?.address?.first.state ?? "";
    _pincodeController.text = _patient.profile?.patient?.address?.first.pincode ?? "";
    _gender = _patient.profile?.patient?.gender.toString().split(".").last.capitalize() ?? "";


  } else {
    setProfileUpdateData();
  }
  }

  XFile? _imageFile;
  PatientResponseModel _patient = PatientResponseModel();
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
  bool _isLoading = false;

  XFile? get image => _imageFile;
  set image(XFile? value) {
    _imageFile = value;
    notifyListeners();
  }

  set setGender(String value) => _gender = value;
  String? get gender => _gender;

  PatientResponseModel get patient => this._patient;

  set patient(PatientResponseModel value) => this._patient = value;

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

  bool get isLoading => _isLoading;

  set isLoading(bool value) => _isLoading = value;

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

  int calculateAge(String dob) {
    String dobString = _dobController.text;
    DateTime dob = DateFormat('yyyy-MM-dd').parse(dobString);
    DateTime now = DateTime.now();
    Duration difference = now.difference(dob);
    int ageInYears = (difference.inDays / 365).floor();
    return ageInYears;
  }

  Future<void> setProfileUpdateData() async {
    _isLoading = true;
    notifyListeners();
    var patientId = 1102;
    final response = await _patientAuthenticationRepository.getPatientProfile(patientId);
    
    response.fold((error) {
      throw error;
    }, (result) {
      _patient = result;
    });

    _nameController.text = _patient.profile?.patient?.name ?? "";
    _mobileNumberController.text = _patient.profile?.patient?.phoneNumber ?? "";
    _emailController.text = _patient.profile?.patient?.email ?? "";
    _abhaidController.text = _patient.profile?.patient?.abhaNumber.toString() ?? "";
    _ageController.text = calculateAge("${_patient.profile?.patient?.yearOfBirth ?? ""}-${_patient.profile?.patient?.monthOfBirth ?? ""}-${_patient.profile?.patient?.dayOfBirth ?? ""}").toString();
    _dobController.text = "${_patient.profile?.patient?.dayOfBirth ?? ""}/${_patient.profile?.patient?.monthOfBirth ?? ""}/${_patient.profile?.patient?.yearOfBirth ?? ""}";
    _doorNoController.text = _patient.profile?.patient?.address?.first.line ?? "";
    _streetController.text = _patient.profile?.patient?.address?.first.ward ?? "";
    _subDistrictController.text = _patient.profile?.patient?.address?.first.town ?? "";
    _districtController.text = _patient.profile?.patient?.address?.first.district ?? "";
    _cityController.text = _patient.profile?.patient?.address?.first.village ?? "";
    _stateController.text = _patient.profile?.patient?.address?.first.state ?? "";
    _pincodeController.text = _patient.profile?.patient?.address?.first.pincode ?? "";
    _gender = _patient.profile?.patient?.gender.toString().split(".").last.capitalize() ?? "";

    _isLoading = false;
    notifyListeners();
  }

  Future<void> updatePatientDetails() async {
    final DateFormat dateFormat = DateFormat('dd-MM-yyyy');
    AddressModel? primaryAddress;
    final address = _patient.profile?.patient?.address;
    if(address != null) {
      primaryAddress = address.firstWhere((element) {
        if(element.primary != null && element.primary == true) {
          return true;
        }
        return false;
      });
      print(primaryAddress);
    }
    AddressModel? _address;

    if(primaryAddress != null) {
      _address = AddressModel(
        id: primaryAddress.id,
        line: doorNo.text,
        ward: street.text,
        town: primaryAddress.town,
        subDistrict: subDistrict.text,
        district: district.text,
        village: city.text,
        state: state.text,
        pincode: pincode.text,
        label: primaryAddress.label,
        status: primaryAddress.status,
        primary: primaryAddress.primary,
        deleted: primaryAddress.deleted
      );
    }

    List<AddressModel> _addressList = _patient.profile?.patient?.address ?? [];
    
    int primaryIndex = _addressList.indexWhere((element) => element.primary!);

    if(primaryIndex != -1) {
      _addressList[primaryIndex] = _address ?? _addressList[primaryIndex];
    }

    RelatedPartyModel? _relatedParty;

    final relatedParties = _patient.profile?.patient?.relatedParty;

    if(relatedParties != null) {
      _relatedParty = relatedParties.firstWhere((element) {
        if(element.relation != null && element.parentPatientId == _patient.profile?.patient?.parentPatientId) {
          return true;
        }
        return false;
      });
    }

    PatientModel patient = PatientModel(
        id: _patient.profile?.patient?.patientId,
        regRef: _patient.profile?.patient?.osid,
        counterId: _patient.metaData?.counterId,
        hprID: _patient.metaData?.hprId,
        hipCode: _patient.metaData?.hipId,
        location: LocationModel(
            latitude: _patient.metaData?.latitude,
            longitude: _patient.metaData?.longitude,
        ),
        abhaAddress: _patient.profile?.patient?.abhaAddress,
        gender: _gender == "Male" ? Gender.MALE : _gender == "Female" ? Gender.FEMALE : Gender.OTHER,
        name: _nameController.text + _lastNameController.text,
        age: int.parse(_ageController.text),
        profilePhoto: _patient.profile?.patient?.profilePhoto,
        dayOfBirth: dateFormat.parse(_dobController.text).day.toString(),
        monthOfBirth: dateFormat.parse(_dobController.text).month.toString(),
        yearOfBirth: dateFormat.parse(_dobController.text).year.toString(),
        parentPatientId: _patient.profile?.patient?.parentPatientId.toString(),
        relationship: _relatedParty?.relation,
        abhaId: _abhaidController.text,
        mobile: _mobileNumberController.text,
        email: _emailController.text,
        address: _addressList);
    _isLoading = true;
    notifyListeners();
    try {
      await _patientAuthenticationRepository.updatePatientProfile(patient);
    } catch (e) {
      rethrow;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
