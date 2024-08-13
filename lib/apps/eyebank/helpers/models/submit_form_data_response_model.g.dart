// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_form_data_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubmitFormDataResponseModelImpl _$$SubmitFormDataResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubmitFormDataResponseModelImpl(
      encounterId: (json['encounterId'] as num?)?.toInt(),
      forms: json['forms'] == null
          ? null
          : Forms.fromJson(json['forms'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SubmitFormDataResponseModelImplToJson(
        _$SubmitFormDataResponseModelImpl instance) =>
    <String, dynamic>{
      'encounterId': instance.encounterId,
      'forms': instance.forms?.toJson(),
    };

_$FormsImpl _$$FormsImplFromJson(Map<String, dynamic> json) => _$FormsImpl(
      identifier: (json['identifier'] as num?)?.toInt(),
      identifierType:
          $enumDecodeNullable(_$IdentifierTypeEnumMap, json['identifierType']),
      formData: json['formData'] == null
          ? null
          : FormData.fromJson(json['formData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FormsImplToJson(_$FormsImpl instance) =>
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
