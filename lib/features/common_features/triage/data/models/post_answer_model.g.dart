// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_answer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostAnswerModel _$$_PostAnswerModelFromJson(Map<String, dynamic> json) =>
    _$_PostAnswerModel(
      value: json['value'] as String?,
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_PostAnswerModelToJson(_$_PostAnswerModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'score': instance.score,
    };
