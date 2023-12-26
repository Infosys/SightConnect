import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/data/repositories/patient_authentication_repository_impl.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/domain/models/enums/gender.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/domain/models/enums/relationship.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/domain/models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var globalPatientProvider =
    ChangeNotifierProvider((ref) => GlobalPatientProvider(ref));

class GlobalPatientProvider extends ChangeNotifier {
  final Ref _ref;
  PatientResponseModel? _parentUser;
  final bool _loading = false;
  PatientResponseModel? _activeUser;

  GlobalPatientProvider(this._ref) {
    getUserProfile();
  }

  bool get loading => _loading;
  PatientResponseModel? get activeUser => _activeUser;
  PatientResponseModel? get parentUser => _parentUser;
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
    // final user = await _ref.read(initializationProvider).getUserProfile();

    const user = PatientResponseModel(
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
            RelatedPartyModel(
              name: "Rohit Pandey",
              age: 54,
              patientId: 123,
              parentPatientId: 1233,
              profilePicture: "http://placekitten.com/200/300",
              relation: Relationship.FATHER,
            ),
          ],
        ),
      ),
    );

    setParentUser(user);
    notifyListeners();
  }

  Future<PatientResponseModel> getUserProfileById(int id) async {
    final authRepo = _ref.read(patientAuthenticationRepositoryProvider);
    final response = await authRepo.getPatientProfile(id);
    return response.fold((error) {
      throw error;
    }, (result) {
      return result;
    });
  }
}
