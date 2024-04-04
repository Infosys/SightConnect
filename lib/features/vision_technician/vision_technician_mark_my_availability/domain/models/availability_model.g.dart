// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'availability_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvailabilityModelImpl _$$AvailabilityModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AvailabilityModelImpl(
      userId: json['userId'] as int,
      userType: json['userType'] as String?,
      mobile: json['mobile'] as String?,
      available: json['available'] as bool?,
    );

Map<String, dynamic> _$$AvailabilityModelImplToJson(
        _$AvailabilityModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userType': instance.userType,
      'mobile': instance.mobile,
      'available': instance.available,
    };
