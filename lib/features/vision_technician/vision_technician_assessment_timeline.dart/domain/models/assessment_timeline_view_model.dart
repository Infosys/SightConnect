import 'package:eye_care_for_all/core/models/timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'assessment_timeline_view_model.freezed.dart';
part 'assessment_timeline_view_model.g.dart';

@freezed
class AssessmentTimelineViewModel with _$AssessmentTimelineViewModel {
  const factory AssessmentTimelineViewModel({
    String? type,
    String? title,
    @JsonKey(name: "description") String? subtitle,
    @TimestampConverter() DateTime? date,
   String? call,
     int? assessmentId,
     int? encounterId,
  }) = _AssessmentTimelineViewModel;

  factory AssessmentTimelineViewModel.fromJson(Map<String, dynamic> json) =>
      _$AssessmentTimelineViewModelFromJson(json);
}