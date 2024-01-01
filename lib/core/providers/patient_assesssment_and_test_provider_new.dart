import 'package:eye_care_for_all/core/models/patient_response_model.dart';
import 'package:eye_care_for_all/core/providers/global_patient_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/usecases/get_assessment_usecase.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/mappers/triage_report_brief_mapper.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/mappers/triage_report_detailed_mapper.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/repository/triage_report_repository_impl.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/repository/triage_report_repository.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/provider/patient_assessment_update_data_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../features/patient/patient_assessments_and_tests/domain/entities/triage_report_brief_entity.dart';

final patientAssessmentAndTestProvider = ChangeNotifierProvider.autoDispose(
  (ref) => PatientAssessmentAndTestProviderNew(
    ref.watch(getAssessmentUseCase),
    ref.watch(globalPatientProvider).activeUser,
    ref.watch(triageReportRepositoryProvider),
    ref.watch(patientAssessmentUpdateDataProvider),
  ),
);

class PatientAssessmentAndTestProviderNew extends ChangeNotifier {
  final GetTriageUseCase _getTriageUseCase;
  final TriageReportRepository _triageReportRepository;
  final PatientResponseModel? _patient;
  TriageReportUserEntity? _selectedPatient;
  final PatientAssessmentUpdateDataProvider
      _patientAssessmentUpdateDataProvider;
  List<TriageReportBriefEntity> _triageReportList = [];
  bool _isLoading = false;
  bool _isUpdateLoading = false;
  PatientAssessmentAndTestProviderNew(
    this._getTriageUseCase,
    this._patient,
    this._triageReportRepository,
    this._patientAssessmentUpdateDataProvider,
  ) {
    getPatients();
    getTriageReportList();
  }

  TriageReportUserEntity? get selectedPatient => _selectedPatient;
  bool get isLoading => _isLoading;
  bool get isUpdateLoading => _isUpdateLoading;
  List<TriageReportBriefEntity> get triageReportList => _triageReportList;

  void setPatient(TriageReportUserEntity patient) {
    _selectedPatient = patient;
    notifyListeners();

    getTriageReportList();
  }

  List<TriageReportUserEntity> getPatients() {
    List<TriageReportUserEntity> users = [];
    try {
      if (_patient?.profile?.patient?.patientId != null) {
        users.add(TriageReportUserEntity(
          name: _patient?.profile?.patient?.name ?? "",
          image: _patient?.profile?.patient?.profilePhoto ?? "",
          id: _patient!.profile!.patient!.patientId!,
        ));

        _patient?.profile?.patient?.relatedParty
            ?.forEach((RelatedPartyModel family) {
          if (family.patientId != null) {
            users.add(
              TriageReportUserEntity(
                name: family.name ?? "",
                image: family.profilePicture ?? "",
                id: family.patientId!,
              ),
            );
          }
        });
      }
    } catch (e) {
      logger.e({
        "getPatients": e.toString(),
        "provider": "PatientAssessmentAndTestProviderNew",
      });
      return [];
    }

    _selectedPatient ??= users.first;

    return users;
  }

  Future<void> getTriageReportList() async {
    final selectedPatientId = _selectedPatient?.id;
    if (selectedPatientId == null) return;
    _isLoading = true;
    notifyListeners();
    var response = await _triageReportRepository
        .getAllTriageReportsByPatientId(selectedPatientId);

    response.fold(
      (failure) {
        _isLoading = false;
        notifyListeners();
        logger.d({"getTriageReports ": failure});
        Fluttertoast.showToast(msg: failure.toString());
      },
      (triageAssessment) {
        _isLoading = false;
        notifyListeners();

        triageAssessment.sort((a, b) {
          return b.issued!.compareTo(a.issued!);
        });
        _triageReportList = _assessmentReportMapper(triageAssessment);
      },
    );
  }

  List<TriageReportBriefEntity> _assessmentReportMapper(
      List<TriageDetailedReportModel> triageAssessment) {
    try {
      final triageReportMapper = triageAssessment
          .map((e) => AssessmentReportMapper.toEntity(e))
          .toList();
      return triageReportMapper;
    } catch (e) {
      logger.d("AssessmentReportMapper: $e ");
      return [];
    }
  }

  Future<TriageDetailedReportModel> _getTriageReport(
    int reportId,
  ) async {
    _isUpdateLoading = true;
    notifyListeners();
    var response =
        await _triageReportRepository.getTriageReportByReportId(reportId);

    return response.fold(
      (failure) {
        logger.d({"_getTriageReport ": failure});
        _isUpdateLoading = false;
        notifyListeners();

        throw failure;
      },
      (triageAssessment) {
        _isUpdateLoading = false;
        notifyListeners();
        return triageAssessment;
      },
    );
  }

  Future<TriageReportDetailedEntity> getTriageDetailedReport(
    int reportId,
  ) async {
    try {
      _isLoading = true;
      notifyListeners();

      final triageAssessmentResponse =
          await _getTriageUseCase.call(GetTriageParam());
      final triageAssessment = triageAssessmentResponse.fold(
        (failure) {
          logger.d({"getEyeTriageDetailedReport ": failure});
          throw failure;
        },
        (triageAssessment) {
          return triageAssessment;
        },
      );
      final triageReport = await _getTriageReport(reportId);

      _isLoading = false;
      notifyListeners();

      return AssessmentDetailedReportMapper.toEntity(
          _selectedPatient!, triageReport, triageAssessment);
    } catch (e) {
      logger.e({
        "getTriageDetailedReport": e.toString(),
        "provider": "PatientAssessmentAndTestProviderNew",
      });
      _isLoading = false;
      notifyListeners();
      rethrow;
    }
  }

  Future<List<UpdateTriageReportAlertBoxEntity>> updateTriage(
    int diagnosticReportId,
  ) async {
    try {
      _isUpdateLoading = true;
      notifyListeners();
      final triageReport = await _getTriageReport(diagnosticReportId);

      final response = _patientAssessmentUpdateDataProvider
          .getUpdateTriageReportAlertBoxEntityList(triageReport);

      _isUpdateLoading = false;
      notifyListeners();
      return response;
    } catch (e) {
      logger.d("updateTriage: $e ");
      _isUpdateLoading = false;
      notifyListeners();

      Fluttertoast.showToast(msg: e.toString());

      return [];
    }
  }

  Future<DiagnosticReportTemplateFHIRModel> getAssessmentDetail() async {
    notifyListeners();
    final triageAssessmentResponse =
        await _getTriageUseCase.call(GetTriageParam());
    return triageAssessmentResponse.fold(
      (failure) {
        logger.d({"getEyeTriageDetailedReport ": failure});
        throw failure;
      },
      (triageAssessment) {
        return triageAssessment;
      },
    );
  }

  getQuestionnairWithAnswer() {}

  var currentTriageReportId = 0;
}
