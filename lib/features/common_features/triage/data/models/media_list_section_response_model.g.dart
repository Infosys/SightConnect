// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_list_section_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MediaListSectionResponseModel _$$_MediaListSectionResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_MediaListSectionResponseModel(
      id: json['id'] as int?,
      index: json['index'] as int?,
      description: json['description'] as String?,
      supersection: json['supersection'] == null
          ? null
          : MediaListSectionModel.fromJson(
              json['supersection'] as Map<String, dynamic>),
      mediaListResponseDTOList: (json['mediaListResponseDTOList']
              as List<dynamic>?)
          ?.map(
              (e) => MediaListResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MediaListSectionResponseModelToJson(
        _$_MediaListSectionResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'index': instance.index,
      'description': instance.description,
      'supersection': instance.supersection,
      'mediaListResponseDTOList': instance.mediaListResponseDTOList,
    };
