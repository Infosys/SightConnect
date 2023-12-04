// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'observation_set_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ObservationSetModel _$$_ObservationSetModelFromJson(
        Map<String, dynamic> json) =>
    _$_ObservationSetModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      version: json['version'] as String?,
      description: json['description'] as String?,
      creationDate:
          const TimestampConverter().fromJson(json['creationDate'] as String?),
    );

Map<String, dynamic> _$$_ObservationSetModelToJson(
        _$_ObservationSetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'version': instance.version,
      'description': instance.description,
      'creationDate': const TimestampConverter().toJson(instance.creationDate),
    };
