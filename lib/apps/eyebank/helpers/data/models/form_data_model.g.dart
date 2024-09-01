// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FormDataModelImpl _$$FormDataModelImplFromJson(Map<String, dynamic> json) =>
    _$FormDataModelImpl(
      encounterId: (json['encounterId'] as num?)?.toInt(),
      tenantId: json['tenantId'] as String?,
      assessmentName:
          $enumDecodeNullable(_$EBStageNameEnumMap, json['assessmentName']),
      assessmentVersion: json['assessmentVersion'] as String?,
      forms: (json['forms'] as List<dynamic>?)
          ?.map((e) => Form.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FormDataModelImplToJson(_$FormDataModelImpl instance) =>
    <String, dynamic>{
      'encounterId': instance.encounterId,
      'tenantId': instance.tenantId,
      'assessmentName': _$EBStageNameEnumMap[instance.assessmentName],
      'assessmentVersion': instance.assessmentVersion,
      'forms': instance.forms?.map((e) => e.toJson()).toList(),
    };

const _$EBStageNameEnumMap = {
  EBStageName.UNDEFINED: 'UNDEFINED',
  EBStageName.DEATH_INTIMATION: 'DEATH_INTIMATION',
  EBStageName.DONOR_SCREENING: 'DONOR_SCREENING',
  EBStageName.CORNEA_RECOVERY: 'CORNEA_RECOVERY',
  EBStageName.SHIPPED_TO_EYEBANK: 'SHIPPED_TO_EYEBANK',
  EBStageName.RECEIVED_AT_EYEBANK: 'RECEIVED_AT_EYEBANK',
  EBStageName.SEROLOGY: 'SEROLOGY',
  EBStageName.CORNEA_EVALUATION: 'CORNEA_EVALUATION',
  EBStageName.IN_INVENTORY: 'IN_INVENTORY',
  EBStageName.CORNEA_REQUEST: 'CORNEA_REQUEST',
  EBStageName.CORNEA_ASSIGNMENT: 'CORNEA_ASSIGNMENT',
  EBStageName.CORNEA_CONFIRMATION: 'CORNEA_CONFIRMATION',
  EBStageName.SHIPPED_TO_SURGEON: 'SHIPPED_TO_SURGEON',
  EBStageName.RECEIVED_BY_SURGEON: 'RECEIVED_BY_SURGEON',
  EBStageName.CORNEA_TRANSPLANT: 'CORNEA_TRANSPLANT',
  EBStageName.ADVERSE_REACTION: 'ADVERSE_REACTION',
};

_$FormImpl _$$FormImplFromJson(Map<String, dynamic> json) => _$FormImpl(
      identifier: (json['identifier'] as num?)?.toInt(),
      identifierType:
          $enumDecodeNullable(_$IdentifierTypeEnumMap, json['identifierType']),
      formData: json['formData'] == null
          ? null
          : FormData.fromJson(json['formData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FormImplToJson(_$FormImpl instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'identifierType': _$IdentifierTypeEnumMap[instance.identifierType],
      'formData': instance.formData?.toJson(),
    };

const _$IdentifierTypeEnumMap = {
  IdentifierType.ENCOUNTER: 'ENCOUNTER',
  IdentifierType.SERVICE_REQUEST: 'SERVICE_REQUEST',
  IdentifierType.BDP: 'BDP',
};

_$FormDataImpl _$$FormDataImplFromJson(Map<String, dynamic> json) =>
    _$FormDataImpl();

Map<String, dynamic> _$$FormDataImplToJson(_$FormDataImpl instance) =>
    <String, dynamic>{};
