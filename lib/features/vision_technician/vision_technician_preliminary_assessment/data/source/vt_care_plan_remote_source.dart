import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../main.dart';
import '../model/care_plan_post_model.dart';

abstract class VTCarePlanRemoteSource {
  Future<Either<Failure, CarePlanPostModel>> saveCarePlan(
      {required CarePlanPostModel carePlan});
}

var vtCarePlanRemoteSourceProvider = Provider<VTCarePlanRemoteSource>((ref) {
  return VTCarePlanRemoteSourceImpl(
    ref.read(dioProvider),
  );
});

class VTCarePlanRemoteSourceImpl implements VTCarePlanRemoteSource {
  final Dio dio;
  VTCarePlanRemoteSourceImpl(this.dio);

  @override
  Future<Either<Failure, CarePlanPostModel>> saveCarePlan(
      {required CarePlanPostModel carePlan}) async {
    final int reportId = carePlan.reports![0].id!;
    // logger.d(": ${carePlan.toJson()}");

    try {
      String endPoint =
          "/services/triage/api/v2/triage-report/$reportId/care-plan";
      var response = await dio.post(endPoint, data: carePlan.toJson());

      // logger.d("reached care plan remote source");
      // logger.d("this is the response ${response.toString()}");
      return Right(CarePlanPostModel.fromJson(response.data));
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      logger.d("this is the error ${e.message}");
    } catch (e) {
      logger.d("Unknown error: ${e.toString()}");
    }

    return Left(UnknownFailure(errorMessage: "Something went wrong"));
  }
}
