/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'triage_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TriageResponseModelImpl _$$TriageResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TriageResponseModelImpl(
      patientId: (json['patientId'] as num?)?.toInt(),
      encounterId: (json['encounterId'] as num?)?.toInt(),
      serviceType:
          $enumDecodeNullable(_$ServiceTypeEnumMap, json['serviceType']),
      organizationCode: (json['organizationCode'] as num?)?.toInt(),
      tenantCode: (json['tenantCode'] as num?)?.toInt(),
      performer: (json['performer'] as List<dynamic>?)
          ?.map((e) => PerformerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      assessmentCode: (json['assessmentCode'] as num?)?.toInt(),
      assessmentVersion: json['assessmentVersion'] as String?,
      issued: json['issued'] == null
          ? null
          : DateTime.parse(json['issued'] as String),
      userStartDate:
          const TimestampConverter().fromJson(json['userStartDate'] as String?),
      source: $enumDecodeNullable(_$SourceEnumMap, json['source']),
      sourceVersion: json['sourceVersion'] as String?,
      incompleteSection: (json['incompleteSection'] as List<dynamic>?)
          ?.map((e) => IncompleteTestModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      cummulativeScore: (json['cummulativeScore'] as num?)?.toDouble(),
      score: (json['score'] as List<dynamic>?)
          ?.map((e) => Map<String, int>.from(e as Map))
          .toList(),
      imagingSelection: (json['imagingSelection'] as List<dynamic>?)
          ?.map((e) =>
              PostImagingSelectionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      observations: (json['observations'] as List<dynamic>?)
          ?.map(
              (e) => PostObservationsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      questionResponse: (json['questionResponse'] as List<dynamic>?)
          ?.map((e) =>
              PostQuestionResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TriageResponseModelImplToJson(
        _$TriageResponseModelImpl instance) =>
    <String, dynamic>{
      'patientId': instance.patientId,
      'encounterId': instance.encounterId,
      'serviceType': _$ServiceTypeEnumMap[instance.serviceType],
      'organizationCode': instance.organizationCode,
      'tenantCode': instance.tenantCode,
      'performer': instance.performer?.map((e) => e.toJson()).toList(),
      'assessmentCode': instance.assessmentCode,
      'assessmentVersion': instance.assessmentVersion,
      'issued': instance.issued?.toIso8601String(),
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

_$PostQuestionResponseModelImpl _$$PostQuestionResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostQuestionResponseModelImpl(
      linkId: (json['linkId'] as num?)?.toInt(),
      score: (json['score'] as num?)?.toDouble(),
      answers: (json['answers'] as List<dynamic>?)
          ?.map((e) => PostAnswerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PostQuestionResponseModelImplToJson(
        _$PostQuestionResponseModelImpl instance) =>
    <String, dynamic>{
      'linkId': instance.linkId,
      'score': instance.score,
      'answers': instance.answers?.map((e) => e.toJson()).toList(),
    };

_$PostAnswerModelImpl _$$PostAnswerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostAnswerModelImpl(
      value: json['value'] as String?,
      score: (json['score'] as num?)?.toDouble(),
      answerCode: (json['answerCode'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PostAnswerModelImplToJson(
        _$PostAnswerModelImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'score': instance.score,
      'answerCode': instance.answerCode,
    };

_$PerformerModelImpl _$$PerformerModelImplFromJson(Map<String, dynamic> json) =>
    _$PerformerModelImpl(
      role: $enumDecodeNullable(_$PerformerRoleEnumMap, json['role']),
      identifier: (json['identifier'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PerformerModelImplToJson(
        _$PerformerModelImpl instance) =>
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
  PerformerRole.VOLUNTEER: 'VOLUNTEER',
};

_$IncompleteTestModelImpl _$$IncompleteTestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$IncompleteTestModelImpl(
      id: (json['id'] as num?)?.toInt(),
      testName: $enumDecodeNullable(_$TestNameEnumMap, json['testName']),
    );

Map<String, dynamic> _$$IncompleteTestModelImplToJson(
        _$IncompleteTestModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'testName': _$TestNameEnumMap[instance.testName],
    };

const _$TestNameEnumMap = {
  TestName.QUESTIONNAIRE: 'QUESTIONNAIRE',
  TestName.OBSERVATION: 'OBSERVATION',
  TestName.IMAGING: 'IMAGING',
};

_$PostImagingSelectionModelImpl _$$PostImagingSelectionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostImagingSelectionModelImpl(
      identifier: (json['identifier'] as num?)?.toInt(),
      endpoint: json['endpoint'] as String?,
      baseUrl: json['baseUrl'] as String?,
      score: (json['score'] as num?)?.toDouble(),
      fileId: json['fileId'] as String?,
      bodySite: $enumDecodeNullable(_$BodySiteEnumMap, json['bodySite']),
    );

Map<String, dynamic> _$$PostImagingSelectionModelImplToJson(
        _$PostImagingSelectionModelImpl instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'endpoint': instance.endpoint,
      'baseUrl': instance.baseUrl,
      'score': instance.score,
      'fileId': instance.fileId,
      'bodySite': _$BodySiteEnumMap[instance.bodySite],
    };

const _$BodySiteEnumMap = {
  BodySite.LEFT_EYE: 'LEFT_EYE',
  BodySite.RIGHT_EYE: 'RIGHT_EYE',
  BodySite.BOTH_EYES: 'BOTH_EYES',
};

_$PostObservationsModelImpl _$$PostObservationsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostObservationsModelImpl(
      identifier: (json['identifier'] as num?)?.toInt(),
      value: json['value'] as String?,
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PostObservationsModelImplToJson(
        _$PostObservationsModelImpl instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'value': instance.value,
      'score': instance.score,
    };
