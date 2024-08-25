// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eb_form_prefilled_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EBFormPrefilledResponseModelImpl _$$EBFormPrefilledResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EBFormPrefilledResponseModelImpl(
      encounterId: json['encounterId'] as String?,
      tenantId: json['tenantId'] as String?,
      serviceRequestId: json['serviceRequestId'] as String?,
      stageName: json['stageName'] as String?,
      stageVersion: json['stageVersion'] as String?,
      formData: json['formData'],
      metaData: json['metaData'],
    );

Map<String, dynamic> _$$EBFormPrefilledResponseModelImplToJson(
        _$EBFormPrefilledResponseModelImpl instance) =>
    <String, dynamic>{
      'encounterId': instance.encounterId,
      'tenantId': instance.tenantId,
      'serviceRequestId': instance.serviceRequestId,
      'stageName': instance.stageName,
      'stageVersion': instance.stageVersion,
      'formData': instance.formData,
      'metaData': instance.metaData,
    };
