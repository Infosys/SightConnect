// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_question_response_DTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostQuestionResponseDTO _$$_PostQuestionResponseDTOFromJson(
        Map<String, dynamic> json) =>
    _$_PostQuestionResponseDTO(
      linkId: json['linkId'] as int?,
      score: (json['score'] as num?)?.toDouble(),
      answer: (json['answer'] as List<dynamic>?)
          ?.map((e) => PostAnswerDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PostQuestionResponseDTOToJson(
        _$_PostQuestionResponseDTO instance) =>
    <String, dynamic>{
      'linkId': instance.linkId,
      'score': instance.score,
      'answer': instance.answer,
    };
