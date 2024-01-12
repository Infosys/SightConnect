import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/triage_response_dto.dart';
import 'package:eye_care_for_all/main.dart';
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
    String url = "/services/triage/api/triage/encounters/$encounterId/timeline";
    return await _dio.get(url).then((value) {
      return value.data
          .map<AssessmentTimelineViewModel>(
              (e) => AssessmentTimelineViewModel.fromJson(e))
          .toList();

      // List<AssessmentTimelineViewModel> list = [];
      // value.data.forEach((element) {
      //   list.add(AssessmentTimelineViewModel.fromJson(element));
      // });
      // return list;
    });
  }

  @override
  Future<List<Encounter>> getEncounters(int patientId) async {
    String url = "/services/triage/api/triage/encounters?patient-id=$patientId";
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
  //   final endpoint = "/services/triage/api/triage-report/$reportId/details";

  //   // return TriageReportDetailedEntity();
  // }
}
