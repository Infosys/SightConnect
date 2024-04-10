// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'miniapp_injection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiniAppInjectionModelImpl _$$MiniAppInjectionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MiniAppInjectionModelImpl(
      action: $enumDecodeNullable(_$MiniAppActionTypeEnumMap, json['action']),
      parentPatientId: json['parentPatientId'] as String?,
      mobileNumber: json['mobileNumber'] as String?,
      token: json['token'] as String?,
      pincode: json['pincode'] as String?,
      role:
          $enumDecodeNullable(_$MiniAppInjectionModelRoleEnumMap, json['role']),
      miniAppEnv: $enumDecode(_$MiniAppEnvEnumMap, json['miniAppEnv']),
    );

Map<String, dynamic> _$$MiniAppInjectionModelImplToJson(
        _$MiniAppInjectionModelImpl instance) =>
    <String, dynamic>{
      'action': _$MiniAppActionTypeEnumMap[instance.action],
      'parentPatientId': instance.parentPatientId,
      'mobileNumber': instance.mobileNumber,
      'token': instance.token,
      'pincode': instance.pincode,
      'role': _$MiniAppInjectionModelRoleEnumMap[instance.role],
      'miniAppEnv': _$MiniAppEnvEnumMap[instance.miniAppEnv]!,
    };

const _$MiniAppActionTypeEnumMap = {
  MiniAppActionType.REGISTER: 'REGISTER',
  MiniAppActionType.UPDATE: 'UPDATE',
  MiniAppActionType.ADD_MEMBER: 'ADD_MEMBER',
};

const _$MiniAppInjectionModelRoleEnumMap = {
  MiniAppInjectionModelRole.VISION_TECHNICIAN: 'VISION_TECHNICIAN',
  MiniAppInjectionModelRole.PATIENT: 'PATIENT',
  MiniAppInjectionModelRole.OPTOMETRITIAN: 'OPTOMETRITIAN',
  MiniAppInjectionModelRole.VISION_GUARDIAN: 'VISION_GUARDIAN',
  MiniAppInjectionModelRole.OTHER: 'OTHER',
};

const _$MiniAppEnvEnumMap = {
  MiniAppEnv.DEV: 'DEV',
  MiniAppEnv.PROD: 'PROD',
  MiniAppEnv.STAGING: 'STAGING',
  MiniAppEnv.TESTING: 'TESTING',
};
