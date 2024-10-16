/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/data/model/vg_patient_response_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/exceptions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var vgEyeAssessmentRemoteSource = Provider(
  (ref) => VgEyeAssessmentRemoteSourceImpl(
    ref.read(dioProvider),
  ),
);

abstract class VgEyeAssessmentRemoteSource {
  Future<List<VisionGuardianPatientResponseModel>> getVgEyeAssessmentReports(
      {required int practitionerId, required Map<String, dynamic> queryparams});
}

class VgEyeAssessmentRemoteSourceImpl implements VgEyeAssessmentRemoteSource {
  final Dio _dio;

  VgEyeAssessmentRemoteSourceImpl(this._dio);

  @override
  Future<List<VisionGuardianPatientResponseModel>> getVgEyeAssessmentReports(
      {required int practitionerId,
      required Map<String, dynamic> queryparams}) async {
    var endpoint =
        "/services/orchestration/api/v2/patients/triage-reports/practitioners/$practitionerId";

    try {
      logger.d(queryparams);
      final response = await _dio.get(endpoint, queryParameters: {
        "category": queryparams["category"],
        "page": queryparams["page"],
        "size": queryparams["size"]
      });

      if (response.statusCode! >= 200 && response.statusCode! < 210) {
        return (response.data as List)
            .map((e) => VisionGuardianPatientResponseModel.fromJson(e))
            .toList();
      } else {
        throw ServerException();
      }
    } on DioException catch (error) {
      DioErrorHandler.handleDioError(error);
      rethrow;
    } catch (error) {
      logger.d(error);
      rethrow;
    }
  }
}
