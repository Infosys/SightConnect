// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_DTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressDTO _$$_AddressDTOFromJson(Map<String, dynamic> json) =>
    _$_AddressDTO(
      id: json['id'] as int?,
      line: json['line'] as String?,
      district: json['district'] as String?,
      state: json['state'] as String?,
      pinCode: json['pinCode'] as String?,
      label: json['label'] as String?,
      status: $enumDecodeNullable(_$StatusEnumMap, json['status']),
      primary: json['primary'] as bool?,
      deleted: json['deleted'] as bool?,
    );

Map<String, dynamic> _$$_AddressDTOToJson(_$_AddressDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'line': instance.line,
      'district': instance.district,
      'state': instance.state,
      'pinCode': instance.pinCode,
      'label': instance.label,
      'status': _$StatusEnumMap[instance.status],
      'primary': instance.primary,
      'deleted': instance.deleted,
    };

const _$StatusEnumMap = {
  Status.ACTIVE: 'ACTIVE',
  Status.INACTIVE: 'INACTIVE',
};
