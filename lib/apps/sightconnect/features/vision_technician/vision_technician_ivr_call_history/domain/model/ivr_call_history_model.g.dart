/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ivr_call_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IvrCallHistoryModelImpl _$$IvrCallHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$IvrCallHistoryModelImpl(
      patientId: json['callerIdentifier'] as String,
      name: json['callerName'] as String,
      mobile: json['callerNumber'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      logDate: DateTime.parse(json['logDate'] as String),
      status: json['status'] as String,
      direction: json['direction'] as String,
    );

Map<String, dynamic> _$$IvrCallHistoryModelImplToJson(
        _$IvrCallHistoryModelImpl instance) =>
    <String, dynamic>{
      'callerIdentifier': instance.patientId,
      'callerName': instance.name,
      'callerNumber': instance.mobile,
      'duration': instance.duration,
      'logDate': instance.logDate.toIso8601String(),
      'status': instance.status,
      'direction': instance.direction,
    };
