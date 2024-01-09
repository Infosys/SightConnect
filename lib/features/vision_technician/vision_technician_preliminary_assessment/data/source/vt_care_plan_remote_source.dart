import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../main.dart';
import '../model/care_plan_model.dart';

abstract class VTCarePlanRemoteSource {
  Future<CarePlanModel> saveCarePlan({required CarePlanModel carePlan});
}

var vtCarePlanRemoteSourceProvider = Provider<VTCarePlanRemoteSource>((ref) {
  return VTCarePlanRemoteSourceImpl(
    ref.read(dioProvider),
  );
});

class VTCarePlanRemoteSourceImpl implements VTCarePlanRemoteSource {
  @override
  final Dio dio;
  VTCarePlanRemoteSourceImpl(this.dio);

  @override
  Future<CarePlanModel> saveCarePlan({required CarePlanModel carePlan}) async {
    final int reportId = carePlan.reports![0].id!;
    logger.d(": ${carePlan.toJson()}");

    try {
      String endPoint =
          "/services/triage/api/triage-report/$reportId/care-plan";
      var response = await dio.post(endPoint, data: carePlan.toJson());

      logger.d("this is the response ${response.toString()}");
      return CarePlanModel.fromJson(response.data);
    } on DioError catch (e) {
      logger.d("this is the error ${e.message}");
      if (e.response != null) {
        logger.d("Error response: ${e.response.toString()}");
      }
    } catch (e) {
      logger.d("Unknown error: ${e.toString()}");
    }

    return const CarePlanModel();

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
