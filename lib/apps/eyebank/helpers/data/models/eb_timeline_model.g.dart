// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eb_timeline_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EBTimelineModelImpl _$$EBTimelineModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EBTimelineModelImpl(
      serviceRequestId: json['serviceRequestId'] as String?,
      title: json['title'] as String?,
      stage: json['stage'] as String?,
      assessmentVersion: json['assessmentVersion'] as String?,
      status: json['status'] as String?,
      differentiator: json['differentiator'] as String?,
      initiateDate:
          const TimestampConverter().fromJson(json['initiateDate'] as String?),
      recentUpdated:
          const TimestampConverter().fromJson(json['recentUpdated'] as String?),
      stages: (json['stages'] as List<dynamic>?)
          ?.map((e) => EBTimelineModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EBTimelineModelImplToJson(
        _$EBTimelineModelImpl instance) =>
    <String, dynamic>{
      'serviceRequestId': instance.serviceRequestId,
      'title': instance.title,
      'stage': instance.stage,
      'assessmentVersion': instance.assessmentVersion,
      'status': instance.status,
      'differentiator': instance.differentiator,
      'initiateDate': const TimestampConverter().toJson(instance.initiateDate),
      'recentUpdated':
          const TimestampConverter().toJson(instance.recentUpdated),
      'stages': instance.stages?.map((e) => e.toJson()).toList(),
    };
