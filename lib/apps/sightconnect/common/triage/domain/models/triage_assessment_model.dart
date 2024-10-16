/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:freezed_annotation/freezed_annotation.dart';

part 'triage_assessment_model.freezed.dart';
part 'triage_assessment_model.g.dart';

@freezed
class TriageAssessment with _$TriageAssessment {
  const factory TriageAssessment({
    int? code,
    String? name,
    String? organizationCode,//used in optometrist persona
    String? condition,
    String? organ,
    List<QuestionnaireSection>? questionnaireSections,
    List<ObservationsSection>? observationsSections,
    List<MediaListSection>? mediaListSections,
  }) = _TriageAssessment;

  factory TriageAssessment.fromJson(Map<String, dynamic> json) =>
      _$TriageAssessmentFromJson(json);
}

@freezed
class QuestionnaireSection with _$QuestionnaireSection {
  const factory QuestionnaireSection({
    List<Questionnaire>? questionnaire,
  }) = _QuestionnaireSection;

  factory QuestionnaireSection.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireSectionFromJson(json);
}

@freezed
class Questionnaire with _$Questionnaire {
  const factory Questionnaire({
    String? description,
    List<Question>? questions,
  }) = _Questionnaire;

  factory Questionnaire.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireFromJson(json);
}

@freezed
class Question with _$Question {
  const factory Question({
    int? id,
    int? code,
    String? statement,
    String? constraint,
    String? defaultValue,
    bool? mandatory,
    List<ActionOn>? actionOn,
    int? weight,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}

@freezed
class ActionOn with _$ActionOn {
  const factory ActionOn({
    String? operator,
    String? actionType,
    String? answer,
  }) = _ActionOn;

  factory ActionOn.fromJson(Map<String, dynamic> json) =>
      _$ActionOnFromJson(json);
}

@freezed
class ObservationsSection with _$ObservationsSection {
  const factory ObservationsSection({
    String? description,
    List<IndividualMeasure>? individualMeasure,
  }) = _ObservationsSection;

  factory ObservationsSection.fromJson(Map<String, dynamic> json) =>
      _$ObservationsSectionFromJson(json);
}

@freezed
class IndividualMeasure with _$IndividualMeasure {
  const factory IndividualMeasure({
    int? observationCode,
    String? statement,
    String? valueType,
  }) = _IndividualMeasure;

  factory IndividualMeasure.fromJson(Map<String, dynamic> json) =>
      _$IndividualMeasureFromJson(json);
}

@freezed
class MediaListSection with _$MediaListSection {
  const factory MediaListSection({
    int? mediaCode,
    String? description,
    String? type,
    String? maxSize,
    String? fileTpe,
  }) = _MediaListSection;

  factory MediaListSection.fromJson(Map<String, dynamic> json) =>
      _$MediaListSectionFromJson(json);
}
