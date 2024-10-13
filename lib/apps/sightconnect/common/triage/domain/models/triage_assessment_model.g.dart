/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'triage_assessment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TriageAssessmentImpl _$$TriageAssessmentImplFromJson(
        Map<String, dynamic> json) =>
    _$TriageAssessmentImpl(
      code: (json['code'] as num?)?.toInt(),
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

Map<String, dynamic> _$$TriageAssessmentImplToJson(
        _$TriageAssessmentImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'organizationCode': instance.organizationCode,
      'condition': instance.condition,
      'organ': instance.organ,
      'questionnaireSections':
          instance.questionnaireSections?.map((e) => e.toJson()).toList(),
      'observationsSections':
          instance.observationsSections?.map((e) => e.toJson()).toList(),
      'mediaListSections':
          instance.mediaListSections?.map((e) => e.toJson()).toList(),
    };

_$QuestionnaireSectionImpl _$$QuestionnaireSectionImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionnaireSectionImpl(
      questionnaire: (json['questionnaire'] as List<dynamic>?)
          ?.map((e) => Questionnaire.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuestionnaireSectionImplToJson(
        _$QuestionnaireSectionImpl instance) =>
    <String, dynamic>{
      'questionnaire': instance.questionnaire?.map((e) => e.toJson()).toList(),
    };

_$QuestionnaireImpl _$$QuestionnaireImplFromJson(Map<String, dynamic> json) =>
    _$QuestionnaireImpl(
      description: json['description'] as String?,
      questions: (json['questions'] as List<dynamic>?)
          ?.map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuestionnaireImplToJson(_$QuestionnaireImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'questions': instance.questions?.map((e) => e.toJson()).toList(),
    };

_$QuestionImpl _$$QuestionImplFromJson(Map<String, dynamic> json) =>
    _$QuestionImpl(
      id: (json['id'] as num?)?.toInt(),
      code: (json['code'] as num?)?.toInt(),
      statement: json['statement'] as String?,
      constraint: json['constraint'] as String?,
      defaultValue: json['defaultValue'] as String?,
      mandatory: json['mandatory'] as bool?,
      actionOn: (json['actionOn'] as List<dynamic>?)
          ?.map((e) => ActionOn.fromJson(e as Map<String, dynamic>))
          .toList(),
      weight: (json['weight'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$QuestionImplToJson(_$QuestionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'statement': instance.statement,
      'constraint': instance.constraint,
      'defaultValue': instance.defaultValue,
      'mandatory': instance.mandatory,
      'actionOn': instance.actionOn?.map((e) => e.toJson()).toList(),
      'weight': instance.weight,
    };

_$ActionOnImpl _$$ActionOnImplFromJson(Map<String, dynamic> json) =>
    _$ActionOnImpl(
      operator: json['operator'] as String?,
      actionType: json['actionType'] as String?,
      answer: json['answer'] as String?,
    );

Map<String, dynamic> _$$ActionOnImplToJson(_$ActionOnImpl instance) =>
    <String, dynamic>{
      'operator': instance.operator,
      'actionType': instance.actionType,
      'answer': instance.answer,
    };

_$ObservationsSectionImpl _$$ObservationsSectionImplFromJson(
        Map<String, dynamic> json) =>
    _$ObservationsSectionImpl(
      description: json['description'] as String?,
      individualMeasure: (json['individualMeasure'] as List<dynamic>?)
          ?.map((e) => IndividualMeasure.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ObservationsSectionImplToJson(
        _$ObservationsSectionImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'individualMeasure':
          instance.individualMeasure?.map((e) => e.toJson()).toList(),
    };

_$IndividualMeasureImpl _$$IndividualMeasureImplFromJson(
        Map<String, dynamic> json) =>
    _$IndividualMeasureImpl(
      observationCode: (json['observationCode'] as num?)?.toInt(),
      statement: json['statement'] as String?,
      valueType: json['valueType'] as String?,
    );

Map<String, dynamic> _$$IndividualMeasureImplToJson(
        _$IndividualMeasureImpl instance) =>
    <String, dynamic>{
      'observationCode': instance.observationCode,
      'statement': instance.statement,
      'valueType': instance.valueType,
    };

_$MediaListSectionImpl _$$MediaListSectionImplFromJson(
        Map<String, dynamic> json) =>
    _$MediaListSectionImpl(
      mediaCode: (json['mediaCode'] as num?)?.toInt(),
      description: json['description'] as String?,
      type: json['type'] as String?,
      maxSize: json['maxSize'] as String?,
      fileTpe: json['fileTpe'] as String?,
    );

Map<String, dynamic> _$$MediaListSectionImplToJson(
        _$MediaListSectionImpl instance) =>
    <String, dynamic>{
      'mediaCode': instance.mediaCode,
      'description': instance.description,
      'type': instance.type,
      'maxSize': instance.maxSize,
      'fileTpe': instance.fileTpe,
    };
