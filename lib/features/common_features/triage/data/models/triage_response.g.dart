// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'triage_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TriageResponse _$$_TriageResponseFromJson(Map<String, dynamic> json) =>
    _$_TriageResponse(
      patientId: json['patientId'] as int?,
      source: json['source'] as String?,
      organizationCode: json['organizationCode'] as int?,
      assessmentCode: json['assessmentCode'] as int?,
      assessmentStartTime: const TimestampConverter()
          .fromJson(json['assessmentStartTime'] as String?),
      assessmentEndTime: const TimestampConverter()
          .fromJson(json['assessmentEndTime'] as String?),
      capturedBy: json['capturedBy'] as String?,
      questionnaireRemarks: json['questionnaireRemarks'] as String?,
      questionResponse: (json['questionResponse'] as List<dynamic>?)
          ?.map((e) => QuestionResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      observations: (json['observations'] as List<dynamic>?)
          ?.map((e) => Observation.fromJson(e as Map<String, dynamic>))
          .toList(),
      mediaCapture: (json['mediaCapture'] as List<dynamic>?)
          ?.map((e) => MediaCapture.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TriageResponseToJson(_$_TriageResponse instance) =>
    <String, dynamic>{
      'patientId': instance.patientId,
      'source': instance.source,
      'organizationCode': instance.organizationCode,
      'assessmentCode': instance.assessmentCode,
      'assessmentStartTime':
          const TimestampConverter().toJson(instance.assessmentStartTime),
      'assessmentEndTime':
          const TimestampConverter().toJson(instance.assessmentEndTime),
      'capturedBy': instance.capturedBy,
      'questionnaireRemarks': instance.questionnaireRemarks,
      'questionResponse':
          instance.questionResponse?.map((e) => e.toJson()).toList(),
      'observations': instance.observations?.map((e) => e.toJson()).toList(),
      'mediaCapture': instance.mediaCapture?.map((e) => e.toJson()).toList(),
    };

_$_QuestionResponse _$$_QuestionResponseFromJson(Map<String, dynamic> json) =>
    _$_QuestionResponse(
      questionCode: json['questionCode'] as int?,
      response: json['response'] as bool?,
    );

Map<String, dynamic> _$$_QuestionResponseToJson(_$_QuestionResponse instance) =>
    <String, dynamic>{
      'questionCode': instance.questionCode,
      'response': instance.response,
    };

_$_Observation _$$_ObservationFromJson(Map<String, dynamic> json) =>
    _$_Observation(
      observationCode: json['observationCode'] as int?,
      response: (json['response'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ObservationToJson(_$_Observation instance) =>
    <String, dynamic>{
      'observationCode': instance.observationCode,
      'response': instance.response,
    };

_$_MediaCapture _$$_MediaCaptureFromJson(Map<String, dynamic> json) =>
    _$_MediaCapture(
      mediaCode: json['mediaCode'] as int?,
      fileName: json['fileName'] as String?,
      fileType: json['fileType'] as String?,
      encodingType: json['encodingType'] as String?,
    );

Map<String, dynamic> _$$_MediaCaptureToJson(_$_MediaCapture instance) =>
    <String, dynamic>{
      'mediaCode': instance.mediaCode,
      'fileName': instance.fileName,
      'fileType': instance.fileType,
      'encodingType': instance.encodingType,
    };
