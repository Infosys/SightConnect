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
      stages:
          (json['stages'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$EbTimelineConfigModelImplToJson(
        _$EbTimelineConfigModelImpl instance) =>
    <String, dynamic>{
      'timelineName': instance.timelineName,
      'timelineVersion': instance.timelineVersion,
      'stages': instance.stages,
    };
