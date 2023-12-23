// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'care_plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarePlanModel _$$_CarePlanModelFromJson(Map<String, dynamic> json) =>
    _$_CarePlanModel(
      reports: (json['reports'] as List<dynamic>?)
          ?.map((e) => ReportModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      encounterId: json['encounterId'] as int?,
      organizationCode: json['organizationCode'] as int?,
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
      startDate: json['startDate'] as String?,
      goal: (json['goal'] as List<dynamic>?)
          ?.map((e) => GoalModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CarePlanModelToJson(_$_CarePlanModel instance) =>
    <String, dynamic>{
      'reports': instance.reports?.map((e) => e.toJson()).toList(),
      'encounterId': instance.encounterId,
      'organizationCode': instance.organizationCode,
      'performer': instance.performer?.map((e) => e.toJson()).toList(),
      'conditions': instance.conditions?.map((e) => e.toJson()).toList(),
      'serviceRequest':
          instance.serviceRequest?.map((e) => e.toJson()).toList(),
      'note': instance.note,
      'startDate': instance.startDate,
      'goal': instance.goal?.map((e) => e.toJson()).toList(),
    };

_$_ReportModel _$$_ReportModelFromJson(Map<String, dynamic> json) =>
    _$_ReportModel(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$_ReportModelToJson(_$_ReportModel instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$_PerformerModel _$$_PerformerModelFromJson(Map<String, dynamic> json) =>
    _$_PerformerModel(
      role: $enumDecodeNullable(_$RoleEnumMap, json['role']),
      identifier: json['identifier'] as int?,
    );

Map<String, dynamic> _$$_PerformerModelToJson(_$_PerformerModel instance) =>
    <String, dynamic>{
      'role': _$RoleEnumMap[instance.role],
      'identifier': instance.identifier,
    };

const _$RoleEnumMap = {
  Role.VISION_TECHNICIAN: 'VISION_TECHNICIAN',
};

_$_ConditionModel _$$_ConditionModelFromJson(Map<String, dynamic> json) =>
    _$_ConditionModel(
      recordedDate: json['recordedDate'] as String?,
      bodySite: $enumDecodeNullable(_$BodySiteEnumMap, json['bodySite']),
      code: $enumDecodeNullable(_$CodeEnumMap, json['code']),
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$_ConditionModelToJson(_$_ConditionModel instance) =>
    <String, dynamic>{
      'recordedDate': instance.recordedDate,
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

_$_ServiceRequestModel _$$_ServiceRequestModelFromJson(
        Map<String, dynamic> json) =>
    _$_ServiceRequestModel(
      note: json['note'] as String?,
      patientInstruction: $enumDecodeNullable(
          _$PatientInstructionEnumMap, json['patientInstruction']),
      identifier: json['identifier'] as int?,
      bodySite: $enumDecodeNullable(_$BodySiteEnumMap, json['bodySite']),
      priority: $enumDecodeNullable(_$TriageUrgencyEnumMap, json['priority']),
    );

Map<String, dynamic> _$$_ServiceRequestModelToJson(
        _$_ServiceRequestModel instance) =>
    <String, dynamic>{
      'note': instance.note,
      'patientInstruction':
          _$PatientInstructionEnumMap[instance.patientInstruction],
      'identifier': instance.identifier,
      'bodySite': _$BodySiteEnumMap[instance.bodySite],
      'priority': _$TriageUrgencyEnumMap[instance.priority],
    };

const _$PatientInstructionEnumMap = {
  PatientInstruction.VISIT_PRIMARY_CLINIC: 'VISIT_PRIMARY_CLINIC',
  PatientInstruction.VISIT_SECONDARY_CLINIC: 'VISIT_SECONDARY_CLINIC',
  PatientInstruction.VISIT_TERTIARY_CLINIC: 'VISIT_TERTIARY_CLINIC',
  PatientInstruction.VISIT_CENTER_OF_EXCELLENCE: 'VISIT_CENTER_OF_EXCELLENCE',
};

const _$TriageUrgencyEnumMap = {
  TriageUrgency.EMERGENCY: 'EMERGENCY',
  TriageUrgency.PRIORITY: 'PRIORITY',
  TriageUrgency.ROUTINE: 'ROUTINE',
};

_$_GoalModel _$$_GoalModelFromJson(Map<String, dynamic> json) => _$_GoalModel(
      statusReason: json['statusReason'] as String?,
      achievementStatus:
          $enumDecodeNullable(_$StatusEnumMap, json['achievementStatus']),
      outcomes: (json['outcomes'] as List<dynamic>?)
          ?.map((e) => GoalOutcomeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      note: json['note'] as String?,
      startDate: json['startDate'] as String?,
      target: (json['target'] as List<dynamic>?)
          ?.map((e) => TargetModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GoalModelToJson(_$_GoalModel instance) =>
    <String, dynamic>{
      'statusReason': instance.statusReason,
      'achievementStatus': _$StatusEnumMap[instance.achievementStatus],
      'outcomes': instance.outcomes?.map((e) => e.toJson()).toList(),
      'note': instance.note,
      'startDate': instance.startDate,
      'target': instance.target?.map((e) => e.toJson()).toList(),
    };

const _$StatusEnumMap = {
  Status.REGISTERED: 'REGISTERED',
  Status.IN_PROGRESS: 'IN_PROGRESS',
};

_$_GoalOutcomeModel _$$_GoalOutcomeModelFromJson(Map<String, dynamic> json) =>
    _$_GoalOutcomeModel(
      goalOutcome:
          $enumDecodeNullable(_$GoalOutComeEnumMap, json['goalOutcome']),
    );

Map<String, dynamic> _$$_GoalOutcomeModelToJson(_$_GoalOutcomeModel instance) =>
    <String, dynamic>{
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

_$_TargetModel _$$_TargetModelFromJson(Map<String, dynamic> json) =>
    _$_TargetModel(
      detailString: json['detailString'] as String?,
    );

Map<String, dynamic> _$$_TargetModelToJson(_$_TargetModel instance) =>
    <String, dynamic>{
      'detailString': instance.detailString,
    };
