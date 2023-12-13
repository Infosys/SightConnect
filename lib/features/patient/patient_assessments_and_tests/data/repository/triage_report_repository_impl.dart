import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/repository/triage_report_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var triageReportRepositoryProvider = Provider<TriageReportRepository>(
  (ref) => TriageReportRepositoryImpl(ref.watch(),ref.watch(connectivityProvider) ),
);
class TriageReportRepositoryImpl implements TriageReportRepository {

  @override
  Future<Either<Failure, List<TriageDetailedReportModel>>> getAllTriageReportsByPatientId(int patientId) {
    // TODO: implement getAllTriageReportsByPatientId
    throw UnimplementedError();
  }
}