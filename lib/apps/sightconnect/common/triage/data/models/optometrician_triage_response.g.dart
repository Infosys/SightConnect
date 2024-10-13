/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'optometrician_triage_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OptometristTriageResponseImpl _$$OptometristTriageResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OptometristTriageResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      uuid: json['uuid'] as String?,
      patientId: json['patientId'] as String?,
      patientAge: (json['patientAge'] as num?)?.toInt(),
      patientGender:
          $enumDecodeNullable(_$GenderEnumMap, json['patientGender']),
      patientEducation: json['patientEducation'] as String?,
      patientProfession: json['patientProfession'] as String?,
      source: json['source'] as String?,
      reportId: (json['reportId'] as num?)?.toInt(),
      enounterId: (json['enounterId'] as num?)?.toInt(),
      organizationCode: (json['organizationCode'] as num?)?.toInt(),
      assessmentCode: (json['assessmentCode'] as num?)?.toInt(),
      assessmentStartTime: const TimestampConverter()
          .fromJson(json['assessmentStartTime'] as String?),
      assessmentEndTime: const TimestampConverter()
          .fromJson(json['assessmentEndTime'] as String?),
      physicalAssessmentStartTime: const TimestampConverter()
          .fromJson(json['physicalAssessmentStartTime'] as String?),
      physicalAssessmentEndTime: const TimestampConverter()
          .fromJson(json['physicalAssessmentEndTime'] as String?),
      capturedBy: json['capturedBy'] as String?,
      overallUrgency:
          $enumDecodeNullable(_$UrgencyEnumMap, json['overallUrgency']),
      questionnaireRemarks: json['questionnaireRemarks'] as String?,
      questionResponse: (json['questionResponse'] as List<dynamic>?)
          ?.map((e) => QuestionResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      questionnaireUrgency:
          $enumDecodeNullable(_$UrgencyEnumMap, json['questionnaireUrgency']),
      questionnaireReview: json['questionnaireReview'] as String?,
      observations: (json['observations'] as List<dynamic>?)
          ?.map((e) => Observation.fromJson(e as Map<String, dynamic>))
          .toList(),
      observationsRemarks: json['observationsRemarks'] as String?,
      observationsUrgency:
          $enumDecodeNullable(_$UrgencyEnumMap, json['observationsUrgency']),
      observationReview: json['observationReview'] as String?,
      mediaCapture: (json['mediaCapture'] as List<dynamic>?)
          ?.map((e) => MediaCapture.fromJson(e as Map<String, dynamic>))
          .toList(),
      eyeScanReview: json['eyeScanReview'] as String?,
      assessmentCompleted: json['assessmentCompleted'] as bool?,
      acuityTestcompleted: json['acuityTestcompleted'] as bool?,
      eyeScanCompleted: json['eyeScanCompleted'] as bool?,
      mobileAssessmentCompleted: json['mobileAssessmentCompleted'] as bool?,
      physicalAssessmentCompleted: json['physicalAssessmentCompleted'] as bool?,
      overallReview: json['overallReview'] as String?,
      questionnaireScore: json['questionnaireScore'] as String?,
      observationScore: json['observationScore'] as String?,
      eyeScanScore: json['eyeScanScore'] as String?,
      overallScore: json['overallScore'] as String?,
      assessmentAssistance: json['assessmentAssistance'] as bool?,
      visualAcuityAssistance: json['visualAcuityAssistance'] as bool?,
      visualAcuityAided: json['visualAcuityAided'] as bool?,
      eyeScanAssistance: json['eyeScanAssistance'] as bool?,
      redEye: json['redEye'] as bool?,
      cataract: json['cataract'] as bool?,
      redEyeOS: json['redEyeOS'] as bool?,
      redEyeOD: json['redEyeOD'] as bool?,
      cataractOD: json['cataractOD'] as bool?,
      cataractOS: json['cataractOS'] as bool?,
      languageUsed: json['languageUsed'] as String?,
      longDistanceUsed: json['longDistanceUsed'] as String?,
    );

Map<String, dynamic> _$$OptometristTriageResponseImplToJson(
        _$OptometristTriageResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'patientId': instance.patientId,
      'patientAge': instance.patientAge,
      'patientGender': _$GenderEnumMap[instance.patientGender],
      'patientEducation': instance.patientEducation,
      'patientProfession': instance.patientProfession,
      'source': instance.source,
      'reportId': instance.reportId,
      'enounterId': instance.enounterId,
      'organizationCode': instance.organizationCode,
      'assessmentCode': instance.assessmentCode,
      'assessmentStartTime':
          const TimestampConverter().toJson(instance.assessmentStartTime),
      'assessmentEndTime':
          const TimestampConverter().toJson(instance.assessmentEndTime),
      'physicalAssessmentStartTime': const TimestampConverter()
          .toJson(instance.physicalAssessmentStartTime),
      'physicalAssessmentEndTime':
          const TimestampConverter().toJson(instance.physicalAssessmentEndTime),
      'capturedBy': instance.capturedBy,
      'overallUrgency': _$UrgencyEnumMap[instance.overallUrgency],
      'questionnaireRemarks': instance.questionnaireRemarks,
      'questionResponse':
          instance.questionResponse?.map((e) => e.toJson()).toList(),
      'questionnaireUrgency': _$UrgencyEnumMap[instance.questionnaireUrgency],
      'questionnaireReview': instance.questionnaireReview,
      'observations': instance.observations?.map((e) => e.toJson()).toList(),
      'observationsRemarks': instance.observationsRemarks,
      'observationsUrgency': _$UrgencyEnumMap[instance.observationsUrgency],
      'observationReview': instance.observationReview,
      'mediaCapture': instance.mediaCapture?.map((e) => e.toJson()).toList(),
      'eyeScanReview': instance.eyeScanReview,
      'assessmentCompleted': instance.assessmentCompleted,
      'acuityTestcompleted': instance.acuityTestcompleted,
      'eyeScanCompleted': instance.eyeScanCompleted,
      'mobileAssessmentCompleted': instance.mobileAssessmentCompleted,
      'physicalAssessmentCompleted': instance.physicalAssessmentCompleted,
      'overallReview': instance.overallReview,
      'questionnaireScore': instance.questionnaireScore,
      'observationScore': instance.observationScore,
      'eyeScanScore': instance.eyeScanScore,
      'overallScore': instance.overallScore,
      'assessmentAssistance': instance.assessmentAssistance,
      'visualAcuityAssistance': instance.visualAcuityAssistance,
      'visualAcuityAided': instance.visualAcuityAided,
      'eyeScanAssistance': instance.eyeScanAssistance,
      'redEye': instance.redEye,
      'cataract': instance.cataract,
      'redEyeOS': instance.redEyeOS,
      'redEyeOD': instance.redEyeOD,
      'cataractOD': instance.cataractOD,
      'cataractOS': instance.cataractOS,
      'languageUsed': instance.languageUsed,
      'longDistanceUsed': instance.longDistanceUsed,
    };

const _$GenderEnumMap = {
  Gender.MALE: 'MALE',
  Gender.FEMALE: 'FEMALE',
  Gender.OTHERS: 'OTHERS',
  Gender.Male: 'Male',
  Gender.Female: 'Female',
  Gender.Others: 'Others',
  Gender.M: 'M',
  Gender.F: 'F',
  Gender.O: 'O',
};

const _$UrgencyEnumMap = {
  Urgency.RED: 'RED',
  Urgency.YELLOW: 'YELLOW',
  Urgency.GREEN: 'GREEN',
};

_$QuestionResponseImpl _$$QuestionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionResponseImpl(
      questionCode: (json['questionCode'] as num?)?.toInt(),
      response: json['response'] as bool?,
    );

Map<String, dynamic> _$$QuestionResponseImplToJson(
        _$QuestionResponseImpl instance) =>
    <String, dynamic>{
      'questionCode': instance.questionCode,
      'response': instance.response,
    };

_$ObservationImpl _$$ObservationImplFromJson(Map<String, dynamic> json) =>
    _$ObservationImpl(
      observationCode: (json['observationCode'] as num?)?.toInt(),
      response: (json['response'] as num?)?.toDouble(),
      observationIdentifier: json['observationIdentifier'] as String?,
      observationType: $enumDecodeNullable(
          _$ObservationCodeEnumMap, json['observationType']),
    );

Map<String, dynamic> _$$ObservationImplToJson(_$ObservationImpl instance) =>
    <String, dynamic>{
      'observationCode': instance.observationCode,
      'response': instance.response,
      'observationIdentifier': instance.observationIdentifier,
      'observationType': _$ObservationCodeEnumMap[instance.observationType],
    };

const _$ObservationCodeEnumMap = {
  ObservationCode.Eye: 'Eye',
  ObservationCode.Sight: 'Sight',
  ObservationCode.Testing: 'Testing',
  ObservationCode.LOGMAR_NEAR: 'LOGMAR_NEAR',
  ObservationCode.LOGMAR_DISTANT: 'LOGMAR_DISTANT',
};

_$MediaCaptureImpl _$$MediaCaptureImplFromJson(Map<String, dynamic> json) =>
    _$MediaCaptureImpl(
      mediaCode: (json['mediaCode'] as num?)?.toInt(),
      fileName: json['fileName'] as String?,
      fileType: json['fileType'] as String?,
      encodingType: json['encodingType'] as String?,
    );

Map<String, dynamic> _$$MediaCaptureImplToJson(_$MediaCaptureImpl instance) =>
    <String, dynamic>{
      'mediaCode': instance.mediaCode,
      'fileName': instance.fileName,
      'fileType': instance.fileType,
      'encodingType': instance.encodingType,
    };
