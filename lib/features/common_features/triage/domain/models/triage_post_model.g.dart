// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'triage_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TriagePostModelImpl _$$TriagePostModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TriagePostModelImpl(
      id: json['id'] as int?,
      patientId: json['patientId'] as int?,
      encounterId: json['encounterId'] as int?,
      serviceType:
          $enumDecodeNullable(_$ServiceTypeEnumMap, json['serviceType']),
      tenantCode: json['tenantCode'] as int?,
      organizationCode: json['organizationCode'] as int?,
      performer: (json['performer'] as List<dynamic>?)
          ?.map((e) => Performer.fromJson(e as Map<String, dynamic>))
          .toList(),
      assessmentCode: json['assessmentCode'] as int?,
      assessmentVersion: json['assessmentVersion'] as String?,
      issued: const TimestampConverter().fromJson(json['issued'] as String?),
      userStartDate:
          const TimestampConverter().fromJson(json['userStartDate'] as String?),
      source: $enumDecodeNullable(_$SourceEnumMap, json['source']),
      sourceVersion: json['sourceVersion'] as String?,
      incompleteSection: (json['incompleteSection'] as List<dynamic>?)
          ?.map((e) =>
              PostIncompleteTestModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      cummulativeScore: json['cummulativeScore'] as int?,
      score: (json['score'] as List<dynamic>?)
          ?.map((e) => (e as Map<String, dynamic>).map(
                (k, e) => MapEntry(k, (e as num).toDouble()),
              ))
          .toList(),
      imagingSelection: (json['imagingSelection'] as List<dynamic>?)
          ?.map((e) => PostTriageImagingSelectionModel.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      observations: (json['observations'] as List<dynamic>?)
          ?.map((e) =>
              PostTriageObservationsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      questionResponse: (json['questionResponse'] as List<dynamic>?)
          ?.map((e) =>
              PostTriageQuestionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      subject: json['subject'] as int?,
      observationSeverity:
          $enumDecodeNullable(_$SeverityEnumMap, json['observationSeverity']),
      questionResponseSeverity: $enumDecodeNullable(
          _$SeverityEnumMap, json['questionResponseSeverity']),
      mediaSeverity:
          $enumDecodeNullable(_$SeverityEnumMap, json['mediaSeverity']),
      cumulativeSeverity:
          $enumDecodeNullable(_$SeverityEnumMap, json['cumulativeSeverity']),
      diagnosticReportDescription:
          json['diagnosticReportDescription'] as String?,
      questionResultDescription: json['questionResultDescription'] as String?,
      observationResultDescription:
          json['observationResultDescription'] as String?,
      mediaResultDescription: json['mediaResultDescription'] as String?,
      encounter: json['encounter'] == null
          ? null
          : EncounterModel.fromJson(json['encounter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TriagePostModelImplToJson(
        _$TriagePostModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'patientId': instance.patientId,
      'encounterId': instance.encounterId,
      'serviceType': _$ServiceTypeEnumMap[instance.serviceType],
      'tenantCode': instance.tenantCode,
      'organizationCode': instance.organizationCode,
      'performer': instance.performer?.map((e) => e.toJson()).toList(),
      'assessmentCode': instance.assessmentCode,
      'assessmentVersion': instance.assessmentVersion,
      'issued': const TimestampConverter().toJson(instance.issued),
      'userStartDate':
          const TimestampConverter().toJson(instance.userStartDate),
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
      'subject': instance.subject,
      'observationSeverity': _$SeverityEnumMap[instance.observationSeverity],
      'questionResponseSeverity':
          _$SeverityEnumMap[instance.questionResponseSeverity],
      'mediaSeverity': _$SeverityEnumMap[instance.mediaSeverity],
      'cumulativeSeverity': _$SeverityEnumMap[instance.cumulativeSeverity],
      'diagnosticReportDescription': instance.diagnosticReportDescription,
      'questionResultDescription': instance.questionResultDescription,
      'observationResultDescription': instance.observationResultDescription,
      'mediaResultDescription': instance.mediaResultDescription,
      'encounter': instance.encounter?.toJson(),
    };

const _$ServiceTypeEnumMap = {
  ServiceType.OPTOMETRY: 'OPTOMETRY',
};

const _$SourceEnumMap = {
  Source.PATIENT_APP: 'PATIENT_APP',
  Source.VT_APP: 'VT_APP',
  Source.VG_APP: 'VG_APP',
  Source.IVR: 'IVR',
  Source.IN_PERSION: 'IN_PERSION',
  Source.OTHERS: 'OTHERS',
};

const _$SeverityEnumMap = {
  Severity.ABNORMAL: 'ABNORMAL',
  Severity.HIGH: 'HIGH',
  Severity.LOW: 'LOW',
};

_$EncounterModelImpl _$$EncounterModelImplFromJson(Map<String, dynamic> json) =>
    _$EncounterModelImpl(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$EncounterModelImplToJson(
        _$EncounterModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$PostTriageQuestionModelImpl _$$PostTriageQuestionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostTriageQuestionModelImpl(
      id: json['id'] as int?,
      linkId: json['linkId'] as int?,
      score: (json['score'] as num?)?.toDouble(),
      answers: (json['answers'] as List<dynamic>?)
          ?.map(
              (e) => PostTriageAnswerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PostTriageQuestionModelImplToJson(
        _$PostTriageQuestionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'linkId': instance.linkId,
      'score': instance.score,
      'answers': instance.answers?.map((e) => e.toJson()).toList(),
    };

_$PostTriageAnswerModelImpl _$$PostTriageAnswerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostTriageAnswerModelImpl(
      value: json['value'] as String?,
      id: json['id'] as int?,
      answerCode: json['answerCode'] as int?,
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PostTriageAnswerModelImplToJson(
        _$PostTriageAnswerModelImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'id': instance.id,
      'answerCode': instance.answerCode,
      'score': instance.score,
    };

_$PerformerImpl _$$PerformerImplFromJson(Map<String, dynamic> json) =>
    _$PerformerImpl(
      id: json['id'] as int?,
      role: $enumDecodeNullable(_$PerformerRoleEnumMap, json['role']),
      identifier: json['identifier'] as int?,
    );

Map<String, dynamic> _$$PerformerImplToJson(_$PerformerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
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

_$PostIncompleteTestModelImpl _$$PostIncompleteTestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostIncompleteTestModelImpl(
      testName: $enumDecodeNullable(_$TestTypeEnumMap, json['testName']),
    );

Map<String, dynamic> _$$PostIncompleteTestModelImplToJson(
        _$PostIncompleteTestModelImpl instance) =>
    <String, dynamic>{
      'testName': _$TestTypeEnumMap[instance.testName],
    };

const _$TestTypeEnumMap = {
  TestType.QUESTIONNAIRE: 'QUESTIONNAIRE',
  TestType.OBSERVATION: 'OBSERVATION',
  TestType.IMAGE: 'IMAGE',
};

_$PostTriageObservationsModelImpl _$$PostTriageObservationsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostTriageObservationsModelImpl(
      id: json['id'] as int?,
      identifier: json['identifier'] as int?,
      value: json['value'] as String?,
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PostTriageObservationsModelImplToJson(
        _$PostTriageObservationsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'identifier': instance.identifier,
      'value': instance.value,
      'score': instance.score,
    };

_$PostTriageImagingSelectionModelImpl
    _$$PostTriageImagingSelectionModelImplFromJson(Map<String, dynamic> json) =>
        _$PostTriageImagingSelectionModelImpl(
          id: json['id'] as int?,
          identifier: json['identifier'] as int?,
          endpoint: json['endpoint'] as String?,
          baseUrl: json['baseUrl'] as String?,
          score: (json['score'] as num?)?.toDouble(),
          fileId: json['fileId'] as String?,
        );

Map<String, dynamic> _$$PostTriageImagingSelectionModelImplToJson(
        _$PostTriageImagingSelectionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'identifier': instance.identifier,
      'endpoint': instance.endpoint,
      'baseUrl': instance.baseUrl,
      'score': instance.score,
      'fileId': instance.fileId,
    };
