/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:dio/dio.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/exceptions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/model/ivr_call_history_model.dart';

var ivrRemoteSource = Provider(
  (ref) => IvrRemoteSourceImpl(
    ref.read(dioProvider),
  ),
);

abstract class IvrRemoteSource {
  Future<List<IvrCallHistoryModel>> getIvrCallHistory({
    required String? mobile,
    List<String>? callStatus,
  });
  Future makeIvrCall({required String patientMobile});
}

class IvrRemoteSourceImpl implements IvrRemoteSource {
  final Dio _dio;

  IvrRemoteSourceImpl(this._dio);

  @override
  Future<List<IvrCallHistoryModel>> getIvrCallHistory({
    required String? mobile,
    List<String>? callStatus,
  }) async {
    try {
      const endpoint = "/services/exotel/api/users/calls";
      Map<String, dynamic> queryParameters = {"mobile": mobile};
      if (callStatus != null && callStatus.isNotEmpty) {
        queryParameters.addAll({"callStatus": callStatus});
      }
      final response = await _dio.get<List<dynamic>>(endpoint,
          queryParameters: queryParameters);

      return response.data!
          .map((e) => IvrCallHistoryModel.fromJson(e))
          .toList();
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  @override
  Future makeIvrCall({required String patientMobile}) async {
    String url = "/services/exotel/api/call/outbound";
    try {
      return await _dio.post(
        url,
        data: {
          "destination": patientMobile,
          "flowId": 9581,
        },
      );
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }
}
