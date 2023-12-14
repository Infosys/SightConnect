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
    triageAssessment.forEach((element) {
      data.add({
        "priority": element.carePlans!.first.activities!.first
            .plannedActivityReference!.serviceRequest!.priority!
            .toString(),
        "name": "Raghavi Pandey",
        "date": element.encounterPeriod!.start!.toString(),
        "status": element.status!.toString(),
        "remarks": element.remarks!.toString(),
      });
    });
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
  AssessmentsAndTestProvider(this.ref) {
    getUsers();
  }

  List<TriageResultUserEntity> getUsers()  {
    PatientResponseModel? response =
         ref.read(getPatientProfileProvider).asData?.value;

    List<TriageResultUserEntity> users = [];
    response?.profile?.relatedParty?.forEach((element) {
      users.add(TriageResultUserEntity(
        name: element.name!,
        patientId: element.patientId!,
        profilePicture: element.profilePicture!,
      ));
    });
    
    return users;
  }
}
