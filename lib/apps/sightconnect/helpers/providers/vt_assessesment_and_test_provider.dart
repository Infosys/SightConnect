/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/usecases/get_assessment_usecase.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/data/repository/triage_report_repository_impl.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/diagnostic_report_status.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/repository/triage_report_repository.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/enitity/assessment_and_triage_report_entity.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/mapper/assessment_details_and_triage_mapper.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/failure.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final vtAssessmentAndTestProvider = ChangeNotifierProvider(
  (ref) => VtAssessmentAndTestProvider(
    ref.watch(getAssessmentUseCase),
    ref.watch(triageReportRepositoryProvider),
  ),
);

class VtAssessmentAndTestProvider extends ChangeNotifier {
  final GetTriageUseCase _getTriageUseCase;
  final TriageReportRepository _triageReportRepository;
  bool _isLoading = false;
  bool _isUpdateLoading = false;
  VtAssessmentAndTestProvider(
    this._getTriageUseCase,
    this._triageReportRepository,
  );

  bool get isLoading => _isLoading;
  bool get isUpdateLoading => _isUpdateLoading;

  Future<List<TriageDetailedReportModel>> getTriageReportByEncounterId(
    int encounterId,
    DiagnosticReportStatus status,
  ) async {
    _isUpdateLoading = true;
    notifyListeners();
    var response = await _triageReportRepository.getTriageReportByEncounterId(
      encounterId,
      [status],
      null,
      null,
      null,
    );

    return response.fold(
      (failure) {
        logger.e({"_getTriageReport ": failure});
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

  Future<AssessmentAndTriageReportDetailedEntity>
      getTriageDetailedReportByReportId(
    BuildContext context,
    int reportId,
  ) async {
    try {
      _isLoading = true;
      notifyListeners();
      logger.d("report id $reportId");
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

      // ignore: use_build_context_synchronously
      return AssessmentDetailedAndTriageReportMapper.toEntity(
          context, triageReport, triageAssessment);
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

  Future<AssessmentAndTriageReportDetailedEntity>
      getTriageDetailedReportByEncounterId(
    BuildContext context,
    int encounterId,
    DiagnosticReportStatus status,
  ) async {
    try {
      _isLoading = true;
      notifyListeners();
      logger.d("encouter id $encounterId");
      final triageAssessmentResponse =
          await _getTriageUseCase.call(GetTriageParam());
      final triageAssessment = triageAssessmentResponse.fold(
        (failure) {
          throw ServerFailure(errorMessage: failure.toString());
        },
        (triageAssessment) {
          return triageAssessment;
        },
      );

      List<TriageDetailedReportModel> triageReport = [];
      try {
        triageReport = await getTriageReportByEncounterId(encounterId, status);
        if (triageReport.isEmpty) {
          throw ServerFailure(errorMessage: "No report found");
        } else {
          return AssessmentDetailedAndTriageReportMapper.toEntity(
            context,
            triageReport.first,
            triageAssessment,
          );
        }
      } on ServerFailure catch (e) {
        logger.e({
          "getTriageDetailedReport": e.errorMessage,
          "provider": "PatientAssessmentAndTestProviderNew",
        });

        throw ServerFailure(errorMessage: e.toString());
      } catch (e) {
        logger.e(e.toString());
        throw ServerFailure(errorMessage: e.toString());
      }
    } finally {
      _isLoading = false;
      notifyListeners();
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
