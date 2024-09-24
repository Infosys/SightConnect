// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reject_encounter_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RejectEncounterRequestModelImpl _$$RejectEncounterRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RejectEncounterRequestModelImpl(
      encounterId: (json['encounterId'] as num?)?.toInt(),
      reason: $enumDecodeNullable(_$ReasonEnumMap, json['reason']),
      comments: json['comments'] as String?,
      performerId: json['performerId'] as String?,
      performerRole: json['performerRole'] as String?,
      verifiedById: json['verifiedById'] as String?,
      verifiedByRole: json['verifiedByRole'] as String?,
    );

Map<String, dynamic> _$$RejectEncounterRequestModelImplToJson(
        _$RejectEncounterRequestModelImpl instance) =>
    <String, dynamic>{
      'encounterId': instance.encounterId,
      'reason': _$ReasonEnumMap[instance.reason],
      'comments': instance.comments,
      'performerId': instance.performerId,
      'performerRole': instance.performerRole,
      'verifiedById': instance.verifiedById,
      'verifiedByRole': instance.verifiedByRole,
    };

const _$ReasonEnumMap = {
  Reason.UNSUITABLE: 'UNSUITABLE',
};
