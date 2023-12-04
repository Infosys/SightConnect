// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questionnaire_sections_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionnaireSectionsResponseModel
    _$$_QuestionnaireSectionsResponseModelFromJson(Map<String, dynamic> json) =>
        _$_QuestionnaireSectionsResponseModel(
          id: json['id'] as int?,
          index: json['index'] as int?,
          description: json['description'] as String?,
          supersection: json['supersection'] == null
              ? null
              : QuestionnaireSectionModel.fromJson(
                  json['supersection'] as Map<String, dynamic>),
          questionnaireResponseDTOList:
              (json['questionnaireResponseDTOList'] as List<dynamic>?)
                  ?.map((e) => QuestionnaireResponseModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList(),
        );

Map<String, dynamic> _$$_QuestionnaireSectionsResponseModelToJson(
        _$_QuestionnaireSectionsResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'index': instance.index,
      'description': instance.description,
      'supersection': instance.supersection,
      'questionnaireResponseDTOList': instance.questionnaireResponseDTOList,
    };
