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
    List<PerformerDto>? performer,
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
class PerformerDto with _$PerformerDto {
  const factory PerformerDto({
    Role? role,
    int? identifier,
  }) = _PerformerDto;

  factory PerformerDto.fromJson(Map<String, dynamic> json) =>
      _$PerformerDtoFromJson(json);
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