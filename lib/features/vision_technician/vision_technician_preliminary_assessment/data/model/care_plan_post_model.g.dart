// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'care_plan_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarePlanPostModelImpl _$$CarePlanPostModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CarePlanPostModelImpl(
      id: (json['id'] as num?)?.toInt(),
      reports: (json['reports'] as List<dynamic>?)
          ?.map((e) => ReportModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      encounterId: (json['encounterId'] as num?)?.toInt(),
      organizationCode: (json['organizationCode'] as num?)?.toInt(),
      tenantCode: (json['tenantCode'] as num?)?.toInt(),
      performer: (json['performer'] as List<dynamic>?)
          ?.map((e) => PerformerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) => ConditionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      serviceRequest: (json['serviceRequest'] as List<dynamic>?)
          ?.map((e) => ServiceRequestModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      note: json['note'] as String?,
      startDate:
          const TimestampConverter().fromJson(json['startDate'] as String?),
      goal: (json['goal'] as List<dynamic>?)
          ?.map((e) => GoalModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CarePlanPostModelImplToJson(
        _$CarePlanPostModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reports': instance.reports?.map((e) => e.toJson()).toList(),
      'encounterId': instance.encounterId,
      'organizationCode': instance.organizationCode,
      'tenantCode': instance.tenantCode,
      'performer': instance.performer?.map((e) => e.toJson()).toList(),
      'conditions': instance.conditions?.map((e) => e.toJson()).toList(),
      'serviceRequest':
          instance.serviceRequest?.map((e) => e.toJson()).toList(),
      'note': instance.note,
      'startDate': const TimestampConverter().toJson(instance.startDate),
      'goal': instance.goal?.map((e) => e.toJson()).toList(),
    };

_$ReportModelImpl _$$ReportModelImplFromJson(Map<String, dynamic> json) =>
    _$ReportModelImpl(
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ReportModelImplToJson(_$ReportModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$PerformerModelImpl _$$PerformerModelImplFromJson(Map<String, dynamic> json) =>
    _$PerformerModelImpl(
      role: $enumDecodeNullable(_$RoleEnumMap, json['role']),
      identifier: (json['identifier'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PerformerModelImplToJson(
        _$PerformerModelImpl instance) =>
    <String, dynamic>{
      'role': _$RoleEnumMap[instance.role],
      'identifier': instance.identifier,
    };

const _$RoleEnumMap = {
  Role.VISION_TECHNICIAN: 'VISION_TECHNICIAN',
};

_$ConditionModelImpl _$$ConditionModelImplFromJson(Map<String, dynamic> json) =>
    _$ConditionModelImpl(
      id: (json['id'] as num?)?.toInt(),
      recordedDate:
          const TimestampConverter().fromJson(json['recordedDate'] as String?),
      bodySite: $enumDecodeNullable(_$BodySiteEnumMap, json['bodySite']),
      code: $enumDecodeNullable(_$CodeEnumMap, json['code']),
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$ConditionModelImplToJson(
        _$ConditionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recordedDate': const TimestampConverter().toJson(instance.recordedDate),
      'bodySite': _$BodySiteEnumMap[instance.bodySite],
      'code': _$CodeEnumMap[instance.code],
      'note': instance.note,
    };

const _$BodySiteEnumMap = {
  BodySite.LEFT_EYE: 'LEFT_EYE',
  BodySite.RIGHT_EYE: 'RIGHT_EYE',
  BodySite.BOTH_EYES: 'BOTH_EYES',
};

const _$CodeEnumMap = {
  Code.EYE_TRIAGE: 'EYE_TRIAGE',
};

_$ServiceRequestModelImpl _$$ServiceRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ServiceRequestModelImpl(
      id: (json['id'] as num?)?.toInt(),
      note: json['note'] as String?,
      patientInstruction: $enumDecodeNullable(
          _$PatientInstructionEnumMap, json['patientInstruction']),
      identifier: (json['identifier'] as num?)?.toInt(),
      bodySite: $enumDecodeNullable(_$BodySiteEnumMap, json['bodySite']),
      priority: $enumDecodeNullable(_$TriagePriorityEnumMap, json['priority']),
    );

Map<String, dynamic> _$$ServiceRequestModelImplToJson(
        _$ServiceRequestModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'note': instance.note,
      'patientInstruction':
          _$PatientInstructionEnumMap[instance.patientInstruction],
      'identifier': instance.identifier,
      'bodySite': _$BodySiteEnumMap[instance.bodySite],
      'priority': _$TriagePriorityEnumMap[instance.priority],
    };

const _$PatientInstructionEnumMap = {
  PatientInstruction.VISIT_PRIMARY_CLINIC: 'VISIT_PRIMARY_CLINIC',
  PatientInstruction.VISIT_SECONDARY_CLINIC: 'VISIT_SECONDARY_CLINIC',
  PatientInstruction.VISIT_TERTIARY_CLINIC: 'VISIT_TERTIARY_CLINIC',
  PatientInstruction.VISIT_COE: 'VISIT_COE',
  PatientInstruction.VISIT_AS_PER_CONSULT: 'VISIT_AS_PER_CONSULT',
};

const _$TriagePriorityEnumMap = {
  TriagePriority.ROUTINE: 'ROUTINE',
  TriagePriority.URGENT: 'URGENT',
  TriagePriority.ASAP: 'ASAP',
  TriagePriority.STAT: 'STAT',
};

_$GoalModelImpl _$$GoalModelImplFromJson(Map<String, dynamic> json) =>
    _$GoalModelImpl(
      id: (json['id'] as num?)?.toInt(),
      statusReason: json['statusReason'] as String?,
      achievementStatus:
          $enumDecodeNullable(_$StatusEnumMap, json['achievementStatus']),
      outcomes: (json['outcomes'] as List<dynamic>?)
          ?.map((e) => GoalOutcomeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      note: json['note'] as String?,
      startDate:
          const TimestampConverter().fromJson(json['startDate'] as String?),
      target: (json['target'] as List<dynamic>?)
          ?.map((e) => TargetModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      category: $enumDecodeNullable(_$CategoryEnumMap, json['category']),
    );

Map<String, dynamic> _$$GoalModelImplToJson(_$GoalModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'statusReason': instance.statusReason,
      'achievementStatus': _$StatusEnumMap[instance.achievementStatus],
      'outcomes': instance.outcomes?.map((e) => e.toJson()).toList(),
      'note': instance.note,
      'startDate': const TimestampConverter().toJson(instance.startDate),
      'target': instance.target?.map((e) => e.toJson()).toList(),
      'category': _$CategoryEnumMap[instance.category],
    };

const _$StatusEnumMap = {
  Status.REGISTERED: 'REGISTERED',
  Status.IN_PROGRESS: 'IN_PROGRESS',
  Status.COMPLETED: 'COMPLETED',
};

const _$CategoryEnumMap = {
  Category.TREATMENT: 'TREATMENT',
};

_$GoalOutcomeModelImpl _$$GoalOutcomeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GoalOutcomeModelImpl(
      id: (json['id'] as num?)?.toInt(),
      goalOutcome:
          $enumDecodeNullable(_$GoalOutComeEnumMap, json['goalOutcome']),
    );

Map<String, dynamic> _$$GoalOutcomeModelImplToJson(
        _$GoalOutcomeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'goalOutcome': _$GoalOutComeEnumMap[instance.goalOutcome],
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

_$TargetModelImpl _$$TargetModelImplFromJson(Map<String, dynamic> json) =>
    _$TargetModelImpl(
      id: (json['id'] as num?)?.toInt(),
      detailString: json['detailString'] as String?,
    );

Map<String, dynamic> _$$TargetModelImplToJson(_$TargetModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'detailString': instance.detailString,
    };
