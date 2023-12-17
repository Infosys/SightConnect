// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'triage_update_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TriageUpdateModel _$$_TriageUpdateModelFromJson(Map<String, dynamic> json) =>
    _$_TriageUpdateModel(
      patientId: json['patientId'] as int?,
      diagnosticReportId: json['diagnosticReportId'] as int?,
      organizationCode: json['organizationCode'] as int?,
      performer: (json['performer'] as List<dynamic>?)
          ?.map((e) => Performer.fromJson(e as Map<String, dynamic>))
          .toList(),
      assementCode: json['assementCode'] as int?,
      assessmentVersion: json['assessmentVersion'] as String?,
      issued: json['issued'] == null
          ? null
          : DateTime.parse(json['issued'] as String),
      source: $enumDecodeNullable(_$SourceEnumMap, json['source']),
      sourceVersion: json['sourceVersion'] as String?,
      incompleteSection: (json['incompleteSection'] as List<dynamic>?)
          ?.map((e) => IncompleteTestModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      cummulativeScore: json['cummulativeScore'] as int?,
      score: (json['score'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as int),
      ),
      imagingSelection: (json['imagingSelection'] as List<dynamic>?)
          ?.map((e) =>
              PatchImagingSelectionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      observations: (json['observations'] as List<dynamic>?)
          ?.map(
              (e) => PatchObservationsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      questionResponse: (json['questionResponse'] as List<dynamic>?)
          ?.map((e) =>
              PatchQuestionResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TriageUpdateModelToJson(
        _$_TriageUpdateModel instance) =>
    <String, dynamic>{
      'patientId': instance.patientId,
      'diagnosticReportId': instance.diagnosticReportId,
      'organizationCode': instance.organizationCode,
      'performer': instance.performer,
      'assementCode': instance.assementCode,
      'assessmentVersion': instance.assessmentVersion,
      'issued': instance.issued?.toIso8601String(),
      'source': _$SourceEnumMap[instance.source],
      'sourceVersion': instance.sourceVersion,
      'incompleteSection': instance.incompleteSection,
      'cummulativeScore': instance.cummulativeScore,
      'score': instance.score,
      'imagingSelection': instance.imagingSelection,
      'observations': instance.observations,
      'questionResponse': instance.questionResponse,
    };

const _$SourceEnumMap = {
  Source.PATIENT_APP: 'PATIENT_APP',
  Source.VT_APP: 'VT_APP',
  Source.VG_APP: 'VG_APP',
  Source.IVR: 'IVR',
  Source.IN_PERSON: 'IN_PERSON',
  Source.OTHERS: 'OTHERS',
};

_$_PatchQuestionResponseModel _$$_PatchQuestionResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_PatchQuestionResponseModel(
      id: json['id'] as int?,
      action: $enumDecodeNullable(_$ActionEnumMap, json['action']),
      linkId: json['linkId'] as int?,
      score: (json['score'] as num?)?.toDouble(),
      answers: (json['answers'] as List<dynamic>?)
          ?.map((e) => PatchAnswerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PatchQuestionResponseModelToJson(
        _$_PatchQuestionResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'action': _$ActionEnumMap[instance.action],
      'linkId': instance.linkId,
      'score': instance.score,
      'answers': instance.answers,
    };

const _$ActionEnumMap = {
  Action.ADD: 'ADD',
  Action.REMOVE: 'REMOVE',
  Action.UPDATE: 'UPDATE',
};

_$_PatchAnswerModel _$$_PatchAnswerModelFromJson(Map<String, dynamic> json) =>
    _$_PatchAnswerModel(
      id: json['id'] as int?,
      action: $enumDecodeNullable(_$ActionEnumMap, json['action']),
      value: json['value'] as String?,
      answerCode: (json['answerCode'] as num?)?.toDouble(),
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_PatchAnswerModelToJson(_$_PatchAnswerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'action': _$ActionEnumMap[instance.action],
      'value': instance.value,
      'answerCode': instance.answerCode,
      'score': instance.score,
    };

_$_Performer _$$_PerformerFromJson(Map<String, dynamic> json) => _$_Performer(
      role: $enumDecodeNullable(_$PerformerRoleEnumMap, json['role']),
      identifier: json['identifier'] as int?,
    );

Map<String, dynamic> _$$_PerformerToJson(_$_Performer instance) =>
    <String, dynamic>{
      'role': _$PerformerRoleEnumMap[instance.role],
      'identifier': instance.identifier,
    };

const _$PerformerRoleEnumMap = {
  PerformerRole.MEDICAL_DOCTOR: 'MEDICAL_DOCTOR',
  PerformerRole.MEDICAL_PRACTITIONER: 'MEDICAL_PRACTITIONER',
  PerformerRole.VISION_TECHNICIAN: 'VISION_TECHNICIAN',
  PerformerRole.VISION_GUARDIAN: 'VISION_GUARDIAN',
  PerformerRole.NURSE: 'NURSE',
  PerformerRole.SYSTEM: 'SYSTEM',
  PerformerRole.PATIENT: 'PATIENT',
};

_$_IncompleteTestModel _$$_IncompleteTestModelFromJson(
        Map<String, dynamic> json) =>
    _$_IncompleteTestModel(
      testName: $enumDecodeNullable(_$TestTypeEnumMap, json['testName']),
    );

Map<String, dynamic> _$$_IncompleteTestModelToJson(
        _$_IncompleteTestModel instance) =>
    <String, dynamic>{
      'testName': _$TestTypeEnumMap[instance.testName],
    };

const _$TestTypeEnumMap = {
  TestType.QUESTIONNAIRE: 'QUESTIONNAIRE',
  TestType.OBSERVATION: 'OBSERVATION',
  TestType.IMAGE: 'IMAGE',
};

_$_PatchObservationsModel _$$_PatchObservationsModelFromJson(
        Map<String, dynamic> json) =>
    _$_PatchObservationsModel(
      id: json['id'] as int?,
      identifier: json['identifier'] as int?,
      action: $enumDecodeNullable(_$ActionEnumMap, json['action']),
      value: json['value'] as String?,
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_PatchObservationsModelToJson(
        _$_PatchObservationsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'identifier': instance.identifier,
      'action': _$ActionEnumMap[instance.action],
      'value': instance.value,
      'score': instance.score,
    };

_$_PatchImagingSelectionModel _$$_PatchImagingSelectionModelFromJson(
        Map<String, dynamic> json) =>
    _$_PatchImagingSelectionModel(
      id: json['id'] as int?,
      identifier: json['identifier'] as int?,
      action: $enumDecodeNullable(_$ActionEnumMap, json['action']),
      endpoint: json['endpoint'] as String?,
      baseUrl: json['baseUrl'] as String?,
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_PatchImagingSelectionModelToJson(
        _$_PatchImagingSelectionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'identifier': instance.identifier,
      'action': _$ActionEnumMap[instance.action],
      'endpoint': instance.endpoint,
      'baseUrl': instance.baseUrl,
      'score': instance.score,
    };
