// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'observation_set_section_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ObservationSetSectionModel _$$_ObservationSetSectionModelFromJson(
        Map<String, dynamic> json) =>
    _$_ObservationSetSectionModel(
      id: json['id'] as int?,
      index: json['index'] as int?,
      description: json['description'] as String?,
      observationSet: json['observationSet'] == null
          ? null
          : ObservationSetModel.fromJson(
              json['observationSet'] as Map<String, dynamic>),
      assessment: json['assessment'] == null
          ? null
          : AssessmentModel.fromJson(
              json['assessment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ObservationSetSectionModelToJson(
        _$_ObservationSetSectionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'index': instance.index,
      'description': instance.description,
      'observationSet': instance.observationSet,
      'assessment': instance.assessment,
    };
