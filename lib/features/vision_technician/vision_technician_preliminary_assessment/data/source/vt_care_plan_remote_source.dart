import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/services/exceptions.dart';
import '../../../../../main.dart';
import '../model/care_plan_model.dart';

abstract class VTCarePlanRemoteSource {
  Future<CarePlanModel> saveCarePlan({required CarePlanModel carePlan});
}

var vtCarePlanRemoteSourceProvider =
    FutureProvider<VTCarePlanRemoteSource>((ref) {
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
    final int encounterId = carePlan.encounterId!;
    try {
      var response = await dio.post('/careplan/$encounterId');
      if (response.statusCode != null) {
        return CarePlanModel.fromJson(response.data);
      } else {
        throw ServerException();
      }
    } catch (e) {
      logger.f({"reched here error": e});
      throw UnknownException();
    }
  }
}
