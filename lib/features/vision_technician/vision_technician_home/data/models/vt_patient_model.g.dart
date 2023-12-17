// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vt_patient_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VTPatientDto _$$_VTPatientDtoFromJson(Map<String, dynamic> json) =>
    _$_VTPatientDto(
      id: json['id'] as int?,
      name: json['name'] as String?,
      mobile: json['mobile'] as String?,
      yearOfBirth: json['yearOfBirth'] as String?,
      monthOfBirth: json['monthOfBirth'] as String?,
      dayOfBirth: json['dayOfBirth'] as String?,
      gender: json['gender'] as String?,
      districtName: json['districtName'] as String?,
      townName: json['townName'] as String?,
      pincode: json['pincode'] as String?,
      encounterId: json['encounterId'] as int?,
      encounterStartDate: json['encounterStartDate'] as String?,
      status: json['status'] as String?,
      category: json['category'] as String?,
    );

Map<String, dynamic> _$$_VTPatientDtoToJson(_$_VTPatientDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'mobile': instance.mobile,
      'yearOfBirth': instance.yearOfBirth,
      'monthOfBirth': instance.monthOfBirth,
      'dayOfBirth': instance.dayOfBirth,
      'gender': instance.gender,
      'districtName': instance.districtName,
      'townName': instance.townName,
      'pincode': instance.pincode,
      'encounterId': instance.encounterId,
      'encounterStartDate': instance.encounterStartDate,
      'status': instance.status,
      'category': instance.category,
    };
