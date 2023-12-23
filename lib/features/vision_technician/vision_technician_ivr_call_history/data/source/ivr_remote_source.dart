import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/model/ivr_call_history_model.dart';

var ivrRemoteSource = Provider(
  (ref) => IvrRemoteSourceImpl(
    ref.read(dioProvider),
  ),
);

abstract class IvrRemoteSource {
  Future<List<IvrCallHistoryModel>> getIvrCallHistory({
    required String mobile,
    List<String>? callStatus,
  });
  Future makeIvrCall({required String patientMobile});
}

class IvrRemoteSourceImpl implements IvrRemoteSource {
  final Dio _dio;

  IvrRemoteSourceImpl(this._dio);

  @override
  Future<List<IvrCallHistoryModel>> getIvrCallHistory({
    required String mobile,
    List<String>? callStatus,
  }) async {
    const endpoint = "/services/exotel/api/users/calls";
    Map<String, dynamic> queryParameters = {"mobile": mobile};
    if (callStatus != null && callStatus.isNotEmpty) {
      queryParameters.addAll({"callStatus": callStatus});
    }
    final response = await _dio.get<List<dynamic>>(endpoint,
        queryParameters: queryParameters);

    return response.data!.map((e) => IvrCallHistoryModel.fromJson(e)).toList();
  }

  @override
  Future makeIvrCall({required String patientMobile}) async {
    String url = "/services/exotel/api/call/outbound?platformId=1051";
    return await _dio
        .post(url, data: {"destination": patientMobile, "flowId": 9581});
  }
}
