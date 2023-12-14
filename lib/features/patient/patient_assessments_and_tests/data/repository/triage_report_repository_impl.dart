import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/services/network_info.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/source/triage_report_source.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/repository/triage_report_repository.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var triageReportRepositoryProvider = Provider<TriageReportRepository>(
  (ref) => TriageReportRepositoryImpl(
    ref.watch(triagReportSourceProvider),
    ref.watch(connectivityProvider),
  ),
);

class TriageReportRepositoryImpl implements TriageReportRepository {
  final TriageReportSource triageReportSource;
  NetworkInfo networkInfo;

  TriageReportRepositoryImpl(
    this.triageReportSource,
    this.networkInfo,
  );

  @override
  Future<Either<Failure, List<TriageDetailedReportModel>>>
      getAllTriageReportsByPatientId(int patientId) async {
    if (await networkInfo.isConnected()) {
      try {
        logger
            .d({"message": "Internet is connected Getting triage from remote"});
        final remoteResponse =
            await triageReportSource.getTriageReportsByPatientId(patientId);
        return Right(remoteResponse);
      } on ServerException {
        return Left(ServerFailure(errorMessage: 'This is a server exception'));
      }
    } else {
      logger.d(
          {"message": "Internet is not connected Getting triage from local"});
      return Left(CacheFailure(errorMessage: 'No internet connectivity'));
    }
  }
}
