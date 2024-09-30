import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/data/models/optometrician_dashboard_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/optometritian/optometritian_dashboard/contract/optometrician_dashboard_repository.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/optometritian/optometritian_dashboard/source/remote/optometrician_dashboard_remote_source.dart';
import 'package:eye_care_for_all/services/exceptions.dart';
import 'package:eye_care_for_all/services/failure.dart';
import 'package:eye_care_for_all/services/network_info.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var optometricianDashboardRepositoryProvider =
    Provider<OptometricianDashboardRepository>(
  (ref) => OptometricianDashboardRepositoryImpl(
    remoteDataSource: ref.watch(optometricianDashboardRemoteSource),
    networkInfo: ref.watch(connectivityProvider),
  ),
);

class OptometricianDashboardRepositoryImpl
    implements OptometricianDashboardRepository {
  final OptometricianDashboardRemoteSource remoteDataSource;
  final NetworkInfo networkInfo;

  OptometricianDashboardRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, OptometricianDashboardModel>>
      getOptometricianDashboard(String capturedBy) async {
    try {
      final remoteOptometricianDashboard =
          await remoteDataSource.getOptometricianDashboard(capturedBy);

      return Right(remoteOptometricianDashboard);
    } on ServerException {
      return Left(ServerFailure(errorMessage: ''));
    }
  }
}
