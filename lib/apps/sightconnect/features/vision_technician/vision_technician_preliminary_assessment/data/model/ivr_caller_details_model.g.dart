// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ivr_caller_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IVRCallerDetailsModelImpl _$$IVRCallerDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$IVRCallerDetailsModelImpl(
      agentMobile: json['agentMobile'] as String?,
      callerId: json['callerId'] as String?,
      callerName: json['callerName'] as String?,
      callerNumber: json['callerNumber'] as String?,
    );

Map<String, dynamic> _$$IVRCallerDetailsModelImplToJson(
        _$IVRCallerDetailsModelImpl instance) =>
    <String, dynamic>{
      'agentMobile': instance.agentMobile,
      'callerId': instance.callerId,
      'callerName': instance.callerName,
      'callerNumber': instance.callerNumber,
    };
