// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'follow_up.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FollowUp _$$_FollowUpFromJson(Map<String, dynamic> json) => _$_FollowUp(
      id: json['id'] as int,
      followupCode: json['followupCode'] as String?,
      requestedOn:
          const TimestampConverter().fromJson(json['requestedOn'] as String?),
      finalizedOn:
          const TimestampConverter().fromJson(json['finalizedOn'] as String?),
      json: json['json'] as String?,
      status: json['status'] as String?,
      finalResponse: json['finalResponse'] as String?,
      action: $enumDecodeNullable(_$TriageActionEnumMap, json['action']) ??
          TriageAction.NO_ACTION,
      urgency: $enumDecodeNullable(_$TriageUrgencyEnumMap, json['urgency']) ??
          TriageUrgency.ROUTINE,
      reason: $enumDecodeNullable(_$TriageReasonEnumMap, json['reason']) ??
          TriageReason.OTHERS,
      remarks: json['remarks'] as String?,
    );

Map<String, dynamic> _$$_FollowUpToJson(_$_FollowUp instance) =>
    <String, dynamic>{
      'id': instance.id,
      'followupCode': instance.followupCode,
      'requestedOn': const TimestampConverter().toJson(instance.requestedOn),
      'finalizedOn': const TimestampConverter().toJson(instance.finalizedOn),
      'json': instance.json,
      'status': instance.status,
      'finalResponse': instance.finalResponse,
      'action': _$TriageActionEnumMap[instance.action]!,
      'urgency': _$TriageUrgencyEnumMap[instance.urgency]!,
      'reason': _$TriageReasonEnumMap[instance.reason]!,
      'remarks': instance.remarks,
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
