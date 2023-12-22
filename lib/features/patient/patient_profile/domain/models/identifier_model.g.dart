// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identifier_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IdentifierModel _$$_IdentifierModelFromJson(Map<String, dynamic> json) =>
    _$_IdentifierModel(
      id: json['id'] as int?,
      type: $enumDecodeNullable(_$IdentifierTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_IdentifierModelToJson(_$_IdentifierModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$IdentifierTypeEnumMap[instance.type],
    };

const _$IdentifierTypeEnumMap = {
  IdentifierType.EMAIL: 'EMAIL',
  IdentifierType.MOBILE: 'MOBILE',
  IdentifierType.ABHA_ADDRESS: 'ABHA_ADDRESS',
  IdentifierType.ABHA_ID: 'ABHA_ID',
  IdentifierType.HPR_ID: 'HPR_ID',
  IdentifierType.COUNTER_ID: 'COUNTER_ID',
};
