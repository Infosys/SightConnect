// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_timeline_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AssessmentTimelineViewModel _$$_AssessmentTimelineViewModelFromJson(
        Map<String, dynamic> json) =>
    _$_AssessmentTimelineViewModel(
      type: json['type'] as String?,
      title: json['title'] as String?,
      subtitle: json['description'] as String?,
      date: const TimestampConverter().fromJson(json['date'] as String?),
      call: json['call'] as String?,
      assessmentId: json['assessmentId'] as int?,
      encounterId: json['encounterId'] as int?,
    );

Map<String, dynamic> _$$_AssessmentTimelineViewModelToJson(
        _$_AssessmentTimelineViewModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'description': instance.subtitle,
      'date': const TimestampConverter().toJson(instance.date),
      'call': instance.call,
      'assessmentId': instance.assessmentId,
      'encounterId': instance.encounterId,
    };
