// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eb_form_intimation_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EBFormIntimationResponseModelImpl
    _$$EBFormIntimationResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$EBFormIntimationResponseModelImpl(
          timelineName: json['timelineName'] as String?,
          version: json['version'] as String?,
          stageVersion: json['stageVersion'] as String?,
          stageName: json['stageName'] as String?,
          timelineVersion: json['timelineVersion'] as String?,
          stage: json['stage'],
          name: json['name'] as String?,
        );

Map<String, dynamic> _$$EBFormIntimationResponseModelImplToJson(
        _$EBFormIntimationResponseModelImpl instance) =>
    <String, dynamic>{
      'timelineName': instance.timelineName,
      'version': instance.version,
      'stageVersion': instance.stageVersion,
      'stageName': instance.stageName,
      'timelineVersion': instance.timelineVersion,
      'stage': instance.stage,
      'name': instance.name,
    };
