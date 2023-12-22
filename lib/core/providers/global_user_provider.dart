import 'package:eye_care_for_all/features/patient/patient_profile/domain/models/enums/gender.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/domain/models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var globalUserProvider =
    ChangeNotifierProvider((ref) => GlobalUserProvider(ref));

class GlobalUserProvider extends ChangeNotifier {
  final Ref _ref;
  PatientResponseModel? _parentUser;
  final bool _loading = false;
  final int userId = 9627849180;
  PatientResponseModel? _activeUser;

  GlobalUserProvider(this._ref) {
    getUserProfile();
  }

  bool get loading => _loading;
  PatientResponseModel? get activeUser => _activeUser;
  List<RelatedPartyModel> get familyMembers =>
      _activeUser?.profile?.patient?.relatedParty ?? [];

  void setParentUser(PatientResponseModel parentUser) {
    _parentUser = parentUser;
    _activeUser = parentUser;
    notifyListeners();
  }

  void changeActiveUser(PatientResponseModel user) {
    _activeUser = user;
    notifyListeners();
  }

  Future<void> getUserProfile() async {
    // _parentUser = await PersistentAuthStateService.authState.getUserProfile();
    _activeUser = const PatientResponseModel(
      profile: ProfileModel(
        patient: ExtendedPatientModel(
          patientId: 111,
          abhaAddress: "abhaAddress",
          abhaNumber: 123,
          address: [],
          age: 30,
          dayOfBirth: "08",
          monthOfBirth: "08",
          yearOfBirth: "23",
          email: "email",
          gender: Gender.MALE,
          name: "Manish Pandey",
          phoneNumber: "9627849180",
          medicalRecords: [],
          parentPatientId: 12345,
          profilePhoto: "http://placekitten.com/200/300",
          identifiers: [],
          osid: "",
          relatedParty: [
            // RelatedPartyModel(
            //   name: "Rohit Pandey",
            //   age: 54,
            //   patientId: 123,
            //   parentPatientId: 1233,
            //   profilePicture: "http://placekitten.com/200/300",
            //   relation: Relationship.FATHER,
            // ),
          ],
        ),
      ),
    );
  }
}
