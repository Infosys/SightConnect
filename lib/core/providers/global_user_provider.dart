import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/data/repositories/patient_authentication_repository_impl.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/domain/models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var globalUserProvider =
    ChangeNotifierProvider((ref) => GlobalUserProvider(ref));

class GlobalUserProvider extends ChangeNotifier {
  final Ref _ref;
  PatientResponseModel? _parentUser;
  bool _loading = false;
  final int userId = 9627849180;
  PatientResponseModel? _activeUser;

  GlobalUserProvider(this._ref) {
    getUserProfile();
  }

  bool get loading => _loading;
  PatientResponseModel? get activeUser => _activeUser;

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
    _loading = true;
    notifyListeners();
    final phone = PersistentAuthStateService.authState.username;
    if (phone == null) {
      _parentUser = null;
      _loading = false;
      notifyListeners();
      return;
    }
    final response = await _ref
        .read(patientAuthenticationRepositoryProvider)
        .getPatientProfileByPhone(phone);
    return response.fold((failure) {
      _parentUser = null;
      _loading = false;
      notifyListeners();
    }, (result) {
      _loading = false;
      notifyListeners();
      setParentUser(result);
    });
  }
}
