import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/repository/triage_report_repository_impl.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_detailed_report_entity.dart';
import 'package:eye_care_for_all/features/patient/patient_authentication/domain/models/profile_model.dart';
import 'package:eye_care_for_all/features/patient/patient_authentication/presentation/provider/patient_profile_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var getEyeTriageReport = FutureProvider((ref) async {
  const int patientId = 9627849171;
  List<Map<String, String>> data = [];
  var response = await ref
      .watch(triageReportRepositoryProvider)
      .getAllTriageReportsByPatientId(patientId);
  return response.fold((failure) {
    logger.d({
      "getTriageReports ": failure,
    });
    throw failure;
  }, (triageAssessment) {
    triageAssessment.forEach((element) {});
    return data;
  });
});

var getAssementDetailsReport =
    FutureProvider.family((ref, assessmentCode) async {});

var assessmentsAndTestProvider = ChangeNotifierProvider(
  (ref) => AssessmentsAndTestProvider(ref),
);

class AssessmentsAndTestProvider extends ChangeNotifier {
  Ref ref;
  late TriageResultUserEntity _selectedUser;

  AssessmentsAndTestProvider(this.ref) {
    getUsers();
  }

  List<TriageResultUserEntity> getUsers() {
    PatientResponseModel? patient =
        ref.read(getPatientProfileProvider).asData?.value;

    List<TriageResultUserEntity> users = [];

    users.add(TriageResultUserEntity(
      name: patient?.profile?.patient?.name! ?? "",
      image: patient?.profile?.patient?.profilePhoto! ?? "",
      id: 9627849171,
    ));

    _selectedUser = users[0];

    patient?.profile?.patient?.relatedParty
        ?.forEach((RelatedPartyModel element) {
      users.add(TriageResultUserEntity(
        name: element.name!,
        image: element.profilePicture!,
        id: element.patientId!,
      ));
    });

    logger.d({
      "users": users,
    });

    return users;
  }

  TriageResultUserEntity get selectedUser => _selectedUser;



  set setSelectedUser(String value) {
    _selectedUser = getUsers().firstWhere((element) => element.name == value);
    notifyListeners();
  }


}
