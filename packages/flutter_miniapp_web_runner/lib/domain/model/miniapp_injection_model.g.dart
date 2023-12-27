// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'miniapp_injection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiniAppInjectionModelImpl _$$MiniAppInjectionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MiniAppInjectionModelImpl(
      action: $enumDecodeNullable(_$ActionEnumMap, json['action']),
      parentPatientId: json['parentPatientId'] as int?,
      mobileNumber: json['mobileNumber'] as String?,
    );

Map<String, dynamic> _$$MiniAppInjectionModelImplToJson(
        _$MiniAppInjectionModelImpl instance) =>
    <String, dynamic>{
      'action': _$ActionEnumMap[instance.action],
      'parentPatientId': instance.parentPatientId,
      'mobileNumber': instance.mobileNumber,
    };

const _$ActionEnumMap = {
  Action.REGISTER: 'REGISTER',
  Action.UPDATE: 'UPDATE',
  Action.ADD_MEMBER: 'ADD_MEMBER',
};
