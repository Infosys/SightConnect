// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questionnaire_section_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionnaireSectionModel _$$_QuestionnaireSectionModelFromJson(
        Map<String, dynamic> json) =>
    _$_QuestionnaireSectionModel(
      id: json['id'] as int?,
      index: json['index'] as int?,
      description: json['description'] as String?,
      questionnaire: json['questionnaire'] == null
          ? null
          : QuestionnaireModel.fromJson(
              json['questionnaire'] as Map<String, dynamic>),
      assessment: json['assessment'] == null
          ? null
          : AssessmentModel.fromJson(
              json['assessment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_QuestionnaireSectionModelToJson(
        _$_QuestionnaireSectionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'index': instance.index,
      'description': instance.description,
      'questionnaire': instance.questionnaire,
      'assessment': instance.assessment,
    };
