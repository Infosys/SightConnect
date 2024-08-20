// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eb_timeline_config_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EbTimelineConfigModelImpl _$$EbTimelineConfigModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EbTimelineConfigModelImpl(
      timelineName: json['timelineName'] as String?,
      timelineVersion: json['timelineVersion'] as String?,
      stages: (json['stages'] as List<dynamic>?)
          ?.map((e) => Stage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EbTimelineConfigModelImplToJson(
        _$EbTimelineConfigModelImpl instance) =>
    <String, dynamic>{
      'timelineName': instance.timelineName,
      'timelineVersion': instance.timelineVersion,
      'stages': instance.stages?.map((e) => e.toJson()).toList(),
    };

_$StageImpl _$$StageImplFromJson(Map<String, dynamic> json) => _$StageImpl(
      stageName: json['stageName'] as String?,
      stageVersion: json['stageVersion'] as String?,
      repeats: json['repeats'] ?? false,
      minRepeat: (json['minRepeat'] as num?)?.toInt(),
      maxRepeat: (json['maxRepeat'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$StageImplToJson(_$StageImpl instance) =>
    <String, dynamic>{
      'stageName': instance.stageName,
      'stageVersion': instance.stageVersion,
      'repeats': instance.repeats,
      'minRepeat': instance.minRepeat,
      'maxRepeat': instance.maxRepeat,
    };
