// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consent_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConsentModel _$$_ConsentModelFromJson(Map<String, dynamic> json) =>
    _$_ConsentModel(
      templateId: json['templateId'] as int,
      consentVersion: json['consentVersion'] as String,
      consentStatus: json['consentStatus'] as String,
      acknowledgeDate: json['acknowledgeDate'] as String,
    );

Map<String, dynamic> _$$_ConsentModelToJson(_$_ConsentModel instance) =>
    <String, dynamic>{
      'templateId': instance.templateId,
      'consentVersion': instance.consentVersion,
      'consentStatus': instance.consentStatus,
      'acknowledgeDate': instance.acknowledgeDate,
    };
