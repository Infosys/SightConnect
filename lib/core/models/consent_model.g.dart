// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consent_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConsentModelImpl _$$ConsentModelImplFromJson(Map<String, dynamic> json) =>
    _$ConsentModelImpl(
      templateId: json['templateId'] as int?,
      consentVersion: json['consentVersion'] as String?,
      consentStatus:
          $enumDecodeNullable(_$ConsentStatusEnumMap, json['consentStatus']) ??
              ConsentStatus.PENDING,
      acknowledgeDate: json['acknowledgeDate'] as String?,
    );

Map<String, dynamic> _$$ConsentModelImplToJson(_$ConsentModelImpl instance) =>
    <String, dynamic>{
      'templateId': instance.templateId,
      'consentVersion': instance.consentVersion,
      'consentStatus': _$ConsentStatusEnumMap[instance.consentStatus]!,
      'acknowledgeDate': instance.acknowledgeDate,
    };

const _$ConsentStatusEnumMap = {
  ConsentStatus.ACKNOWLEDGED: 'ACKNOWLEDGED',
  ConsentStatus.WITHDRAWN: 'WITHDRAWN',
  ConsentStatus.PENDING: 'PENDING',
};
