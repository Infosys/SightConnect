// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volunteer_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VolunteerPostModelImpl _$$VolunteerPostModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VolunteerPostModelImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      userType: json['userType'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      status: $enumDecodeNullable(_$StatusEnumMap, json['status']),
      profile: json['profile'] == null
          ? null
          : PatientModel.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VolunteerPostModelImplToJson(
        _$VolunteerPostModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'userType': instance.userType,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'status': _$StatusEnumMap[instance.status],
      'profile': instance.profile?.toJson(),
    };

const _$StatusEnumMap = {
  Status.ACTIVE: 'ACTIVE',
  Status.INACTIVE: 'INACTIVE',
  Status.PENDING: 'PENDING',
  Status.EXPIRED: 'EXPIRED',
};
