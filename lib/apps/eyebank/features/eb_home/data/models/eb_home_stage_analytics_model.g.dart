// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eb_home_stage_analytics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EbHomeStageAnalyticsModelImpl _$$EbHomeStageAnalyticsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EbHomeStageAnalyticsModelImpl(
      code: json['code'] == null
          ? EBStageName.UNDEFINED
          : _ebStageNameFromJson(json['code'] as String?),
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$EbHomeStageAnalyticsModelImplToJson(
        _$EbHomeStageAnalyticsModelImpl instance) =>
    <String, dynamic>{
      'code': _ebStageNameToJson(instance.code),
      'count': instance.count,
    };
