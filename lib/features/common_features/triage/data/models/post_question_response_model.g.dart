// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_question_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostQuestionResponseModel _$$_PostQuestionResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_PostQuestionResponseModel(
      linkId: json['linkId'] as int?,
      score: (json['score'] as num?)?.toDouble(),
      answer: (json['answer'] as List<dynamic>?)
          ?.map((e) => PostAnswerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PostQuestionResponseModelToJson(
        _$_PostQuestionResponseModel instance) =>
    <String, dynamic>{
      'linkId': instance.linkId,
      'score': instance.score,
      'answer': instance.answer,
    };
