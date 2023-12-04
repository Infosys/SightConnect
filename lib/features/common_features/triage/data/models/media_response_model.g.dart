// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MediaResponseModel _$$_MediaResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_MediaResponseModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      type: $enumDecodeNullable(_$MediaTypeEnumMap, json['type']),
      maxSize: json['maxSize'] as int?,
      fileType: json['fileType'] as String?,
    );

Map<String, dynamic> _$$_MediaResponseModelToJson(
        _$_MediaResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'type': _$MediaTypeEnumMap[instance.type],
      'maxSize': instance.maxSize,
      'fileType': instance.fileType,
    };

const _$MediaTypeEnumMap = {
  MediaType.PHOTO: 'PHOTO',
  MediaType.VIDEO: 'VIDEO',
  MediaType.AUDIO: 'AUDIO',
};
