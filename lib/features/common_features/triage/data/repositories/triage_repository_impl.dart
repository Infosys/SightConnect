import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/core/services/network_info.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/source/local/triage_local_source.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/source/remote/triage_remote_source.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_update_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../domain/repositories/triage_repository.dart';

var triageRepositoryProvider = Provider<TriageRepository>(
  (ref) => TriageRepositoryImpl(
    ref.watch(triageLocalSourceProvider),
    ref.watch(triageRemoteSource),
    ref.watch(connectivityProvider),
  ),
);

class TriageRepositoryImpl implements TriageRepository {
  TriageLocalSource localDataSource;
  TriageRemoteSource remoteDataSource;
  NetworkInfo networkInfo;

  TriageRepositoryImpl(
    this.localDataSource,
    this.remoteDataSource,
    this.networkInfo,
  );

  @override
  Future<Either<Failure, DiagnosticReportTemplateFHIRModel>>
      getAssessment() async {
    if (await networkInfo.isConnected()) {
      try {
        logger.d("Internet is connected Getting triage from remote");
        final remoteResponse = await remoteDataSource.getTriage();
        localDataSource.deleteAssessment();
        localDataSource.saveAssessment(triage: remoteResponse);
        return Right(remoteResponse);
      } on ServerException {
        return Left(ServerFailure(errorMessage: 'This is a server exception'));
      } on UnknownException {
        return Left(
            UnknownFailure(errorMessage: 'This is a unknown exception'));
      }
    } else {
      try {
        logger.d("Internet is not connected Getting triage from local");
        final localResponse = await localDataSource.getAssessment();
        return Right(localResponse);
      } on CacheException {
        return Left(CacheFailure(errorMessage: 'No local data found'));
      } on UnknownException {
        return Left(CacheFailure(errorMessage: 'No local data found'));
      }
    }
  }

  @override
  Future<Either<Failure, TriagePostModel>> saveTriageResponse(
      {required TriagePostModel triageResponse}) async {
    if (await networkInfo.isConnected()) {
      try {
        logger.d("Internet is connected Saving triage to remote");

        final remoteResponse =
            await remoteDataSource.saveTriage(triage: triageResponse);
        localDataSource.deleteTriageResponse();
        await localDataSource.resetTriage();
        await localDataSource.deleteTriageResponse();
        return Right(remoteResponse);
      } on ServerException {
        final localResponse = await localDataSource.saveTriageResponse(
            triageResponse: triageResponse);
         await localDataSource.resetTriage();
        return Left(TriageFailure(
          errorMessage: 'This is a server exception',
          triageResponse: localResponse,
        ));
      } on UnknownException {
        final localResponse = await localDataSource.saveTriageResponse(
            triageResponse: triageResponse);
            await localDataSource.resetTriage();
        return Left(TriageFailure(
          errorMessage: 'This is a unknown exception',
          triageResponse: localResponse,
        ));
      }
    } else {
      try {
        logger.d("Internet is not connected Saving triage to local");

        final localResponse = await localDataSource.saveTriageResponse(
            triageResponse: triageResponse);
            await localDataSource.resetTriage();
        return Right(localResponse);
      } on CacheException {
        return Left(CacheFailure(errorMessage: 'No local data found'));
      } on UnknownException {
        return Left(UnknownFailure(errorMessage: 'No local data found'));
      }
    }
  }

  @override
  Future<Either<Failure, int>> getTriageCurrentStep() async {
    try {
      final localResponse = await localDataSource.getTriageCurrentStep();
      return Right(localResponse);
    } catch (e) {
      return Left(CacheFailure(errorMessage: 'No local data found'));
    }
  }

  @override
  Future<Either<Failure, void>> deleteAssessment() async {
    logger.d({"message": "Deleting triage from local"});

    try {
      final localResponse = await localDataSource.deleteAssessment();
      return Right(localResponse);
    } catch (e) {
      return Left(CacheFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, TriagePostModel>> getTriageResponse() async {
    logger.d({"message": "Getting final triage response from local"});

    try {
      final localResponse = await localDataSource.getTriageResponse();
      return Right(localResponse);
    } catch (e) {
      return Left(CacheFailure(errorMessage: 'No local data found'));
    }
  }

  @override
  Future<Either<Failure, List<PostTriageQuestionModel>>>
      getQuestionaireResponseLocally() async {
    logger.d({"message": "Getting questionaire response from local"});

    try {
      final localResponse = await localDataSource.getQuestionaireResponse();
      return Right(localResponse);
    } catch (e) {
      return Left(CacheFailure(errorMessage: 'No local data found'));
    }
  }

  @override
  Future<Either<Failure, List<PostTriageImagingSelectionModel>>>
      getTriageEyeScanResponseLocally() async {
    logger.d({"message": "Getting triage eye scan response from local"});

    try {
      final localResponse = await localDataSource.getTriageEyeScanResponse();
      return Right(localResponse);
    } catch (e) {
      return Left(CacheFailure(errorMessage: 'No local data found'));
    }
  }

  @override
  Future<Either<Failure, List<PostTriageObservationsModel>>>
      getVisionAcuityTumblingResponseLocally() async {
    logger.d({"message": "Getting vision acuity tumbling response from local"});

    try {
      final localResponse =
          await localDataSource.getVisionAcuityTumblingResponse();
      return Right(localResponse);
    } catch (e) {
      return Left(CacheFailure(errorMessage: 'No local data found'));
    }
  }

  @override
  Future<Either<Failure, void>> resetTriage() async {
    logger.d({"message": "Resetting triage from local"});

    try {
      final localResponse = await localDataSource.resetTriage();
      return Right(localResponse);
    } catch (e) {
      return Left(CacheFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> saveTriageEyeScanLocally({
    required List<PostTriageImagingSelectionModel> triageEyeScan,
  }) async {
    logger.d({"message": "Saving triage eye scan to local"});

    try {
      final localResponse = await localDataSource.saveTriageEyeScanLocally(
          triageEyeScan: triageEyeScan);
      return Right(localResponse);
    } catch (e) {
      return Left(CacheFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> saveTriageQuestionnaireLocally({
    required List<PostTriageQuestionModel> triageQuestionnaireResponse,
  }) async {
    logger.d({"message": "Saving triage questionnaire to local"});
    try {
      final localResponse =
          await localDataSource.saveTriageQuestionnaireLocally(
              triageQuestionnaireResponse: triageQuestionnaireResponse);
      return Right(localResponse);
    } catch (e) {
      return Left(CacheFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> saveTriageVisualAcuityLocally({
    required List<PostTriageObservationsModel> triageVisualAcuity,
  }) async {
    logger.d({"message": "Saving triage visual acuity to local"});

    try {
      final localResponse = await localDataSource.saveTriageVisualAcuityLocally(
          triageVisualAcuity: triageVisualAcuity);
      return Right(localResponse);
    } catch (e) {
      return Left(CacheFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, DiagnosticReportTemplateFHIRModel>> updateAssessment(
      {required DiagnosticReportTemplateFHIRModel assessment}) {
    // TODO: implement updateAssessment
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, DiagnosticReportTemplateFHIRModel>> saveAssessment(
      {required DiagnosticReportTemplateFHIRModel assessment}) {
    // TODO: implement saveAssessment
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, TriagePostModel>> updateTriageResponse(
      {required TriageUpdateModel triageResponse}) async {
    try {
      final remoteResponse =
          await remoteDataSource.updateTriage(triage: triageResponse);

      return Right(remoteResponse);
    } catch (e) {
      logger.f({"error while saving triage ": e});
      //  logger.f({"error while saving triage ": triage});
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
