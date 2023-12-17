// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'triage_DTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TriageDTO _$$_TriageDTOFromJson(Map<String, dynamic> json) => _$_TriageDTO(
      patientId: json['patientId'] as int?,
      encounterId: json['encounterId'] as int?,
      serviceType: json['serviceType'] as String?,
      organizationCode: json['organizationCode'] as int?,
      performer: (json['performer'] as List<dynamic>?)
          ?.map((e) => PerformerDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      assessmentCode: json['assessmentCode'] as int?,
      assessmentVersion: json['assessmentVersion'] as String?,
      issued: json['issued'] as String?,
      userStartDate: json['userStartDate'] as String?,
      source: $enumDecodeNullable(_$SourceEnumMap, json['source']),
      sourceVersion: json['sourceVersion'] as String?,
      incompleteSection: (json['incompleteSection'] as List<dynamic>?)
          ?.map((e) => IncompleteTestDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      imagingSelection: (json['imagingSelection'] as List<dynamic>?)
          ?.map((e) =>
              PostImagingSelectionDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      observations: (json['observations'] as List<dynamic>?)
          ?.map((e) => PostObservationsDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      questionResponse: (json['questionResponse'] as List<dynamic>?)
          ?.map((e) =>
              PostQuestionResponseDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TriageDTOToJson(_$_TriageDTO instance) =>
    <String, dynamic>{
      'patientId': instance.patientId,
      'encounterId': instance.encounterId,
      'serviceType': instance.serviceType,
      'organizationCode': instance.organizationCode,
      'performer': instance.performer,
      'assessmentCode': instance.assessmentCode,
      'assessmentVersion': instance.assessmentVersion,
      'issued': instance.issued,
      'userStartDate': instance.userStartDate,
      'source': _$SourceEnumMap[instance.source],
      'sourceVersion': instance.sourceVersion,
      'incompleteSection': instance.incompleteSection,
      'imagingSelection': instance.imagingSelection,
      'observations': instance.observations,
      'questionResponse': instance.questionResponse,
    };

const _$SourceEnumMap = {
  Source.PATIENT_APP: 'PATIENT_APP',
  Source.VT_APP: 'VT_APP',
  Source.VG_APP: 'VG_APP',
  Source.IVR: 'IVR',
  Source.IN_PERSION: 'IN_PERSION',
  Source.OTHERS: 'OTHERS',
};
