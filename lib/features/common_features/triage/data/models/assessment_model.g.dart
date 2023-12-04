// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AssessmentModel _$$_AssessmentModelFromJson(Map<String, dynamic> json) =>
    _$_AssessmentModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      organizationCode: json['organizationCode'] as String?,
      condition: $enumDecodeNullable(_$ConditionEnumMap, json['condition']),
      assessmentType:
          $enumDecodeNullable(_$AssessmentTypeEnumMap, json['assessmentType']),
      organ: $enumDecodeNullable(_$OrganEnumMap, json['organ']),
      version: json['version'] as String?,
    );

Map<String, dynamic> _$$_AssessmentModelToJson(_$_AssessmentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'organizationCode': instance.organizationCode,
      'condition': _$ConditionEnumMap[instance.condition],
      'assessmentType': _$AssessmentTypeEnumMap[instance.assessmentType],
      'organ': _$OrganEnumMap[instance.organ],
      'version': instance.version,
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
