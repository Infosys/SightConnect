// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eb_form_intimation_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EBFormIntimationResponseModelImpl
    _$$EBFormIntimationResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$EBFormIntimationResponseModelImpl(
          timelineName: json['timelineName'] as String?,
          timelineVersion: json['timelineVersion'] as String?,
          stage: json['stage'] == null
              ? null
              : Stage.fromJson(json['stage'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$EBFormIntimationResponseModelImplToJson(
        _$EBFormIntimationResponseModelImpl instance) =>
    <String, dynamic>{
      'timelineName': instance.timelineName,
      'timelineVersion': instance.timelineVersion,
      'stage': instance.stage?.toJson(),
    };

_$StageImpl _$$StageImplFromJson(Map<String, dynamic> json) => _$StageImpl(
      stageName: json['stageName'] as String?,
      stageVersion: json['stageVersion'] as String?,
      stageConfig: json['stageConfig'] == null
          ? null
          : StageConfig.fromJson(json['stageConfig'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StageImplToJson(_$StageImpl instance) =>
    <String, dynamic>{
      'stageName': instance.stageName,
      'stageVersion': instance.stageVersion,
      'stageConfig': instance.stageConfig?.toJson(),
    };

_$StageConfigImpl _$$StageConfigImplFromJson(Map<String, dynamic> json) =>
    _$StageConfigImpl();

Map<String, dynamic> _$$StageConfigImplToJson(_$StageConfigImpl instance) =>
    <String, dynamic>{};
