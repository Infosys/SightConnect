/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/diagnostic_report_status.dart';
import 'package:eye_care_for_all/services/failure.dart';

abstract class TriageReportRepository {
  Future<Either<Failure, List<TriageDetailedReportModel>>>
      getAllTriageReportsByPatientId(int patientId);

  Future<Either<Failure, TriageDetailedReportModel>> getTriageReportByReportId(
      int reportId);
  Future<Either<Failure, List<TriageDetailedReportModel>>>
      getTriageReportByPatientIdAndStatus(
    int patientId,
    DiagnosticReportStatus status,
    int? page,
    int? size,
  );
  Future<Either<Failure, List<TriageDetailedReportModel>>>
      getTriageReportByEncounterId(
    int encounterId,
    List<DiagnosticReportStatus> status,
    int? page,
    int? size,
    String? filter,
  );
}
