import 'dart:convert';

import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/mappers/triage_report_detailed_mapper.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/mappers/triage_report_brief_mapper.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/repository/triage_report_repository_impl.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/source/local_triage_report_source.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_brief_entity.dart';
import 'package:eye_care_for_all/features/patient/patient_authentication/domain/models/profile_model.dart';
import 'package:eye_care_for_all/features/patient/patient_authentication/presentation/provider/patient_profile_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var isResultOfflineMode = false;

var getEyeTriageReport = FutureProvider.family(
  (ref, int pId) async {
    logger.d({"getEyeTriageReport": pId});
    if (isResultOfflineMode) {
      List<TriageReportBriefEntity> triageAssessment = [];

      for (var element in LocalTriageReportSource.local_triage_result) {
        triageAssessment.add(
          AssessmentReportMapper.toEntity(
            TriageDetailedReportModel.fromJson(element),
          ),
        );
      }
      logger.f({"getEyeTriageReportOffline": triageAssessment});
      return triageAssessment;
    } else {
      var response = await ref
          .watch(triageReportRepositoryProvider)
          .getAllTriageReportsByPatientId(pId);

      return response.fold(
        (failure) {
          logger.d({"getTriageReports ": failure});
          throw failure;
        },
        (triageAssessment) {
          return triageAssessment
              .map((e) => AssessmentReportMapper.toEntity(e))
              .toList();
        },
      );
    }
  },
);

var getTriageDetailedEyeReport = FutureProvider.family(
  (ref, int reportID) async {
    if (isResultOfflineMode) {
      final data = TriageDetailedReportModel.fromJson(
        LocalTriageReportSource.local_triage_result.first,
      );

      return data;
    } else {
      var response = await ref
          .watch(triageReportRepositoryProvider)
          .getTriageReportByReportId(reportID);

      return response.fold(
        (failure) {
          logger.d({"getTriageReports ": failure});
          throw failure;
        },
        (triageAssessment) {
          return triageAssessment;
        },
      );
    }
  },
);

var getAssementDetailsReport = FutureProvider.autoDispose.family((ref, int reportID) async {
  final profileEntity = ref.watch(assessmentsAndTestProvider).selectedUser;
  DiagnosticReportTemplateFHIRModel? triageAssessment =
      ref.watch(getTriageProvider).asData?.value;

  TriageDetailedReportModel? triageDetailedReport =
      ref.watch(getTriageDetailedEyeReport(reportID)).asData?.value;

  if (triageAssessment == null) {
    throw ErrorDescription(
      "Assessment detail found",
    );
  }

  if (triageDetailedReport == null) {
    throw ErrorDescription(
      "Triage Detailed Report found",
    );
  }

 

  final response = AssessmentDetailedReportMapper.toEntity(
    profileEntity,
    triageDetailedReport,
    triageAssessment,
  );
  logger.d({
    "response": response,
  });
  return response;
});

var assessmentsAndTestProvider = ChangeNotifierProvider(
  (ref) => AssessmentsAndTestProvider(ref),
);

class AssessmentsAndTestProvider extends ChangeNotifier {
  Ref ref;
  late TriageReportUserEntity _selectedUser;

  AssessmentsAndTestProvider(this.ref) {
    getUsers();
  }

  List<TriageReportUserEntity> getUsers() {
    PatientResponseModel? patient =
        ref.read(getPatientProfileByIdProvider).asData?.value;

    List<TriageReportUserEntity> users = [];

    users.add(TriageReportUserEntity(
      name: patient?.profile?.patient?.name! ?? "",
      image: patient?.profile?.patient?.profilePhoto! ?? "",
      id: 9627849180,
    ));

    _selectedUser = users[0];

    patient?.profile?.patient?.relatedParty
        ?.forEach((RelatedPartyModel element) {
      users.add(TriageReportUserEntity(
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

  TriageReportUserEntity get selectedUser => _selectedUser;

  /// TODO: This is not working

  set setSelectedUser(String? value) {
    _selectedUser = getUsers().firstWhere((element) => element.name == value);
    ref.read(getEyeTriageReport(_selectedUser.id));
    notifyListeners();
  }
}
