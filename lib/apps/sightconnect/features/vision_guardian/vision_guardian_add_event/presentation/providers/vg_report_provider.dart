/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/usecases/get_assessment_usecase.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/data/mappers/triage_report_detailed_mapper.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/data/repository/triage_report_repository_impl.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/entities/triage_report_brief_entity.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/repository/triage_report_repository.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final vgReportProvider =
    ChangeNotifierProvider.family<VgReportProvider, TriageReportUserEntity>(
  (ref, triageReportUserEntity) => VgReportProvider(
    ref.watch(getAssessmentUseCase),
    ref.watch(triageReportRepositoryProvider),
    triageReportUserEntity,
  ),
);

final class VgReportProvider extends ChangeNotifier {
  final GetTriageUseCase _getTriageUseCase;
  final TriageReportRepository _triageReportRepository;
  final TriageReportUserEntity _triageReportUserEntity;
  bool _isLoading = false;
  bool _isUpdateLoading = false;
  VgReportProvider(
    this._getTriageUseCase,
    this._triageReportRepository,
    this._triageReportUserEntity,
  );

  bool get isLoading => _isLoading;
  bool get isUpdateLoading => _isUpdateLoading;
  TextEditingController searchPatientController = TextEditingController();

  Future<TriageReportDetailedEntity> getTriageDetailedReportByReportId(
    int reportId,
  ) async {
    try {
      _isLoading = true;
      notifyListeners();
      final triageAssessmentResponse =
          await _getTriageUseCase.call(GetTriageParam());
      final triageAssessment = triageAssessmentResponse.fold(
        (failure) {
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
        _triageReportUserEntity,
        triageReport,
        triageAssessment,
      );
    } catch (e) {
      _isLoading = false;
      notifyListeners();
      rethrow;
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

  Future<DiagnosticReportTemplateFHIRModel> getAssessmentDetail() async {
    notifyListeners();
    final triageAssessmentResponse =
        await _getTriageUseCase.call(GetTriageParam());
    return triageAssessmentResponse.fold(
      (failure) {
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
