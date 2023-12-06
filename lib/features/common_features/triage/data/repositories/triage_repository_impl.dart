import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/core/services/network_info.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_assessment_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/source/local/triage_local_source.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/source/remote/triage_remote_source.dart';
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
  Future<Either<Failure, TriageAssessmentModel>> getTriage() async {
    if (await networkInfo.isConnected()) {
      try {
        final remoteResponse = await remoteDataSource.getTriage();
        //saving json response to our local source
        localDataSource.saveTriage(triage: remoteResponse);
        logger.f(remoteResponse);
        return Right(remoteResponse);
      } on ServerException {
        return Left(ServerFailure(errorMessage: 'This is a server exception'));
      }
    } else {
      try {
        logger.f("Internet is not connected Getting from local");
        final localResponse = await localDataSource.getTriage();
        return Right(localResponse);
      } catch (e) {
        return Left(CacheFailure(errorMessage: 'No local data found'));
      }
    }
  }

  @override
  Future<Either<Failure, TriageResponseModel>> saveTriage(
      {required TriageResponseModel triage}) async {
    if (await networkInfo.isConnected()) {
      try {
        final remoteResponse =
            await remoteDataSource.saveTriage(triage: triage);
        localDataSource.deleteTriage();
        return Right(remoteResponse);
      } on ServerException {
        return Left(ServerFailure(errorMessage: 'This is a server exception'));
      }
    } else {
      try {
        logger.f("Internet is not connected Saving to local");
        final localResponse =
            await localDataSource.saveTriageResponse(triageResponse: triage);
        return Right(localResponse);
      } on CacheException {
        return Left(CacheFailure(errorMessage: 'No local data found'));
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
}
