import 'package:eye_care_for_all/features/common_features/triage/data/models/triage_response_dto.dart';

import '../../domain/models/assessment_timeline_view_model.dart';

abstract class AssessmentTimelineRepository {
  Future<List<AssessmentTimelineViewModel>> getAssessmentTimeline(
      int encounterId);

  Future<List<Encounter>> getEncounters(int patientId);
  // Future<TriageReportDetailedEntity> getTriageDetailedReport(int reportId);
}
