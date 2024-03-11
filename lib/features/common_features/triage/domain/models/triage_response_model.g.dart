// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'triage_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TriageResponseModel _$$_TriageResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_TriageResponseModel(
      patientId: json['patientId'] as int?,
      encounterId: json['encounterId'] as int?,
      serviceType:
          $enumDecodeNullable(_$ServiceTypeEnumMap, json['serviceType']),
      organizationCode: json['organizationCode'] as int?,
      tenantCode: json['tenantCode'] as int?,
      performer: (json['performer'] as List<dynamic>?)
          ?.map((e) => PerformerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      assessmentCode: json['assessmentCode'] as int?,
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

Map<String, dynamic> _$$_TriageResponseModelToJson(
        _$_TriageResponseModel instance) =>
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

_$_PostQuestionResponseModel _$$_PostQuestionResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_PostQuestionResponseModel(
      linkId: json['linkId'] as int?,
      score: (json['score'] as num?)?.toDouble(),
      answers: (json['answers'] as List<dynamic>?)
          ?.map((e) => PostAnswerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PostQuestionResponseModelToJson(
        _$_PostQuestionResponseModel instance) =>
    <String, dynamic>{
      'linkId': instance.linkId,
      'score': instance.score,
      'answers': instance.answers?.map((e) => e.toJson()).toList(),
    };

_$_PostAnswerModel _$$_PostAnswerModelFromJson(Map<String, dynamic> json) =>
    _$_PostAnswerModel(
      value: json['value'] as String?,
      score: (json['score'] as num?)?.toDouble(),
      answerCode: json['answerCode'] as int?,
    );

Map<String, dynamic> _$$_PostAnswerModelToJson(_$_PostAnswerModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'score': instance.score,
      'answerCode': instance.answerCode,
    };

_$_PerformerModel _$$_PerformerModelFromJson(Map<String, dynamic> json) =>
    _$_PerformerModel(
      role: $enumDecodeNullable(_$PerformerRoleEnumMap, json['role']),
      identifier: json['identifier'] as int?,
    );

Map<String, dynamic> _$$_PerformerModelToJson(_$_PerformerModel instance) =>
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
      id: json['id'] as int?,
      testName: $enumDecodeNullable(_$TestNameEnumMap, json['testName']),
    );

Map<String, dynamic> _$$_IncompleteTestModelToJson(
        _$_IncompleteTestModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'testName': _$TestNameEnumMap[instance.testName],
    };

const _$TestNameEnumMap = {
  TestName.QUESTIONNAIRE: 'QUESTIONNAIRE',
  TestName.OBSERVATION: 'OBSERVATION',
  TestName.IMAGING: 'IMAGING',
};

_$_PostImagingSelectionModel _$$_PostImagingSelectionModelFromJson(
        Map<String, dynamic> json) =>
    _$_PostImagingSelectionModel(
      identifier: json['identifier'] as int?,
      endpoint: json['endpoint'] as String?,
      baseUrl: json['baseUrl'] as String?,
      score: (json['score'] as num?)?.toDouble(),
      fileId: json['fileId'] as String?,
      bodySite: $enumDecodeNullable(_$BodySiteEnumMap, json['bodySite']),
    );

Map<String, dynamic> _$$_PostImagingSelectionModelToJson(
        _$_PostImagingSelectionModel instance) =>
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

_$_PostObservationsModel _$$_PostObservationsModelFromJson(
        Map<String, dynamic> json) =>
    _$_PostObservationsModel(
      identifier: json['identifier'] as int?,
      value: json['value'] as String?,
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_PostObservationsModelToJson(
        _$_PostObservationsModel instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'value': instance.value,
      'score': instance.score,
    };
