/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'triage_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TriageResponseDtoImpl _$$TriageResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TriageResponseDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      assessmentCode: (json['assessmentCode'] as num?)?.toInt(),
      assessmentVersion: json['assessmentVersion'] as String?,
      category: $enumDecodeNullable(_$CategoryEnumMap, json['category']),
      code: $enumDecodeNullable(_$TestCodeEnumMap, json['code']),
      issued: const TimestampConverter().fromJson(json['issued'] as String?),
      userStartDate:
          const TimestampConverter().fromJson(json['userStartDate'] as String?),
      source: $enumDecodeNullable(_$SourceEnumMap, json['source']),
      status: $enumDecodeNullable(_$StatusEnumMap, json['status']),
      subject: (json['subject'] as num?)?.toInt(),
      observationSeverity:
          $enumDecodeNullable(_$SeverityEnumMap, json['observationSeverity']),
      questionResponseSeverity: $enumDecodeNullable(
          _$SeverityEnumMap, json['questionResponseSeverity']),
      mediaSeverity:
          $enumDecodeNullable(_$SeverityEnumMap, json['mediaSeverity']),
      cumulativeSeverity:
          $enumDecodeNullable(_$SeverityEnumMap, json['cumulativeSeverity']),
      sourceVersion: json['sourceVersion'] as String?,
      isDeleted: json['isDeleted'] as bool?,
      performerId: (json['performerId'] as num?)?.toInt(),
      performerRole:
          $enumDecodeNullable(_$PerformerRoleEnumMap, json['performerRole']),
      incompleteTests: (json['incompleteTests'] as List<dynamic>?)
          ?.map((e) => IncompleteTest.fromJson(e as Map<String, dynamic>))
          .toList(),
      responses: (json['responses'] as List<dynamic>?)
          ?.map((e) => Response.fromJson(e as Map<String, dynamic>))
          .toList(),
      observations: (json['observations'] as List<dynamic>?)
          ?.map((e) => Observation.fromJson(e as Map<String, dynamic>))
          .toList(),
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
      encounter: json['encounter'] == null
          ? null
          : Encounter.fromJson(json['encounter'] as Map<String, dynamic>),
      updateEndTime:
          const TimestampConverter().fromJson(json['updateEndTime'] as String?),
      diagnosticReportDescription:
          json['diagnosticReportDescription'] as String?,
      questionResultDescription: json['questionResultDescription'] as String?,
      observationResultDescription:
          json['observationResultDescription'] as String?,
      mediaResultDescription: json['mediaResultDescription'] as String?,
      deleted: json['deleted'] as bool?,
    );

Map<String, dynamic> _$$TriageResponseDtoImplToJson(
        _$TriageResponseDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'assessmentCode': instance.assessmentCode,
      'assessmentVersion': instance.assessmentVersion,
      'category': _$CategoryEnumMap[instance.category],
      'code': _$TestCodeEnumMap[instance.code],
      'issued': const TimestampConverter().toJson(instance.issued),
      'userStartDate':
          const TimestampConverter().toJson(instance.userStartDate),
      'source': _$SourceEnumMap[instance.source],
      'status': _$StatusEnumMap[instance.status],
      'subject': instance.subject,
      'observationSeverity': _$SeverityEnumMap[instance.observationSeverity],
      'questionResponseSeverity':
          _$SeverityEnumMap[instance.questionResponseSeverity],
      'mediaSeverity': _$SeverityEnumMap[instance.mediaSeverity],
      'cumulativeSeverity': _$SeverityEnumMap[instance.cumulativeSeverity],
      'sourceVersion': instance.sourceVersion,
      'isDeleted': instance.isDeleted,
      'performerId': instance.performerId,
      'performerRole': _$PerformerRoleEnumMap[instance.performerRole],
      'incompleteTests':
          instance.incompleteTests?.map((e) => e.toJson()).toList(),
      'responses': instance.responses?.map((e) => e.toJson()).toList(),
      'observations': instance.observations?.map((e) => e.toJson()).toList(),
      'media': instance.media?.map((e) => e.toJson()).toList(),
      'encounter': instance.encounter?.toJson(),
      'updateEndTime':
          const TimestampConverter().toJson(instance.updateEndTime),
      'diagnosticReportDescription': instance.diagnosticReportDescription,
      'questionResultDescription': instance.questionResultDescription,
      'observationResultDescription': instance.observationResultDescription,
      'mediaResultDescription': instance.mediaResultDescription,
      'deleted': instance.deleted,
    };

const _$CategoryEnumMap = {
  Category.EYE: 'EYE',
  Category.TRIAGE: 'TRIAGE',
  Category.OTHER: 'OTHER',
};

const _$TestCodeEnumMap = {
  TestCode.EYE_TEST: 'EYE_TEST',
};

const _$SourceEnumMap = {
  Source.PATIENT_APP: 'PATIENT_APP',
  Source.VT_APP: 'VT_APP',
  Source.VG_APP: 'VG_APP',
  Source.IVR: 'IVR',
  Source.IN_PERSION: 'IN_PERSION',
  Source.OTHERS: 'OTHERS',
};

const _$StatusEnumMap = {
  Status.REGISTERED: 'REGISTERED',
  Status.IN_PROGRESS: 'IN_PROGRESS',
  Status.COMPLETED: 'COMPLETED',
};

const _$SeverityEnumMap = {
  Severity.ABNORMAL: 'ABNORMAL',
  Severity.HIGH: 'HIGH',
  Severity.LOW: 'LOW',
};

const _$PerformerRoleEnumMap = {
  PerformerRole.MEDICAL_DOCTOR: 'MEDICAL_DOCTOR',
  PerformerRole.MEDICAL_PRACTITIONER: 'MEDICAL_PRACTITIONER',
  PerformerRole.VISION_TECHNICIAN: 'VISION_TECHNICIAN',
  PerformerRole.VISION_GUARDIAN: 'VISION_GUARDIAN',
  PerformerRole.NURSE: 'NURSE',
  PerformerRole.SYSTEM: 'SYSTEM',
  PerformerRole.PATIENT: 'PATIENT',
  PerformerRole.VOLUNTEER: 'VOLUNTEER',
};

_$IncompleteTestImpl _$$IncompleteTestImplFromJson(Map<String, dynamic> json) =>
    _$IncompleteTestImpl(
      id: (json['id'] as num?)?.toInt(),
      testName: $enumDecodeNullable(_$TestTypeEnumMap, json['testName']),
    );

Map<String, dynamic> _$$IncompleteTestImplToJson(
        _$IncompleteTestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'testName': _$TestTypeEnumMap[instance.testName],
    };

const _$TestTypeEnumMap = {
  TestType.QUESTIONNAIRE: 'QUESTIONNAIRE',
  TestType.OBSERVATION: 'OBSERVATION',
  TestType.IMAGE: 'IMAGE',
};

_$ResponseImpl _$$ResponseImplFromJson(Map<String, dynamic> json) =>
    _$ResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      authored:
          const TimestampConverter().fromJson(json['authored'] as String?),
      linkId: (json['linkId'] as num?)?.toInt(),
      score: (json['score'] as num?)?.toInt(),
      author: json['author'] == null
          ? null
          : Author.fromJson(json['author'] as Map<String, dynamic>),
      answers: (json['answers'] as List<dynamic>?)
          ?.map((e) => Answer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseImplToJson(_$ResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'authored': const TimestampConverter().toJson(instance.authored),
      'linkId': instance.linkId,
      'score': instance.score,
      'author': instance.author?.toJson(),
      'answers': instance.answers?.map((e) => e.toJson()).toList(),
    };

_$AuthorImpl _$$AuthorImplFromJson(Map<String, dynamic> json) => _$AuthorImpl(
      id: (json['id'] as num?)?.toInt(),
      type: $enumDecodeNullable(_$AuthorTypeEnumMap, json['type']),
      identifier: (json['identifier'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AuthorImplToJson(_$AuthorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$AuthorTypeEnumMap[instance.type],
      'identifier': instance.identifier,
    };

const _$AuthorTypeEnumMap = {
  AuthorType.CARE_PLAN: 'CARE_PLAN',
};

_$AnswerImpl _$$AnswerImplFromJson(Map<String, dynamic> json) => _$AnswerImpl(
      id: (json['id'] as num?)?.toInt(),
      score: (json['score'] as num?)?.toInt(),
      answerCode: (json['answerCode'] as num?)?.toInt(),
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$AnswerImplToJson(_$AnswerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'score': instance.score,
      'answerCode': instance.answerCode,
      'value': instance.value,
    };

_$ObservationImpl _$$ObservationImplFromJson(Map<String, dynamic> json) =>
    _$ObservationImpl(
      id: (json['id'] as num?)?.toInt(),
      performer: (json['performer'] as num?)?.toInt(),
      issued: json['issued'] as String?,
      identifier: (json['identifier'] as num?)?.toInt(),
      interpretation:
          $enumDecodeNullable(_$SeverityEnumMap, json['interpretation']),
      value: json['value'] as String?,
      score: (json['score'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ObservationImplToJson(_$ObservationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'performer': instance.performer,
      'issued': instance.issued,
      'identifier': instance.identifier,
      'interpretation': _$SeverityEnumMap[instance.interpretation],
      'value': instance.value,
      'score': instance.score,
    };

_$MediaImpl _$$MediaImplFromJson(Map<String, dynamic> json) => _$MediaImpl(
      id: (json['id'] as num?)?.toInt(),
      performer: (json['performer'] as num?)?.toInt(),
      issued: const TimestampConverter().fromJson(json['issued'] as String?),
      identifier: (json['identifier'] as num?)?.toInt(),
      baseUrl: json['baseUrl'] as String?,
      endpoint: json['endpoint'] as String?,
      bodySite: $enumDecodeNullable(_$BodySiteEnumMap, json['bodySite']),
      score: (json['score'] as num?)?.toInt(),
      fileId: json['fileId'] as String?,
    );

Map<String, dynamic> _$$MediaImplToJson(_$MediaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'performer': instance.performer,
      'issued': const TimestampConverter().toJson(instance.issued),
      'identifier': instance.identifier,
      'baseUrl': instance.baseUrl,
      'endpoint': instance.endpoint,
      'bodySite': _$BodySiteEnumMap[instance.bodySite],
      'score': instance.score,
      'fileId': instance.fileId,
    };

const _$BodySiteEnumMap = {
  BodySite.LEFT_EYE: 'LEFT_EYE',
  BodySite.RIGHT_EYE: 'RIGHT_EYE',
  BodySite.BOTH_EYES: 'BOTH_EYES',
};

_$EncounterImpl _$$EncounterImplFromJson(Map<String, dynamic> json) =>
    _$EncounterImpl(
      id: (json['id'] as num?)?.toInt(),
      uuid: json['uuid'] as String?,
      serviceProvider: (json['serviceProvider'] as num?)?.toInt(),
      subject: (json['subject'] as num?)?.toInt(),
      serviceType:
          $enumDecodeNullable(_$ServiceTypeEnumMap, json['serviceType']),
      status: $enumDecodeNullable(_$StatusEnumMap, json['status']),
      isDeleted: json['isDeleted'] as bool?,
      remarks: json['remarks'] as String?,
      performerReference: (json['performerReference'] as num?)?.toInt(),
      period: json['period'] == null
          ? null
          : Period.fromJson(json['period'] as Map<String, dynamic>),
      partOf: json['partOf'] as String?,
      mrn: json['mrn'] as String?,
    );

Map<String, dynamic> _$$EncounterImplToJson(_$EncounterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'serviceProvider': instance.serviceProvider,
      'subject': instance.subject,
      'serviceType': _$ServiceTypeEnumMap[instance.serviceType],
      'status': _$StatusEnumMap[instance.status],
      'isDeleted': instance.isDeleted,
      'remarks': instance.remarks,
      'performerReference': instance.performerReference,
      'period': instance.period?.toJson(),
      'partOf': instance.partOf,
      'mrn': instance.mrn,
    };

const _$ServiceTypeEnumMap = {
  ServiceType.OPTOMETRY: 'OPTOMETRY',
};

_$PeriodImpl _$$PeriodImplFromJson(Map<String, dynamic> json) => _$PeriodImpl(
      id: (json['id'] as num?)?.toInt(),
      start: const TimestampConverter().fromJson(json['start'] as String?),
      end: const TimestampConverter().fromJson(json['end'] as String?),
    );

Map<String, dynamic> _$$PeriodImplToJson(_$PeriodImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'start': const TimestampConverter().toJson(instance.start),
      'end': const TimestampConverter().toJson(instance.end),
    };
