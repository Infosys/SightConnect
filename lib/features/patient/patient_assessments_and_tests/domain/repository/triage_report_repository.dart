import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/diagnostic_report_status.dart';

abstract class TriageReportRepository {
  Future<Either<Failure, List<TriageDetailedReportModel>>>
      getAllTriageReportsByPatientId(int patientId);

  Future<Either<Failure, TriageDetailedReportModel>> getTriageReportByReportId(
      int reportId);
  Future<Either<Failure, List<TriageDetailedReportModel>>>
      getTriageReportByPatientIdAndStatus(
    int patientId,
    DiagnosticReportStatus status,
  );
  Future<Either<Failure, List<TriageDetailedReportModel>>>
      getTriageReportByEncounterId(
    int encounterId,
    DiagnosticReportStatus status,
  );
}
