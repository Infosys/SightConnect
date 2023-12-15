import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../model/ivr_call_history_model.dart';

abstract class IvrRemoteSource {
  Future<List<IvrCallHistoryModel>> getIvrCallHistory({required String mobile});

  Future makeIvrCall({required String patientMobile});
}

var ivrRemoteSource = Provider(
  (ref) => IvrRemoteSourceImpl(
    ref.read(dioExotelProvider),
  ),
);

class IvrRemoteSourceImpl implements IvrRemoteSource {
  Dio _dio;

  IvrRemoteSourceImpl(this._dio);

  @override
  Future<List<IvrCallHistoryModel>> getIvrCallHistory(
      {required String mobile}) async {
    String url = "/api/users/calls/$mobile";
    return await _dio.get(url).then((value) {
      List<IvrCallHistoryModel> list = [];
      value.data.forEach((element) {
        list.add(IvrCallHistoryModel.fromJson(element));
      });
      return list;
    });
  }

  @override
  Future makeIvrCall({required String patientMobile}) async {
    String url = "/api/call/outbound?platformId=1051";
    return await _dio
        .post(url, data: {"destination": patientMobile, "flowId": 9581});
  }
}
