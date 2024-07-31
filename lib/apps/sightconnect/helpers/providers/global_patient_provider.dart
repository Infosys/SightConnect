import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_profile/data/repositories/patient_authentication_repository_impl.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/models/patient_response_model.dart';
import 'package:eye_care_for_all/shared/services/persistent_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var globalPatientProvider =
    ChangeNotifierProvider((ref) => GlobalPatientProvider());

class GlobalPatientProvider extends ChangeNotifier {
  PatientResponseModel? _activeUser;

  PatientResponseModel? get activeUser => _activeUser;
  int get activeUserId => _activeUser!.profile!.patient!.patientId!;
  List<RelatedPartyModel> get familyMembers =>
      _activeUser?.profile?.patient?.relatedParty ?? [];

  void setActiveUser(PatientResponseModel parentUser) {
    _activeUser = parentUser;
    notifyListeners();
  }
}

var getPatientProfileProvider = FutureProvider.autoDispose((ref) async {
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
    ref.read(globalPatientProvider).setActiveUser(result);
    return result;
  });
});

var getPatientProfileByIdProvider =
    FutureProvider.family<PatientResponseModel, int>((ref, id) async {
  final authRepo = ref.read(patientAuthenticationRepositoryProvider);
  final response = await authRepo.getPatientProfile(id);
  return response.fold((error) {
    throw error;
  }, (result) {
    return result;
  });
});
