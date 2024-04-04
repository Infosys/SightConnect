// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_timeline_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AssessmentTimelineViewModelImpl _$$AssessmentTimelineViewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AssessmentTimelineViewModelImpl(
      encounterId: json['encounterId'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      date: const TimestampConverter().fromJson(json['date'] as String?),
      assessmentId: json['assessmentId'] as int?,
      status: json['status'] as String?,
      source: $enumDecodeNullable(_$TimelineSourceEnumMap, json['source']),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$AssessmentTimelineViewModelImplToJson(
        _$AssessmentTimelineViewModelImpl instance) =>
    <String, dynamic>{
      'encounterId': instance.encounterId,
      'title': instance.title,
      'description': instance.description,
      'date': const TimestampConverter().toJson(instance.date),
      'assessmentId': instance.assessmentId,
      'status': instance.status,
      'source': _$TimelineSourceEnumMap[instance.source],
      'type': instance.type,
    };

const _$TimelineSourceEnumMap = {
  TimelineSource.PATIENT_APP: 'PATIENT_APP',
  TimelineSource.VT_APP: 'VT_APP',
  TimelineSource.VG_APP: 'VG_APP',
  TimelineSource.IVR: 'IVR',
  TimelineSource.IN_PERSION: 'IN_PERSION',
  TimelineSource.OTHERS: 'OTHERS',
};
