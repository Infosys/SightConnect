// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ivr_call_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IvrCallHistoryModel _$$_IvrCallHistoryModelFromJson(
        Map<String, dynamic> json) =>
    _$_IvrCallHistoryModel(
      patientId: json['patientId'] as String,
      name: json['name'] as String,
      duration: json['duration'] as int?,
      logDate: DateTime.parse(json['logDate'] as String),
      status: json['status'] as String,
      calltype: json['calltype'] as String,
    );

Map<String, dynamic> _$$_IvrCallHistoryModelToJson(
        _$_IvrCallHistoryModel instance) =>
    <String, dynamic>{
      'patientId': instance.patientId,
      'name': instance.name,
      'duration': instance.duration,
      'logDate': instance.logDate.toIso8601String(),
      'status': instance.status,
      'calltype': instance.calltype,
    };
