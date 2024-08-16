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
      initiateDate: json['initiateDate'] == null
          ? null
          : DateTime.parse(json['initiateDate'] as String),
      recentUpdated: json['recentUpdated'] == null
          ? null
          : DateTime.parse(json['recentUpdated'] as String),
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
      'initiateDate': instance.initiateDate?.toIso8601String(),
      'recentUpdated': instance.recentUpdated?.toIso8601String(),
      'subStages': instance.subStages,
    };
