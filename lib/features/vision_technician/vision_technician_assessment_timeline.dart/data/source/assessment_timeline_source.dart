import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/models/assessment_timeline_view_model.dart';

var assessmentTimeLineSource = Provider(
  (ref) => AssessmentTimeLineSourceImpl(
    ref.watch(dioTriageProvider),
  ),
);

abstract class AssessmentTimeLineSource {
  Future<List<AssessmentTimelineViewModel>> getAssessmentTimeLine(
      int encounterId);
}

class AssessmentTimeLineSourceImpl extends AssessmentTimeLineSource {
  final Dio _dio;

  AssessmentTimeLineSourceImpl(this._dio);

  @override
  Future<List<AssessmentTimelineViewModel>> getAssessmentTimeLine(
      int encounterId) async {
    String url = "/api/triage/encounters/$encounterId/timeline";
    return await _dio.get(url).then((value) {
      List<AssessmentTimelineViewModel> list = [];
      value.data.forEach((element) {
        list.add(AssessmentTimelineViewModel.fromJson(element));
      });
      return list;
    });
  }
}
