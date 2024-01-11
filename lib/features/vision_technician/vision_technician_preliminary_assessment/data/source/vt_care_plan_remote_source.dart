import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../main.dart';
import '../model/care_plan_post_model.dart';

abstract class VTCarePlanRemoteSource {
  Future<CarePlanPostModel> saveCarePlan({required CarePlanPostModel carePlan});
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
  Future<CarePlanPostModel> saveCarePlan(
      {required CarePlanPostModel carePlan}) async {
    final int reportId = carePlan.reports![0].id!;
    // logger.d(": ${carePlan.toJson()}");

    try {
      String endPoint =
          "/services/triage/api/triage-report/$reportId/care-plan";
      var response = await dio.post(endPoint, data: carePlan.toJson());

      // logger.d("reached care plan remote source");
      // logger.d("this is the response ${response.toString()}");
      return CarePlanPostModel.fromJson(response.data);
    } on DioException catch (e) {
      logger.d("this is the error ${e.message}");
      if (e.response != null) {
        logger.d("Error response: ${e.response.toString()}");
      }
    } catch (e) {
      logger.d("Unknown error: ${e.toString()}");
    }

    return const CarePlanPostModel();

    // try {
    //   String endPoint = "/services/triage/api/triage-report/$reportId/care-plan";

    //   var response = await dio.post(
    //     endPoint,
    //     data: carePlan.toJson(),
    //   );
    //   logger.d("Response of careplan ${response.data.toString()}");

    //   if (response.statusCode != null) {
    //     return CarePlanModel.fromJson(response.data);
    //   } else {
    //     throw ServerException();
    //   }
    // } catch (e) {
    //   logger.d({"reched here error": e});
    //   throw UnknownException();
    // }
  }
}
