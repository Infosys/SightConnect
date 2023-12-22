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
      role: json['role'] as String?,
      identifier: json['identifier'] as int?,
    );

Map<String, dynamic> _$$_PerformerModelToJson(_$_PerformerModel instance) =>
    <String, dynamic>{
      'role': instance.role,
      'identifier': instance.identifier,
    };

_$_ConditionModel _$$_ConditionModelFromJson(Map<String, dynamic> json) =>
    _$_ConditionModel(
      recordedDate: json['recordedDate'] as String?,
      bodySite: json['bodySite'] as String?,
      code: json['code'] as String?,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$_ConditionModelToJson(_$_ConditionModel instance) =>
    <String, dynamic>{
      'recordedDate': instance.recordedDate,
      'bodySite': instance.bodySite,
      'code': instance.code,
      'note': instance.note,
    };

_$_ServiceRequestModel _$$_ServiceRequestModelFromJson(
        Map<String, dynamic> json) =>
    _$_ServiceRequestModel(
      note: json['note'] as String?,
      patientInstruction: json['patientInstruction'] as String?,
      identifier: json['identifier'] as int?,
      bodySite: json['bodySite'] as String?,
      priority: json['priority'] as String?,
    );

Map<String, dynamic> _$$_ServiceRequestModelToJson(
        _$_ServiceRequestModel instance) =>
    <String, dynamic>{
      'note': instance.note,
      'patientInstruction': instance.patientInstruction,
      'identifier': instance.identifier,
      'bodySite': instance.bodySite,
      'priority': instance.priority,
    };

_$_GoalModel _$$_GoalModelFromJson(Map<String, dynamic> json) => _$_GoalModel(
      statusReason: json['statusReason'] as String?,
      achievementStatus: json['achievementStatus'] as String?,
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
      'achievementStatus': instance.achievementStatus,
      'outcomes': instance.outcomes?.map((e) => e.toJson()).toList(),
      'note': instance.note,
      'startDate': instance.startDate,
      'target': instance.target?.map((e) => e.toJson()).toList(),
    };

_$_GoalOutcomeModel _$$_GoalOutcomeModelFromJson(Map<String, dynamic> json) =>
    _$_GoalOutcomeModel(
      goalOutcome: json['goalOutcome'] as String?,
    );

Map<String, dynamic> _$$_GoalOutcomeModelToJson(_$_GoalOutcomeModel instance) =>
    <String, dynamic>{
      'goalOutcome': instance.goalOutcome,
    };

_$_TargetModel _$$_TargetModelFromJson(Map<String, dynamic> json) =>
    _$_TargetModel(
      detailString: json['detailString'] as String?,
    );

Map<String, dynamic> _$$_TargetModelToJson(_$_TargetModel instance) =>
    <String, dynamic>{
      'detailString': instance.detailString,
    };
