import 'package:eye_care_for_all/apps/sightconnect/common/triage/data/models/triage_response_dto.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/contracts/assessment_timeline_repository.dart';
import '../../data/source/assessment_timeline_source.dart';
import '../models/assessment_timeline_view_model.dart';

var assessmentTimeLineRepository = Provider(
  (ref) =>
      AssessmentTimelineRepositoryImpl(ref.watch(assessmentTimeLineSource)),
);

class AssessmentTimelineRepositoryImpl extends AssessmentTimelineRepository {
  AssessmentTimeLineSource assessmentTimeLineSource;

  AssessmentTimelineRepositoryImpl(this.assessmentTimeLineSource);

  @override
  Future<List<AssessmentTimelineViewModel>> getAssessmentTimeline(
      int encounterId) async {
    return await assessmentTimeLineSource.getAssessmentTimeLine(encounterId);
  }

  @override
  Future<List<Encounter>> getEncounters(int patientId) async {
    return await assessmentTimeLineSource.getEncounters(patientId);
  }

  // @override
  // Future<TriageReportDetailedEntity> getTriageDetailedReport(
  //     int reportId) async {
  //   return await assessmentTimeLineSource.getTriageDetailedReport(reportId);
  // }
}
