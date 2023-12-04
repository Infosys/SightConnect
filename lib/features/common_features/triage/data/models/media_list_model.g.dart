// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MediaListModel _$$_MediaListModelFromJson(Map<String, dynamic> json) =>
    _$_MediaListModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      version: json['version'] as String?,
      description: json['description'] as String?,
      creationDate:
          const TimestampConverter().fromJson(json['creationDate'] as String?),
    );

Map<String, dynamic> _$$_MediaListModelToJson(_$_MediaListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'version': instance.version,
      'description': instance.description,
      'creationDate': const TimestampConverter().toJson(instance.creationDate),
    };
