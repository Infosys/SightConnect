// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AssessmentResponseModel _$$_AssessmentResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_AssessmentResponseModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      organizationCode: json['organizationCode'] as String?,
      condition: $enumDecodeNullable(_$ConditionEnumMap, json['condition']),
      assessmentType:
          $enumDecodeNullable(_$AssessmentTypeEnumMap, json['assessmentType']),
      organ: $enumDecodeNullable(_$OrganEnumMap, json['organ']),
      questionnaireSectionsResponseDTOList:
          (json['questionnaireSectionsResponseDTOList'] as List<dynamic>?)
              ?.map((e) => QuestionnaireSectionsResponseModel.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
      mediaListSectionResponseDTOList: (json['mediaListSectionResponseDTOList']
              as List<dynamic>?)
          ?.map((e) =>
              MediaListSectionResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      observationSetSectionResponseDTOList:
          (json['observationSetSectionResponseDTOList'] as List<dynamic>?)
              ?.map((e) => ObservationSetSectionResponseModel.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$_AssessmentResponseModelToJson(
        _$_AssessmentResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'organizationCode': instance.organizationCode,
      'condition': _$ConditionEnumMap[instance.condition],
      'assessmentType': _$AssessmentTypeEnumMap[instance.assessmentType],
      'organ': _$OrganEnumMap[instance.organ],
      'questionnaireSectionsResponseDTOList':
          instance.questionnaireSectionsResponseDTOList,
      'mediaListSectionResponseDTOList':
          instance.mediaListSectionResponseDTOList,
      'observationSetSectionResponseDTOList':
          instance.observationSetSectionResponseDTOList,
    };

const _$ConditionEnumMap = {
  Condition.VISION: 'VISION',
};

const _$AssessmentTypeEnumMap = {
  AssessmentType.TRIAGE: 'TRIAGE',
};

const _$OrganEnumMap = {
  Organ.EYE: 'EYE',
};
