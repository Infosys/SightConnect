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
          $enumDecodeNullable(_$AssessmentNameEnumMap, json['assessmentName']),
      assessmentVersion: json['assessmentVersion'] as String?,
      forms: (json['forms'] as List<dynamic>?)
          ?.map((e) => Form.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FormDataModelImplToJson(_$FormDataModelImpl instance) =>
    <String, dynamic>{
      'encounterId': instance.encounterId,
      'tenantId': instance.tenantId,
      'assessmentName': _$AssessmentNameEnumMap[instance.assessmentName],
      'assessmentVersion': instance.assessmentVersion,
      'forms': instance.forms?.map((e) => e.toJson()).toList(),
    };

const _$AssessmentNameEnumMap = {
  AssessmentName.INTIMATION: 'INTIMATION',
  AssessmentName.PRELIMINARY: 'PRELIMINARY',
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
