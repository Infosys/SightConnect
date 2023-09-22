// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artifacts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Artifacts _$$_ArtifactsFromJson(Map<String, dynamic> json) => _$_Artifacts(
      id: json['id'] as int,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ArtifactImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ArtifactsToJson(_$_Artifacts instance) =>
    <String, dynamic>{
      'id': instance.id,
      'images': instance.images,
    };

_$_ArtifactImage _$$_ArtifactImageFromJson(Map<String, dynamic> json) =>
    _$_ArtifactImage(
      id: json['id'] as int,
      timestamp:
          const TimestampConverter().fromJson(json['timestamp'] as String?),
      baseUrl: json['baseUrl'] as String?,
      path: json['path'] as String?,
      type: $enumDecodeNullable(_$EyeTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_ArtifactImageToJson(_$_ArtifactImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timestamp': const TimestampConverter().toJson(instance.timestamp),
      'baseUrl': instance.baseUrl,
      'path': instance.path,
      'type': _$EyeTypeEnumMap[instance.type],
    };

const _$EyeTypeEnumMap = {
  EyeType.LEFT: 'LEFT',
  EyeType.RIGHT: 'RIGHT',
  EyeType.BOTH: 'BOTH',
};
