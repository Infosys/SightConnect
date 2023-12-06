// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressModel _$$_AddressModelFromJson(Map<String, dynamic> json) =>
    _$_AddressModel(
      id: json['id'] as int?,
      line: json['line'] as String?,
      ward: json['ward'] as String?,
      town: json['town'] as String?,
      village: json['village'] as String?,
      subDistrict: json['subDistrict'] as String?,
      district: json['district'] as String?,
      state: json['state'] as String?,
      pinCode: json['pinCode'] as String?,
      label: json['label'] as String?,
      status: $enumDecodeNullable(_$StatusEnumMap, json['status']),
      primary: json['primary'] as bool?,
      deleted: json['deleted'] as bool?,
    );

Map<String, dynamic> _$$_AddressModelToJson(_$_AddressModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'line': instance.line,
      'ward': instance.ward,
      'town': instance.town,
      'village': instance.village,
      'subDistrict': instance.subDistrict,
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
