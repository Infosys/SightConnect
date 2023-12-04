// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MediaListResponseModel _$$_MediaListResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_MediaListResponseModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      version: json['version'] as String?,
      description: json['description'] as String?,
      creationDate:
          const TimestampConverter().fromJson(json['creationDate'] as String?),
      mediaResponseDTOList: (json['mediaResponseDTOList'] as List<dynamic>?)
          ?.map((e) => MediaResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MediaListResponseModelToJson(
        _$_MediaListResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'version': instance.version,
      'description': instance.description,
      'creationDate': const TimestampConverter().toJson(instance.creationDate),
      'mediaResponseDTOList': instance.mediaResponseDTOList,
    };
