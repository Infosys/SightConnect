import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_profile/data/repositories/patient_authentication_repository_impl.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/models/patient_response_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/services/persistent_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var globalOptometricianProvider =
    ChangeNotifierProvider((ref) => GlobalPatientProvider());

class GlobalPatientProvider extends ChangeNotifier {
  PatientResponseModel? _activeUser;

  PatientResponseModel? get activeUser => _activeUser;

  String get activeUserFullName =>
      "${_activeUser?.profile?.patient?.firstName ?? ""} ${_activeUser?.profile?.patient?.lastName ?? ""}";

  int get activeUserId => _activeUser!.profile!.patient!.patientId!;

  String? get preferredUsername =>
      PersistentAuthStateService.authState.username;
  String get appName => "VALIDATION_APP";

  void setActiveUser(PatientResponseModel parentUser) {
    _activeUser = parentUser;
    notifyListeners();
  }
}

var getOptometricianProfileProvider = FutureProvider.autoDispose((ref) async {
  final username = PersistentAuthStateService.authState.username;
  if (username == null) {
    throw Exception("No user id found");
  }

  final response = await ref
      .read(patientAuthenticationRepositoryProvider)
      .getPatientProfileByPhone(username);
  return response.fold((error) {
    throw error;
  }, (result) {
    logger.d("PROFILE: $result");
    ref.read(globalOptometricianProvider).setActiveUser(result);
    return result;
  });
});

var getOptometricianProfileByIdProvider =
    FutureProvider.family<PatientResponseModel, int>((ref, id) async {
  final authRepo = ref.read(patientAuthenticationRepositoryProvider);
  final response = await authRepo.getPatientProfile(id);
  return response.fold((error) {
    throw error;
  }, (result) {
    return result;
  });
});
