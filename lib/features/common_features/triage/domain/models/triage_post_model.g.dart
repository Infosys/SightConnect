// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'triage_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TriagePostModel _$$_TriagePostModelFromJson(Map<String, dynamic> json) =>
    _$_TriagePostModel(
      id: json['id'] as int?,
      patientId: json['patientId'] as int?,
      encounterId: json['encounterId'] as int?,
      serviceType:
          $enumDecodeNullable(_$ServiceTypeEnumMap, json['serviceType']),
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

Map<String, dynamic> _$$_TriagePostModelToJson(_$_TriagePostModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'patientId': instance.patientId,
      'encounterId': instance.encounterId,
      'serviceType': _$ServiceTypeEnumMap[instance.serviceType],
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

_$_EncounterModel _$$_EncounterModelFromJson(Map<String, dynamic> json) =>
    _$_EncounterModel(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$_EncounterModelToJson(_$_EncounterModel instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$_PostTriageQuestionModel _$$_PostTriageQuestionModelFromJson(
        Map<String, dynamic> json) =>
    _$_PostTriageQuestionModel(
      id: json['id'] as int?,
      linkId: json['linkId'] as int?,
      score: (json['score'] as num?)?.toDouble(),
      answers: (json['answers'] as List<dynamic>?)
          ?.map(
              (e) => PostTriageAnswerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PostTriageQuestionModelToJson(
        _$_PostTriageQuestionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'linkId': instance.linkId,
      'score': instance.score,
      'answers': instance.answers?.map((e) => e.toJson()).toList(),
    };

_$_PostTriageAnswerModel _$$_PostTriageAnswerModelFromJson(
        Map<String, dynamic> json) =>
    _$_PostTriageAnswerModel(
      value: json['value'] as String?,
      id: json['id'] as int?,
      answerCode: json['answerCode'] as int?,
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_PostTriageAnswerModelToJson(
        _$_PostTriageAnswerModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'id': instance.id,
      'answerCode': instance.answerCode,
      'score': instance.score,
    };

_$_Performer _$$_PerformerFromJson(Map<String, dynamic> json) => _$_Performer(
      id: json['id'] as int?,
      role: $enumDecodeNullable(_$PerformerRoleEnumMap, json['role']),
      identifier: json['identifier'] as int?,
    );

Map<String, dynamic> _$$_PerformerToJson(_$_Performer instance) =>
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

_$_PostIncompleteTestModel _$$_PostIncompleteTestModelFromJson(
        Map<String, dynamic> json) =>
    _$_PostIncompleteTestModel(
      testName: $enumDecodeNullable(_$TestTypeEnumMap, json['testName']),
    );

Map<String, dynamic> _$$_PostIncompleteTestModelToJson(
        _$_PostIncompleteTestModel instance) =>
    <String, dynamic>{
      'testName': _$TestTypeEnumMap[instance.testName],
    };

const _$TestTypeEnumMap = {
  TestType.QUESTIONNAIRE: 'QUESTIONNAIRE',
  TestType.OBSERVATION: 'OBSERVATION',
  TestType.IMAGE: 'IMAGE',
};

_$_PostTriageObservationsModel _$$_PostTriageObservationsModelFromJson(
        Map<String, dynamic> json) =>
    _$_PostTriageObservationsModel(
      id: json['id'] as int?,
      identifier: json['identifier'] as int?,
      value: json['value'] as String?,
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_PostTriageObservationsModelToJson(
        _$_PostTriageObservationsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'identifier': instance.identifier,
      'value': instance.value,
      'score': instance.score,
    };

_$_PostTriageImagingSelectionModel _$$_PostTriageImagingSelectionModelFromJson(
        Map<String, dynamic> json) =>
    _$_PostTriageImagingSelectionModel(
      id: json['id'] as int?,
      identifier: json['identifier'] as int?,
      endpoint: json['endpoint'] as String?,
      baseUrl: json['baseUrl'] as String?,
      score: (json['score'] as num?)?.toDouble(),
      fileId: json['fileId'] as String?,
    );

Map<String, dynamic> _$$_PostTriageImagingSelectionModelToJson(
        _$_PostTriageImagingSelectionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'identifier': instance.identifier,
      'endpoint': instance.endpoint,
      'baseUrl': instance.baseUrl,
      'score': instance.score,
      'fileId': instance.fileId,
    };
