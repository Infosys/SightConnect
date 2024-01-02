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
      role:
          $enumDecodeNullable(_$MiniAppInjectionModelRoleEnumMap, json['role']),
    );

Map<String, dynamic> _$$MiniAppInjectionModelImplToJson(
        _$MiniAppInjectionModelImpl instance) =>
    <String, dynamic>{
      'action': _$MiniAppActionTypeEnumMap[instance.action],
      'parentPatientId': instance.parentPatientId,
      'mobileNumber': instance.mobileNumber,
      'role': _$MiniAppInjectionModelRoleEnumMap[instance.role],
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
