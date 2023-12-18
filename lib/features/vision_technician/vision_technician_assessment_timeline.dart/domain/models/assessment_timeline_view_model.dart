import 'package:freezed_annotation/freezed_annotation.dart';

part 'assessment_timeline_view_model.freezed.dart';

part 'assessment_timeline_view_model.g.dart';

@freezed
class AssessmentTimelineViewModel with _$AssessmentTimelineViewModel {
  const factory AssessmentTimelineViewModel({
    String? type,
    required String title,
    @JsonKey(name: "description")required String subtitle,
    required DateTime date,
    required String call,
    required String assessmentId,
    required String encounterId,
  }) = _AssessmentTimelineViewModel;

  factory AssessmentTimelineViewModel.fromJson(Map<String, dynamic> json) =>
      _$AssessmentTimelineViewModelFromJson(json);
}