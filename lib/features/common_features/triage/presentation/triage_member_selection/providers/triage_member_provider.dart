import 'package:eye_care_for_all/core/models/patient_response_model.dart';
import 'package:eye_care_for_all/core/providers/global_optometrician_provider.dart';
import 'package:eye_care_for_all/core/providers/global_patient_provider.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var triageMemberProvider = ChangeNotifierProvider<TriageMemberProvider>((ref) {
  return TriageMemberProvider(ref);
});

class TriageMemberProvider extends ChangeNotifier {
  int? testPatientId;
  int currentIndex = 0;
  Ref ref;
  final List<RelatedPartyModel> connectionsList = [];
  PatientModel? currentProfile;

  TriageMemberProvider(this.ref) {
    if (PersistentAuthStateService.authState.activeRole == "ROLE_PATIENT") {
      _initilizePatientMembers();
    } else if (PersistentAuthStateService.authState.activeRole ==
        "ROLE_OPTOMETRIST") {
      _initilizeOptometricianMembers();
    }
  }

  void setTestPersonId(int patientId) {
    testPatientId = patientId;
    notifyListeners();
    logger.d('TriageMemberProvider: setTestPersonId: $testPatientId');
  }

  void setCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
    logger.d('TriageMemberProvider: setCurrentIndex: $currentIndex');
  }

  void _initilizePatientMembers() {
    final model = ref.watch(globalPatientProvider).activeUser;
    currentProfile = model?.profile?.patient;
    connectionsList.addAll(model?.profile?.patient?.relatedParty ?? []);
    notifyListeners();
    logger.d('TriageMemberProvider: initilizeMembers: $connectionsList');

    if (currentProfile != null) {
      setTestPersonId(currentProfile!.patientId!);
    }
  }

  void _initilizeOptometricianMembers() {
    final model = ref.watch(globalOptometricianProvider).activeUser;
    currentProfile = model?.profile?.patient;
    connectionsList.addAll(model?.profile?.patient?.relatedParty ?? []);
    notifyListeners();
    logger.d('TriageMemberProvider: initilizeMembers: $connectionsList');
    if (currentProfile != null) {
      setTestPersonId(currentProfile!.patientId!);
    }
  }
}
