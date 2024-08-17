// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eb_timeline_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EBTimelineModelImpl _$$EBTimelineModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EBTimelineModelImpl(
      serviceRequestId: (json['serviceRequestId'] as num?)?.toInt(),
      assessmentName: json['assessmentName'] as String?,
      stageName: json['stageName'] as String?,
      assessmentVersion: json['assessmentVersion'] as String?,
      status: json['status'] as String?,
      initiateDate:
          const TimestampConverter().fromJson(json['initiateDate'] as String?),
      recentUpdated:
          const TimestampConverter().fromJson(json['recentUpdated'] as String?),
      subStages: (json['subStages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$EBTimelineModelImplToJson(
        _$EBTimelineModelImpl instance) =>
    <String, dynamic>{
      'serviceRequestId': instance.serviceRequestId,
      'assessmentName': instance.assessmentName,
      'stageName': instance.stageName,
      'assessmentVersion': instance.assessmentVersion,
      'status': instance.status,
      'initiateDate': const TimestampConverter().toJson(instance.initiateDate),
      'recentUpdated':
          const TimestampConverter().toJson(instance.recentUpdated),
      'subStages': instance.subStages,
    };
