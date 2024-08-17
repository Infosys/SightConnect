// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eb_form_action_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EBFormActionRequestModelImpl _$$EBFormActionRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EBFormActionRequestModelImpl(
      timelineName: json['timelineName'] as String?,
      timelineVersion: json['timelineVersion'] as String?,
      eBformData: json['formData'] as Map<String, dynamic>?,
      performerId: json['performerId'] as String?,
      performerRole: json['performerRole'] as String?,
      verifiedById: json['verifiedById'] as String?,
      verifiedByRole: json['verifiedByRole'] as String?,
    );

Map<String, dynamic> _$$EBFormActionRequestModelImplToJson(
        _$EBFormActionRequestModelImpl instance) =>
    <String, dynamic>{
      'timelineName': instance.timelineName,
      'timelineVersion': instance.timelineVersion,
      'formData': instance.eBformData,
      'performerId': instance.performerId,
      'performerRole': instance.performerRole,
      'verifiedById': instance.verifiedById,
      'verifiedByRole': instance.verifiedByRole,
    };
