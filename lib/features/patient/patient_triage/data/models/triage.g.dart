// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'triage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Triage _$$_TriageFromJson(Map<String, dynamic> json) => _$_Triage(
      id: json['id'] as int,
      patientInfo: json['patientInfo'] == null
          ? null
          : PatientInfo.fromJson(json['patientInfo'] as Map<String, dynamic>),
      facilityInfo: json['facilityInfo'] == null
          ? null
          : PatientInfo.fromJson(json['facilityInfo'] as Map<String, dynamic>),
      healthWorkerInfo: json['healthWorkerInfo'] == null
          ? null
          : PatientInfo.fromJson(
              json['healthWorkerInfo'] as Map<String, dynamic>),
      status: $enumDecodeNullable(_$TriageStatusEnumMap, json['status']) ??
          TriageStatus.OPEN,
      startedOn:
          const TimestampConverter().fromJson(json['startedOn'] as String?),
      closedOn:
          const TimestampConverter().fromJson(json['closedOn'] as String?),
      isDeleted: json['isDeleted'] as bool?,
      sequence: json['sequence'] as int?,
      source: $enumDecodeNullable(_$TriageSourceEnumMap, json['source']) ??
          TriageSource.SELF,
      action: $enumDecodeNullable(_$TriageActionEnumMap, json['action']) ??
          TriageAction.NO_ACTION,
      urgency: $enumDecodeNullable(_$TriageUrgencyEnumMap, json['urgency']) ??
          TriageUrgency.ROUTINE,
      reason: $enumDecodeNullable(_$TriageReasonEnumMap, json['reason']) ??
          TriageReason.OTHERS,
      statusRemark: json['statusRemark'] as String?,
      statusChangedBy: json['statusChangedBy'] as int?,
      triageResponse: json['triageResponse'] == null
          ? null
          : TriageResponse.fromJson(
              json['triageResponse'] as Map<String, dynamic>),
      visualAcuityReport: json['visualAcuityReport'] == null
          ? null
          : VisualAcuityReport.fromJson(
              json['visualAcuityReport'] as Map<String, dynamic>),
      followUp: json['followUp'] == null
          ? null
          : FollowUp.fromJson(json['followUp'] as Map<String, dynamic>),
      leftEyeImage: (json['leftEyeImage'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      rightEyeImage: (json['rightEyeImage'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      bothEyeImage: (json['bothEyeImage'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_TriageToJson(_$_Triage instance) => <String, dynamic>{
      'id': instance.id,
      'patientInfo': instance.patientInfo,
      'facilityInfo': instance.facilityInfo,
      'healthWorkerInfo': instance.healthWorkerInfo,
      'status': _$TriageStatusEnumMap[instance.status]!,
      'startedOn': const TimestampConverter().toJson(instance.startedOn),
      'closedOn': const TimestampConverter().toJson(instance.closedOn),
      'isDeleted': instance.isDeleted,
      'sequence': instance.sequence,
      'source': _$TriageSourceEnumMap[instance.source]!,
      'action': _$TriageActionEnumMap[instance.action]!,
      'urgency': _$TriageUrgencyEnumMap[instance.urgency]!,
      'reason': _$TriageReasonEnumMap[instance.reason]!,
      'statusRemark': instance.statusRemark,
      'statusChangedBy': instance.statusChangedBy,
      'triageResponse': instance.triageResponse,
      'visualAcuityReport': instance.visualAcuityReport,
      'followUp': instance.followUp,
      'leftEyeImage': instance.leftEyeImage,
      'rightEyeImage': instance.rightEyeImage,
      'bothEyeImage': instance.bothEyeImage,
    };

const _$TriageStatusEnumMap = {
  TriageStatus.OPEN: 'OPEN',
  TriageStatus.CLOSED: 'CLOSED',
  TriageStatus.DELETED: 'DELETED',
};

const _$TriageSourceEnumMap = {
  TriageSource.SELF: 'SELF',
  TriageSource.HEALTH_WORKER: 'HEALTH_WORKER',
  TriageSource.FACILITY: 'FACILITY',
};

const _$TriageActionEnumMap = {
  TriageAction.NO_ACTION: 'NO_ACTION',
  TriageAction.REFER: 'REFER',
  TriageAction.ADMIT: 'ADMIT',
  TriageAction.DISCHARGE: 'DISCHARGE',
};

const _$TriageUrgencyEnumMap = {
  TriageUrgency.EMERGENCY: 'EMERGENCY',
  TriageUrgency.URGENT: 'URGENT',
  TriageUrgency.ROUTINE: 'ROUTINE',
};

const _$TriageReasonEnumMap = {
  TriageReason.CATARACT: 'CATARACT',
  TriageReason.GLAUCOMA: 'GLAUCOMA',
  TriageReason.RETINA: 'RETINA',
  TriageReason.OTHERS: 'OTHERS',
};
