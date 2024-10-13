/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_close_assessment/data/models/vt_close_assessment_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/exceptions.dart';
import 'package:eye_care_for_all/services/failure.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class VTCloseAssessmentRemoteSource {
  Future<void> submitCloseAssessmentInfo(CloseAssessmentDto patientDetails);
}

var vtCloseAssessmentRemoteSource = Provider(
  (ref) => VTCloseAssessmentRemoteSourceImpl(
    ref.read(dioProvider),
  ),
);

class VTCloseAssessmentRemoteSourceImpl
    implements VTCloseAssessmentRemoteSource {
  final Dio _dio;
  VTCloseAssessmentRemoteSourceImpl(this._dio);

  @override
  Future<void> submitCloseAssessmentInfo(
    CloseAssessmentDto closeAssessmentDto,
  ) async {
    String endPoint =
        '/services/triage/api/v2/triage-report/${closeAssessmentDto.encounterId}/close';

    logger.d(closeAssessmentDto.toJson());

    try {
      final response =
          await _dio.patch(endPoint, data: closeAssessmentDto.toJson());
      logger.d(response.data);
    } on DioException catch (e) {
      DioErrorHandler.getErrorMessage(e);
      throw ServerFailure(errorMessage: "Failed to close assessment");
    } catch (e) {
      logger.e(e);
      throw ServerFailure(errorMessage: "Failed to close assessment");
    }
  }
}
