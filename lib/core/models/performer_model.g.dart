// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'performer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PerformerModelImpl _$$PerformerModelImplFromJson(Map<String, dynamic> json) =>
    _$PerformerModelImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      userType: json['userType'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      status: json['status'] as String?,
      profile: json['profile'] == null
          ? null
          : PatientModel.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PerformerModelImplToJson(
        _$PerformerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'userType': instance.userType,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'status': instance.status,
      'profile': instance.profile?.toJson(),
    };
