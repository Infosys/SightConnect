// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eb_form_config_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EBFormConfigResponseModelImpl _$$EBFormConfigResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EBFormConfigResponseModelImpl(
      stageName: json['stageName'] as String?,
      stageVersion: json['stageVersion'] as String?,
      stageConfig: json['stageConfig'] == null
          ? null
          : StageConfig.fromJson(json['stageConfig'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EBFormConfigResponseModelImplToJson(
        _$EBFormConfigResponseModelImpl instance) =>
    <String, dynamic>{
      'stageName': instance.stageName,
      'stageVersion': instance.stageVersion,
      'stageConfig': instance.stageConfig?.toJson(),
    };

_$StageConfigImpl _$$StageConfigImplFromJson(Map<String, dynamic> json) =>
    _$StageConfigImpl();

Map<String, dynamic> _$$StageConfigImplToJson(_$StageConfigImpl instance) =>
    <String, dynamic>{};
