// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_list_section_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MediaListSectionModel _$$_MediaListSectionModelFromJson(
        Map<String, dynamic> json) =>
    _$_MediaListSectionModel(
      id: json['id'] as int?,
      index: json['index'] as int?,
      description: json['description'] as String?,
      mediaList: json['mediaList'] == null
          ? null
          : MediaListModel.fromJson(json['mediaList'] as Map<String, dynamic>),
      assessment: json['assessment'] == null
          ? null
          : AssessmentModel.fromJson(
              json['assessment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MediaListSectionModelToJson(
        _$_MediaListSectionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'index': instance.index,
      'description': instance.description,
      'mediaList': instance.mediaList,
      'assessment': instance.assessment,
    };
