// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eb_form_prefilled_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EBFormPrefilledResponseModelImpl _$$EBFormPrefilledResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EBFormPrefilledResponseModelImpl(
      encounterId: (json['encounterId'] as num?)?.toInt(),
      tenantId: json['tenantId'] as String?,
      stageName: json['stageName'] as String?,
      assessmentVersion: json['assessmentVersion'] as String?,
      eBforms: (json['forms'] as List<dynamic>?)
          ?.map((e) => EBform.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EBFormPrefilledResponseModelImplToJson(
        _$EBFormPrefilledResponseModelImpl instance) =>
    <String, dynamic>{
      'encounterId': instance.encounterId,
      'tenantId': instance.tenantId,
      'stageName': instance.stageName,
      'assessmentVersion': instance.assessmentVersion,
      'forms': instance.eBforms?.map((e) => e.toJson()).toList(),
    };

_$EBformImpl _$$EBformImplFromJson(Map<String, dynamic> json) => _$EBformImpl(
      identifier: (json['identifier'] as num?)?.toInt(),
      identifierType: json['identifierType'] as String?,
      eBformData: json['formData'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$EBformImplToJson(_$EBformImpl instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'identifierType': instance.identifierType,
      'formData': instance.eBformData,
    };
