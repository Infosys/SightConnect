import 'package:eye_care_for_all/core/models/timestamp_converter.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/data/enums/vt_close_assessment_enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vt_close_assessment_model.freezed.dart';
part 'vt_close_assessment_model.g.dart';

@freezed
class CloseAssessmentDto with _$CloseAssessmentDto {
  const factory CloseAssessmentDto({
    int? encounterId,
    int? diagnosticReportId,
    int? organizationCode,
    List<Performer>? performer,
    int? carePlanId,
    int? goalId,
    GoalAction? goalAction,
    String? statusReason,
    AchievementStatus? achievementStatus,
    @TimestampConverter() DateTime? statusDate,
    List<Outcome>? outcomes,
    String? note,
    String? mrn,
  }) = _CloseAssessmentDto;

  factory CloseAssessmentDto.fromJson(Map<String, dynamic> json) =>
      _$CloseAssessmentDtoFromJson(json);
}

@freezed
class Performer with _$Performer {
  const factory Performer({
    Role? role,
    int? identifier,
  }) = _Performer;

  factory Performer.fromJson(Map<String, dynamic> json) =>
      _$PerformerFromJson(json);
}

@freezed
class Outcome with _$Outcome {
  const factory Outcome({
    ActionOutcome? action,
    GoalOutCome? goalOutcome,
  }) = _Outcome;

  factory Outcome.fromJson(Map<String, dynamic> json) =>
      _$OutcomeFromJson(json);
}