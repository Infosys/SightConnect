import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../model/care_plan_model.dart';

abstract class VTCarePlanRemoteSource {
  Future<CarePlanModel> saveCarePlan(int encounterId);
}

var vtCarePlanRemoteSourceProvider = FutureProvider<VTCarePlanRemoteSource>((ref) {
  return VTCarePlanRemoteSourceImpl(
    ref.read(dioProvider),
  );
});

class VTCarePlanRemoteSourceImpl implements VTCarePlanRemoteSource {
  @override
  final Dio dio;
  VTCarePlanRemoteSourceImpl(this.dio);

  @override
  Future<CarePlanModel> saveCarePlan(int encounterId) {
    var response = dio.post('/careplan/$encounterId');
    return response.then((value) => CarePlanModel.fromJson(value.data));
  }
}
