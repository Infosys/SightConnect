// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_answer_DTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostAnswerDTO _$$_PostAnswerDTOFromJson(Map<String, dynamic> json) =>
    _$_PostAnswerDTO(
      value: json['value'] as String?,
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_PostAnswerDTOToJson(_$_PostAnswerDTO instance) =>
    <String, dynamic>{
      'value': instance.value,
      'score': instance.score,
    };
