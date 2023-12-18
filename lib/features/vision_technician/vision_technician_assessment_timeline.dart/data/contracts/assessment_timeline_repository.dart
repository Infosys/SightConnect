import '../../domain/models/assessment_timeline_view_model.dart';

abstract class AssessmentTimelineRepository {
  Future<List<AssessmentTimelineViewModel>> getAssessmentTimeline(
      String encounterId);
}
