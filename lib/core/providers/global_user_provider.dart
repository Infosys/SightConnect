import 'package:eye_care_for_all/features/patient/patient_profile/domain/models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var globalUserProvider = ChangeNotifierProvider((ref) => GlobalUserProvider());

class GlobalUserProvider extends ChangeNotifier {
  ProfileModel? _parentUser;
  final int userId = 9627849180;
  ProfileModel? _activeUser;

  GlobalUserProvider();

  ProfileModel? get parentUser => _parentUser;
  ProfileModel? get activeUser => _activeUser;
  int? get parentUserId => _parentUser?.patient?.patientId;
  String? get parentUserProfilePhoto => _parentUser?.patient?.profilePhoto;

  void setParentUser(ProfileModel parentUser) {
    _parentUser = parentUser;
    _activeUser = parentUser;
    notifyListeners();
  }

  void changeActiveUser(ProfileModel user) {
    _activeUser = user;
    notifyListeners();
  }
}
