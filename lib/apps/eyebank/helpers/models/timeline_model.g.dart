// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimelineModelImpl _$$TimelineModelImplFromJson(Map<String, dynamic> json) =>
    _$TimelineModelImpl(
      assessmentName:
          $enumDecodeNullable(_$AssessmentNameEnumMap, json['assessmentName']),
      assessmentVersion: json['assessmentVersion'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TimelineModelImplToJson(_$TimelineModelImpl instance) =>
    <String, dynamic>{
      'assessmentName': _$AssessmentNameEnumMap[instance.assessmentName],
      'assessmentVersion': instance.assessmentVersion,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

const _$AssessmentNameEnumMap = {
  AssessmentName.INTIMATION: 'INTIMATION',
  AssessmentName.PRELIMINARY: 'PRELIMINARY',
};

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      title: json['title'] as String?,
      initiateDate: json['initiateDate'] == null
          ? null
          : DateTime.parse(json['initiateDate'] as String),
      recentUpdated: json['recentUpdated'] == null
          ? null
          : DateTime.parse(json['recentUpdated'] as String),
      status: $enumDecodeNullable(_$EncounterStatusEnumMap, json['status']),
      serviceRequestId: (json['serviceRequestId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'initiateDate': instance.initiateDate?.toIso8601String(),
      'recentUpdated': instance.recentUpdated?.toIso8601String(),
      'status': _$EncounterStatusEnumMap[instance.status],
      'serviceRequestId': instance.serviceRequestId,
    };

const _$EncounterStatusEnumMap = {
  EncounterStatus.COMPLETED: 'COMPLETED',
  EncounterStatus.PENDING: 'PENDING',
  EncounterStatus.REJECTED: 'REJECTED',
  EncounterStatus.ACTIVE: 'ACTIVE',
};
