/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vt_close_assessment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CloseAssessmentDtoImpl _$$CloseAssessmentDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CloseAssessmentDtoImpl(
      encounterId: (json['encounterId'] as num?)?.toInt(),
      diagnosticReportId: (json['diagnosticReportId'] as num?)?.toInt(),
      organizationCode: (json['organizationCode'] as num?)?.toInt(),
      tenantCode: (json['tenantCode'] as num?)?.toInt(),
      performer: (json['performer'] as List<dynamic>?)
          ?.map((e) => PerformerDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      carePlanId: (json['carePlanId'] as num?)?.toInt(),
      goalId: (json['goalId'] as num?)?.toInt(),
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

Map<String, dynamic> _$$CloseAssessmentDtoImplToJson(
        _$CloseAssessmentDtoImpl instance) =>
    <String, dynamic>{
      'encounterId': instance.encounterId,
      'diagnosticReportId': instance.diagnosticReportId,
      'organizationCode': instance.organizationCode,
      'tenantCode': instance.tenantCode,
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

_$PerformerDtoImpl _$$PerformerDtoImplFromJson(Map<String, dynamic> json) =>
    _$PerformerDtoImpl(
      role: $enumDecodeNullable(_$RoleEnumMap, json['role']),
      identifier: (json['identifier'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PerformerDtoImplToJson(_$PerformerDtoImpl instance) =>
    <String, dynamic>{
      'role': _$RoleEnumMap[instance.role],
      'identifier': instance.identifier,
    };

const _$RoleEnumMap = {
  Role.VISION_TECHNICIAN: 'VISION_TECHNICIAN',
};

_$OutcomeImpl _$$OutcomeImplFromJson(Map<String, dynamic> json) =>
    _$OutcomeImpl(
      action: $enumDecodeNullable(_$ActionOutcomeEnumMap, json['action']),
      goalOutcome:
          $enumDecodeNullable(_$GoalOutComeEnumMap, json['goalOutcome']),
    );

Map<String, dynamic> _$$OutcomeImplToJson(_$OutcomeImpl instance) =>
    <String, dynamic>{
      'action': _$ActionOutcomeEnumMap[instance.action],
      'goalOutcome': _$GoalOutComeEnumMap[instance.goalOutcome],
    };

const _$ActionOutcomeEnumMap = {
  ActionOutcome.ADD: 'ADD',
  ActionOutcome.REMOVE: 'REMOVE',
  ActionOutcome.UPDATE: 'UPDATE',
};

const _$GoalOutComeEnumMap = {
  GoalOutCome.GLASSES_PRESCRIBED: 'GLASSES_PRESCRIBED',
  GoalOutCome.OP_CONSULTATION: 'OP_CONSULTATION',
  GoalOutCome.MEDICINE_PRESCRIBED: 'MEDICINE_PRESCRIBED',
  GoalOutCome.UNDER_OBSERVATION: 'UNDER_OBSERVATION',
  GoalOutCome.ADMITTED: 'ADMITTED',
  GoalOutCome.SURGERY_RECOMMENDED: 'SURGERY_RECOMMENDED',
  GoalOutCome.REFERRED_TO_SPECIALIST: 'REFERRED_TO_SPECIALIST',
  GoalOutCome.PATIENT_DID_NOT_VISIT: 'PATIENT_DID_NOT_VISIT',
  GoalOutCome.PATIENT_VISITED_OTHER_CLINIC: 'PATIENT_VISITED_OTHER_CLINIC',
  GoalOutCome.PATIENT_NOT_INTERESTED_IN_TREATMENT:
      'PATIENT_NOT_INTERESTED_IN_TREATMENT',
  GoalOutCome.TREATMENT_PLAN_PRESCRIBED: 'TREATMENT_PLAN_PRESCRIBED',
  GoalOutCome.VISION_THERAPY_RECOMMENDED: 'VISION_THERAPY_RECOMMENDED',
  GoalOutCome.REFERRAL_FOR_DIAGNOSTIC_TESTING:
      'REFERRAL_FOR_DIAGNOSTIC_TESTING',
  GoalOutCome.LOW_VISION_REHABILITATION: 'LOW_VISION_REHABILITATION',
  GoalOutCome.EDUCATION_AND_COUNSELING: 'EDUCATION_AND_COUNSELING',
};
