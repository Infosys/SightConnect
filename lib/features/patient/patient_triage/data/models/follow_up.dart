import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/models/timestamp_converter.dart';
import '../enums/triage_enums.dart';

part 'follow_up.freezed.dart';
part 'follow_up.g.dart';

@freezed
class FollowUp with _$FollowUp {
  const factory FollowUp({
    required int id,
    String? followupCode,
    @TimestampConverter() DateTime? requestedOn,
    @TimestampConverter() DateTime? finalizedOn,
    String? json,
    String? status,
    String? finalResponse,
    @Default(TriageAction.NO_ACTION) TriageAction action,
    @Default(TriageUrgency.ROUTINE) TriageUrgency urgency,
    @Default(TriageReason.OTHERS) TriageReason reason,
    String? remarks,
  }) = _FollowUp;

  factory FollowUp.fromJson(Map<String, Object?> json) =>
      _$FollowUpFromJson(json);
}
