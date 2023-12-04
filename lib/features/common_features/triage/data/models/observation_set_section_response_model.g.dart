// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'observation_set_section_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ObservationSetSectionResponseModel
    _$$_ObservationSetSectionResponseModelFromJson(Map<String, dynamic> json) =>
        _$_ObservationSetSectionResponseModel(
          id: json['id'] as int?,
          index: json['index'] as int?,
          description: json['description'] as String?,
          observationSetResponseDTOList:
              (json['observationSetResponseDTOList'] as List<dynamic>?)
                  ?.map((e) => ObservationSetResponseModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList(),
          supersection: json['supersection'] == null
              ? null
              : ObservationSetSectionModel.fromJson(
                  json['supersection'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$_ObservationSetSectionResponseModelToJson(
        _$_ObservationSetSectionResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'index': instance.index,
      'description': instance.description,
      'observationSetResponseDTOList': instance.observationSetResponseDTOList,
      'supersection': instance.supersection,
    };
