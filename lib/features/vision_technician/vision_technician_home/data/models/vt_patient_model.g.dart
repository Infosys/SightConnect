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
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      districtName: json['districtName'] as String?,
      townName: json['townName'] as String?,
      pincode: json['pincode'] as String?,
      encounterId: json['encounterId'] as int?,
      encounterStartDate: const TimestampConverter()
          .fromJson(json['encounterStartDate'] as String?),
      status: json['status'] as String?,
      category:
          $enumDecodeNullable(_$SeverityCategoryEnumMap, json['category']),
    );

Map<String, dynamic> _$$_VTPatientDtoToJson(_$_VTPatientDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'mobile': instance.mobile,
      'yearOfBirth': instance.yearOfBirth,
      'monthOfBirth': instance.monthOfBirth,
      'dayOfBirth': instance.dayOfBirth,
      'gender': _$GenderEnumMap[instance.gender],
      'districtName': instance.districtName,
      'townName': instance.townName,
      'pincode': instance.pincode,
      'encounterId': instance.encounterId,
      'encounterStartDate':
          const TimestampConverter().toJson(instance.encounterStartDate),
      'status': instance.status,
      'category': _$SeverityCategoryEnumMap[instance.category],
    };

const _$GenderEnumMap = {
  Gender.MALE: 'MALE',
  Gender.FEMALE: 'FEMALE',
  Gender.OTHERS: 'OTHERS',
};

const _$SeverityCategoryEnumMap = {
  SeverityCategory.CRITICAL: 'CRITICAL',
  SeverityCategory.EARLY: 'EARLY',
  SeverityCategory.ROUTINE: 'ROUTINE',
};
