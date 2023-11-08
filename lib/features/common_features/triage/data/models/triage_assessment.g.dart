// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'triage_assessment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TriageAssessment _$$_TriageAssessmentFromJson(Map<String, dynamic> json) =>
    _$_TriageAssessment(
      code: json['code'] as int?,
      name: json['name'] as String?,
      organizationCode: json['organizationCode'] as String?,
      condition: json['condition'] as String?,
      organ: json['organ'] as String?,
      questionnaireSections: (json['questionnaireSections'] as List<dynamic>?)
          ?.map((e) => QuestionnaireSection.fromJson(e as Map<String, dynamic>))
          .toList(),
      observationsSections: (json['observationsSections'] as List<dynamic>?)
          ?.map((e) => ObservationsSection.fromJson(e as Map<String, dynamic>))
          .toList(),
      mediaListSections: (json['mediaListSections'] as List<dynamic>?)
          ?.map((e) => MediaListSection.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TriageAssessmentToJson(_$_TriageAssessment instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'organizationCode': instance.organizationCode,
      'condition': instance.condition,
      'organ': instance.organ,
      'questionnaireSections': instance.questionnaireSections,
      'observationsSections': instance.observationsSections,
      'mediaListSections': instance.mediaListSections,
    };

_$_QuestionnaireSection _$$_QuestionnaireSectionFromJson(
        Map<String, dynamic> json) =>
    _$_QuestionnaireSection(
      questionnaire: (json['questionnaire'] as List<dynamic>?)
          ?.map((e) => Questionnaire.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_QuestionnaireSectionToJson(
        _$_QuestionnaireSection instance) =>
    <String, dynamic>{
      'questionnaire': instance.questionnaire,
    };

_$_Questionnaire _$$_QuestionnaireFromJson(Map<String, dynamic> json) =>
    _$_Questionnaire(
      description: json['description'] as String?,
      questions: (json['questions'] as List<dynamic>?)
          ?.map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_QuestionnaireToJson(_$_Questionnaire instance) =>
    <String, dynamic>{
      'description': instance.description,
      'questions': instance.questions,
    };

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      code: json['code'] as int?,
      statement: json['statement'] as String?,
      constraint: json['constraint'] as String?,
      defaultValue: json['defaultValue'] as String?,
      mandatory: json['mandatory'] as bool?,
      actionOn: (json['actionOn'] as List<dynamic>?)
          ?.map((e) => ActionOn.fromJson(e as Map<String, dynamic>))
          .toList(),
      weight: json['weight'] as int?,
    );

Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) =>
    <String, dynamic>{
      'code': instance.code,
      'statement': instance.statement,
      'constraint': instance.constraint,
      'defaultValue': instance.defaultValue,
      'mandatory': instance.mandatory,
      'actionOn': instance.actionOn,
      'weight': instance.weight,
    };

_$_ActionOn _$$_ActionOnFromJson(Map<String, dynamic> json) => _$_ActionOn(
      operator: json['operator'] as String?,
      actionType: json['actionType'] as String?,
      answer: json['answer'] as String?,
    );

Map<String, dynamic> _$$_ActionOnToJson(_$_ActionOn instance) =>
    <String, dynamic>{
      'operator': instance.operator,
      'actionType': instance.actionType,
      'answer': instance.answer,
    };

_$_ObservationsSection _$$_ObservationsSectionFromJson(
        Map<String, dynamic> json) =>
    _$_ObservationsSection(
      description: json['description'] as String?,
      individualMeasure: (json['individualMeasure'] as List<dynamic>?)
          ?.map((e) => IndividualMeasure.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ObservationsSectionToJson(
        _$_ObservationsSection instance) =>
    <String, dynamic>{
      'description': instance.description,
      'individualMeasure': instance.individualMeasure,
    };

_$_IndividualMeasure _$$_IndividualMeasureFromJson(Map<String, dynamic> json) =>
    _$_IndividualMeasure(
      observationCode: json['observationCode'] as int?,
      statement: json['statement'] as String?,
      valueType: json['valueType'] as String?,
    );

Map<String, dynamic> _$$_IndividualMeasureToJson(
        _$_IndividualMeasure instance) =>
    <String, dynamic>{
      'observationCode': instance.observationCode,
      'statement': instance.statement,
      'valueType': instance.valueType,
    };

_$_MediaListSection _$$_MediaListSectionFromJson(Map<String, dynamic> json) =>
    _$_MediaListSection(
      mediaCode: json['mediaCode'] as int?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      maxSize: json['maxSize'] as String?,
      fileTpe: json['fileTpe'] as String?,
    );

Map<String, dynamic> _$$_MediaListSectionToJson(_$_MediaListSection instance) =>
    <String, dynamic>{
      'mediaCode': instance.mediaCode,
      'description': instance.description,
      'type': instance.type,
      'maxSize': instance.maxSize,
      'fileTpe': instance.fileTpe,
    };
