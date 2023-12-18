// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_timeline_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AssessmentTimelineViewModel _$$_AssessmentTimelineViewModelFromJson(
        Map<String, dynamic> json) =>
    _$_AssessmentTimelineViewModel(
      type: json['type'] as String?,
      title: json['title'] as String,
      subtitle: json['description'] as String,
      date: DateTime.parse(json['date'] as String),
      call: json['call'] as String,
      assessmentId: json['assessmentId'] as String,
      encounterId: json['encounterId'] as String,
    );

Map<String, dynamic> _$$_AssessmentTimelineViewModelToJson(
        _$_AssessmentTimelineViewModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'description': instance.subtitle,
      'date': instance.date.toIso8601String(),
      'call': instance.call,
      'assessmentId': instance.assessmentId,
      'encounterId': instance.encounterId,
    };
