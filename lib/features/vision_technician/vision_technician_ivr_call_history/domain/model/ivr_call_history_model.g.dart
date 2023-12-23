// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ivr_call_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IvrCallHistoryModel _$$_IvrCallHistoryModelFromJson(
        Map<String, dynamic> json) =>
    _$_IvrCallHistoryModel(
      patientId: json['callerIdentifier'] as String,
      name: json['callerName'] as String,
      mobile: json['callerNumber'] as String?,
      duration: json['duration'] as int?,
      logDate: DateTime.parse(json['logDate'] as String),
      status: json['status'] as String,
      direction: json['direction'] as String,
    );

Map<String, dynamic> _$$_IvrCallHistoryModelToJson(
        _$_IvrCallHistoryModel instance) =>
    <String, dynamic>{
      'callerIdentifier': instance.patientId,
      'callerName': instance.name,
      'callerNumber': instance.mobile,
      'duration': instance.duration,
      'logDate': instance.logDate.toIso8601String(),
      'status': instance.status,
      'direction': instance.direction,
    };
