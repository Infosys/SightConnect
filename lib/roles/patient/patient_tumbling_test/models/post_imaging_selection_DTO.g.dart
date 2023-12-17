// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_imaging_selection_DTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostImagingSelectionDTO _$$_PostImagingSelectionDTOFromJson(
        Map<String, dynamic> json) =>
    _$_PostImagingSelectionDTO(
      identifier: json['identifier'] as int?,
      endpoint: json['endpoint'] as String?,
      baseUrl: json['baseUrl'] as String?,
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_PostImagingSelectionDTOToJson(
        _$_PostImagingSelectionDTO instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'endpoint': instance.endpoint,
      'baseUrl': instance.baseUrl,
      'score': instance.score,
    };
