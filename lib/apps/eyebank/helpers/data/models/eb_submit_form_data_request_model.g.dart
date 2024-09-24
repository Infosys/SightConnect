// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eb_submit_form_data_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EBSubmitFormDataRequestModelImpl _$$EBSubmitFormDataRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EBSubmitFormDataRequestModelImpl(
      encounterId: json['encounterId'] as String?,
      timelineName: json['timelineName'] as String?,
      timelineVersion: json['timelineVersion'] as String?,
      stageName: json['stageName'] as String?,
      stageVersion: json['stageVersion'] as String?,
      formData: json['formData'],
      serviceRequestId: json['serviceRequestId'] as String?,
      performerId: json['performerId'] as String?,
      performerRole: json['performerRole'] as String?,
      verifiedById: json['verifiedById'] as String?,
      verifiedByRole: json['verifiedByRole'] as String?,
      metaData: json['metaData'],
    );

Map<String, dynamic> _$$EBSubmitFormDataRequestModelImplToJson(
        _$EBSubmitFormDataRequestModelImpl instance) =>
    <String, dynamic>{
      'encounterId': instance.encounterId,
      'timelineName': instance.timelineName,
      'timelineVersion': instance.timelineVersion,
      'stageName': instance.stageName,
      'stageVersion': instance.stageVersion,
      'formData': instance.formData,
      'serviceRequestId': instance.serviceRequestId,
      'performerId': instance.performerId,
      'performerRole': instance.performerRole,
      'verifiedById': instance.verifiedById,
      'verifiedByRole': instance.verifiedByRole,
      'metaData': instance.metaData,
    };
