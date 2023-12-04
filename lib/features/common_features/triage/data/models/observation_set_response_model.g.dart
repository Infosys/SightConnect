// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'observation_set_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ObservationSetResponseModel _$$_ObservationSetResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_ObservationSetResponseModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      version: json['version'] as String?,
      description: json['description'] as String?,
      creationDate:
          const TimestampConverter().fromJson(json['creationDate'] as String?),
      observationResponseDTO: json['observationResponseDTO'] == null
          ? null
          : ObservationResponseModel.fromJson(
              json['observationResponseDTO'] as Map<String, dynamic>),
      observationResponseDTOList:
          (json['observationResponseDTOList'] as List<dynamic>?)
              ?.map((e) =>
                  ObservationResponseModel.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$_ObservationSetResponseModelToJson(
        _$_ObservationSetResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'version': instance.version,
      'description': instance.description,
      'creationDate': const TimestampConverter().toJson(instance.creationDate),
      'observationResponseDTO': instance.observationResponseDTO,
      'observationResponseDTOList': instance.observationResponseDTOList,
    };
