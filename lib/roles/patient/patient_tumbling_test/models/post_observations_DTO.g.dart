// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_observations_DTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostObservationsDTO _$$_PostObservationsDTOFromJson(
        Map<String, dynamic> json) =>
    _$_PostObservationsDTO(
      identifier: json['identifier'] as int?,
      value: json['value'] as String?,
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_PostObservationsDTOToJson(
        _$_PostObservationsDTO instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'value': instance.value,
      'score': instance.score,
    };
