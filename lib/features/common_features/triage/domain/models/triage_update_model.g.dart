// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'triage_update_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TriageUpdateModelImpl _$$TriageUpdateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TriageUpdateModelImpl(
      patientId: json['patientId'] as int?,
      diagnosticReportId: json['diagnosticReportId'] as int?,
      tenantCode: json['tenantCode'] as int?,
      organizationCode: json['organizationCode'] as int?,
      performer: (json['performer'] as List<dynamic>?)
          ?.map((e) => Performer.fromJson(e as Map<String, dynamic>))
          .toList(),
      assessmentCode: json['assessmentCode'] as int?,
      assessmentVersion: json['assessmentVersion'] as String?,
      issued: const TimestampConverter().fromJson(json['issued'] as String?),
      source: $enumDecodeNullable(_$SourceEnumMap, json['source']),
      sourceVersion: json['sourceVersion'] as String?,
      incompleteSection: (json['incompleteSection'] as List<dynamic>?)
          ?.map((e) => IncompleteTestModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      cummulativeScore: json['cummulativeScore'] as int?,
      score: (json['score'] as List<dynamic>?)
          ?.map((e) => Map<String, int>.from(e as Map))
          .toList(),
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

Map<String, dynamic> _$$TriageUpdateModelImplToJson(
        _$TriageUpdateModelImpl instance) =>
    <String, dynamic>{
      'patientId': instance.patientId,
      'diagnosticReportId': instance.diagnosticReportId,
      'tenantCode': instance.tenantCode,
      'organizationCode': instance.organizationCode,
      'performer': instance.performer?.map((e) => e.toJson()).toList(),
      'assessmentCode': instance.assessmentCode,
      'assessmentVersion': instance.assessmentVersion,
      'issued': const TimestampConverter().toJson(instance.issued),
      'source': _$SourceEnumMap[instance.source],
      'sourceVersion': instance.sourceVersion,
      'incompleteSection':
          instance.incompleteSection?.map((e) => e.toJson()).toList(),
      'cummulativeScore': instance.cummulativeScore,
      'score': instance.score,
      'imagingSelection':
          instance.imagingSelection?.map((e) => e.toJson()).toList(),
      'observations': instance.observations?.map((e) => e.toJson()).toList(),
      'questionResponse':
          instance.questionResponse?.map((e) => e.toJson()).toList(),
    };

const _$SourceEnumMap = {
  Source.PATIENT_APP: 'PATIENT_APP',
  Source.VT_APP: 'VT_APP',
  Source.VG_APP: 'VG_APP',
  Source.IVR: 'IVR',
  Source.IN_PERSON: 'IN_PERSON',
  Source.OTHERS: 'OTHERS',
};

_$PatchQuestionResponseModelImpl _$$PatchQuestionResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PatchQuestionResponseModelImpl(
      id: json['id'] as int?,
      action: $enumDecodeNullable(_$ActionEnumMap, json['action']),
      linkId: json['linkId'] as int?,
      score: (json['score'] as num?)?.toDouble(),
      answers: (json['answers'] as List<dynamic>?)
          ?.map((e) => PatchAnswerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PatchQuestionResponseModelImplToJson(
        _$PatchQuestionResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'action': _$ActionEnumMap[instance.action],
      'linkId': instance.linkId,
      'score': instance.score,
      'answers': instance.answers?.map((e) => e.toJson()).toList(),
    };

const _$ActionEnumMap = {
  Action.ADD: 'ADD',
  Action.REMOVE: 'REMOVE',
  Action.UPDATE: 'UPDATE',
};

_$PatchAnswerModelImpl _$$PatchAnswerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PatchAnswerModelImpl(
      id: json['id'] as int?,
      action: $enumDecodeNullable(_$ActionEnumMap, json['action']),
      value: json['value'] as String?,
      answerCode: json['answerCode'] as int?,
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PatchAnswerModelImplToJson(
        _$PatchAnswerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'action': _$ActionEnumMap[instance.action],
      'value': instance.value,
      'answerCode': instance.answerCode,
      'score': instance.score,
    };

_$PerformerImpl _$$PerformerImplFromJson(Map<String, dynamic> json) =>
    _$PerformerImpl(
      role: $enumDecodeNullable(_$PerformerRoleEnumMap, json['role']),
      identifier: json['identifier'] as int?,
    );

Map<String, dynamic> _$$PerformerImplToJson(_$PerformerImpl instance) =>
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

_$IncompleteTestModelImpl _$$IncompleteTestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$IncompleteTestModelImpl(
      testName: $enumDecodeNullable(_$TestTypeEnumMap, json['testName']),
    );

Map<String, dynamic> _$$IncompleteTestModelImplToJson(
        _$IncompleteTestModelImpl instance) =>
    <String, dynamic>{
      'testName': _$TestTypeEnumMap[instance.testName],
    };

const _$TestTypeEnumMap = {
  TestType.QUESTIONNAIRE: 'QUESTIONNAIRE',
  TestType.OBSERVATION: 'OBSERVATION',
  TestType.IMAGE: 'IMAGE',
};

_$PatchObservationsModelImpl _$$PatchObservationsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PatchObservationsModelImpl(
      id: json['id'] as int?,
      identifier: json['identifier'] as int?,
      action: $enumDecodeNullable(_$ActionEnumMap, json['action']),
      value: json['value'] as String?,
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PatchObservationsModelImplToJson(
        _$PatchObservationsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'identifier': instance.identifier,
      'action': _$ActionEnumMap[instance.action],
      'value': instance.value,
      'score': instance.score,
    };

_$PatchImagingSelectionModelImpl _$$PatchImagingSelectionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PatchImagingSelectionModelImpl(
      id: json['id'] as int?,
      identifier: json['identifier'] as int?,
      action: $enumDecodeNullable(_$ActionEnumMap, json['action']),
      endpoint: json['endpoint'] as String?,
      baseUrl: json['baseUrl'] as String?,
      score: (json['score'] as num?)?.toDouble(),
      fileId: json['fileId'] as String?,
    );

Map<String, dynamic> _$$PatchImagingSelectionModelImplToJson(
        _$PatchImagingSelectionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'identifier': instance.identifier,
      'action': _$ActionEnumMap[instance.action],
      'endpoint': instance.endpoint,
      'baseUrl': instance.baseUrl,
      'score': instance.score,
      'fileId': instance.fileId,
    };
