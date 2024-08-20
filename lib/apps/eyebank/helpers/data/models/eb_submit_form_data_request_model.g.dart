// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eb_submit_form_data_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EBSubmitFormDataRequestModelImpl _$$EBSubmitFormDataRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EBSubmitFormDataRequestModelImpl(
      timelineName: json['timelineName'] as String?,
      timelineVersion: json['timelineVersion'] as String?,
      formData: json['formData'],
      performerId: json['performerId'] as String?,
      performerRole: json['performerRole'] as String?,
      verifiedById: json['verifiedById'] as String?,
      verifiedByRole: json['verifiedByRole'] as String?,
    );

Map<String, dynamic> _$$EBSubmitFormDataRequestModelImplToJson(
        _$EBSubmitFormDataRequestModelImpl instance) =>
    <String, dynamic>{
      'timelineName': instance.timelineName,
      'timelineVersion': instance.timelineVersion,
      'formData': instance.formData,
      'performerId': instance.performerId,
      'performerRole': instance.performerRole,
      'verifiedById': instance.verifiedById,
      'verifiedByRole': instance.verifiedByRole,
    };
