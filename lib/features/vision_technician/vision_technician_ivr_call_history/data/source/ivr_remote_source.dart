import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../model/ivr_call_history_model.dart';

abstract class IvrRemoteSource {
  Future<List<IvrCallHistoryModel>> getIvrCallHistory({required String mobile});
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
      {required String mobile}) {
    String url = "/api/users/calls/$mobile";
    return _dio.get(url).then((value) {
      List<IvrCallHistoryModel> list = [];
      value.data.forEach((element) {
        list.add(IvrCallHistoryModel.fromJson(element));
      });
      return list;
    });
  }
}
