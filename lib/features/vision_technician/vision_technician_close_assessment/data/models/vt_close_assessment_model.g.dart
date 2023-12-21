// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vt_close_assessment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CloseAssessmentDto _$$_CloseAssessmentDtoFromJson(
        Map<String, dynamic> json) =>
    _$_CloseAssessmentDto(
      encounterId: json['encounterId'] as int?,
      diagnosticReportId: json['diagnosticReportId'] as int?,
      organizationCode: json['organizationCode'] as int?,
      performer: (json['performer'] as List<dynamic>?)
          ?.map((e) => Performer.fromJson(e as Map<String, dynamic>))
          .toList(),
      carePlanId: json['carePlanId'] as int?,
      goalId: json['goalId'] as int?,
      goalAction: $enumDecodeNullable(_$GoalActionEnumMap, json['goalAction']),
      statusReason: json['statusReason'] as String?,
      achievementStatus: $enumDecodeNullable(
          _$AchievementStatusEnumMap, json['achievementStatus']),
      statusDate:
          const TimestampConverter().fromJson(json['statusDate'] as String?),
      outcomes: (json['outcomes'] as List<dynamic>?)
          ?.map((e) => Outcome.fromJson(e as Map<String, dynamic>))
          .toList(),
      note: json['note'] as String?,
      mrn: json['mrn'] as String?,
    );

Map<String, dynamic> _$$_CloseAssessmentDtoToJson(
        _$_CloseAssessmentDto instance) =>
    <String, dynamic>{
      'encounterId': instance.encounterId,
      'diagnosticReportId': instance.diagnosticReportId,
      'organizationCode': instance.organizationCode,
      'performer': instance.performer?.map((e) => e.toJson()).toList(),
      'carePlanId': instance.carePlanId,
      'goalId': instance.goalId,
      'goalAction': _$GoalActionEnumMap[instance.goalAction],
      'statusReason': instance.statusReason,
      'achievementStatus':
          _$AchievementStatusEnumMap[instance.achievementStatus],
      'statusDate': const TimestampConverter().toJson(instance.statusDate),
      'outcomes': instance.outcomes?.map((e) => e.toJson()).toList(),
      'note': instance.note,
      'mrn': instance.mrn,
    };

const _$GoalActionEnumMap = {
  GoalAction.UPDATE: 'UPDATE',
};

const _$AchievementStatusEnumMap = {
  AchievementStatus.ACHIEVED: 'ACHIEVED',
};

_$_Performer _$$_PerformerFromJson(Map<String, dynamic> json) => _$_Performer(
      role: $enumDecodeNullable(_$RoleEnumMap, json['role']),
      identifier: json['identifier'] as int?,
    );

Map<String, dynamic> _$$_PerformerToJson(_$_Performer instance) =>
    <String, dynamic>{
      'role': _$RoleEnumMap[instance.role],
      'identifier': instance.identifier,
    };

const _$RoleEnumMap = {
  Role.VISION_TECHNICIAN: 'VISION_TECHNICIAN',
};

_$_Outcome _$$_OutcomeFromJson(Map<String, dynamic> json) => _$_Outcome(
      action: $enumDecodeNullable(_$ActionEnumMap, json['action']),
      goalOutcome:
          $enumDecodeNullable(_$GoalOutComeEnumMap, json['goalOutcome']),
    );

Map<String, dynamic> _$$_OutcomeToJson(_$_Outcome instance) =>
    <String, dynamic>{
      'action': _$ActionEnumMap[instance.action],
      'goalOutcome': _$GoalOutComeEnumMap[instance.goalOutcome],
    };

const _$ActionEnumMap = {
  Action.ADD: 'ADD',
};

const _$GoalOutComeEnumMap = {
  GoalOutCome.GLASSES_PRESCRIBED: 'GLASSES_PRESCRIBED',
  GoalOutCome.CATARACT_SURGERY_PRESCRIBED: 'CATARACT_SURGERY_PRESCRIBED',
  GoalOutCome.EYE_DROPS_PRESCRIBED: 'EYE_DROPS_PRESCRIBED',
  GoalOutCome.ORAL_MEDICATION_PRESCRIBED: 'ORAL_MEDICATION_PRESCRIBED',
};
