/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/data/models/triage_response_dto.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/exceptions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/models/assessment_timeline_view_model.dart';

var assessmentTimeLineSource = Provider(
  (ref) => AssessmentTimeLineSourceImpl(
    ref.watch(dioProvider),
  ),
);

abstract class AssessmentTimeLineSource {
  Future<List<AssessmentTimelineViewModel>> getAssessmentTimeLine(
      int encounterId);
  Future<List<Encounter>> getEncounters(int patientId);
  // Future<TriageReportDetailedEntity> getTriageDetailedReport(int reportId);
}

class AssessmentTimeLineSourceImpl extends AssessmentTimeLineSource {
  final Dio _dio;

  AssessmentTimeLineSourceImpl(this._dio);

  @override
  Future<List<AssessmentTimelineViewModel>> getAssessmentTimeLine(
      int encounterId) async {
    try {
      String url =
          "/services/triage/api/v2/triage-report/encounters/$encounterId/timeline";
      final response = await _dio.get<List<dynamic>>(url);
      for (var element in response.data!) {
        logger.d("timeline values are : $element");
      }
      final output = response.data!
          .map((e) => AssessmentTimelineViewModel.fromJson(e))
          .toList();

      return output;
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      logger.e("Error getting assessment timeline: $e");
      rethrow;
    }
  }

  @override
  Future<List<Encounter>> getEncounters(int patientId) async {
    String url =
        "/services/triage/api/v2/triage-report/encounters?patient-id=$patientId";
    List<Encounter> list = [];

    list = await _dio.get(url).then((value) {
      return value.data.map<Encounter>((e) => Encounter.fromJson(e)).toList();
    });

    logger.d("Encounters: $list");

    return list;
  }
  // @override
  // Future<TriageReportDetailedEntity> getTriageDetailedReport(
  //     int reportId) async {
  //   final endpoint = "/services/triage/api/v2/triage-report/$reportId/details";

  //   // return TriageReportDetailedEntity();
  // }
}
