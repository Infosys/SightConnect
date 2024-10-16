/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/main.dart';

import '../../../../../../../services/exceptions.dart';

abstract class VTSaveTriageRemoteSource {
  Future<TriagePostModel> saveTriage(TriagePostModel triagePostModel);
}

class VTSaveTriageRemoteSourceImpl implements VTSaveTriageRemoteSource {
  final Dio dio;

  VTSaveTriageRemoteSourceImpl(this.dio);

  @override
  Future<TriagePostModel> saveTriage(TriagePostModel triagePostModel) async {
    try {
      String endPoint = "/services/triage/api/v2/triage-report";
      var response = await dio.post(endPoint, data: triagePostModel.toJson());

      return TriagePostModel.fromJson(response.data);
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      if (e.response != null) {
        logger.d("Error response: ${e.response.toString()}");
      }
    } catch (e) {
      logger.d("Unknown error: ${e.toString()}");
    }

    return const TriagePostModel();
  }
}
