// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'availability_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AvailabilityModel _$$_AvailabilityModelFromJson(Map<String, dynamic> json) =>
    _$_AvailabilityModel(
      userId: json['userId'] as int,
      userType: json['userType'] as String,
      mobile: json['mobile'] as String,
      available: json['available'] as bool,
    );

Map<String, dynamic> _$$_AvailabilityModelToJson(
        _$_AvailabilityModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userType': instance.userType,
      'mobile': instance.mobile,
      'available': instance.available,
    };
