/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vt_patient_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VTPatientDtoImpl _$$VTPatientDtoImplFromJson(Map<String, dynamic> json) =>
    _$VTPatientDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      mobile: json['mobile'] as String?,
      yearOfBirth: json['yearOfBirth'] as String?,
      monthOfBirth: json['monthOfBirth'] as String?,
      dayOfBirth: json['dayOfBirth'] as String?,
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      districtName: json['districtName'] as String?,
      townName: json['townName'] as String?,
      pincode: json['pincode'] as String?,
      encounterId: (json['encounterId'] as num?)?.toInt(),
      encounterStartDate: const TimestampConverter()
          .fromJson(json['encounterStartDate'] as String?),
      status: json['status'] as String?,
      encounterStatus: $enumDecodeNullable(
          _$EncounterStatusEnumMap, json['encounterStatus']),
      category:
          $enumDecodeNullable(_$SeverityCategoryEnumMap, json['category']),
    );

Map<String, dynamic> _$$VTPatientDtoImplToJson(_$VTPatientDtoImpl instance) =>
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
      'encounterStatus': _$EncounterStatusEnumMap[instance.encounterStatus],
      'category': _$SeverityCategoryEnumMap[instance.category],
    };

const _$GenderEnumMap = {
  Gender.MALE: 'MALE',
  Gender.FEMALE: 'FEMALE',
  Gender.OTHERS: 'OTHERS',
};

const _$EncounterStatusEnumMap = {
  EncounterStatus.IN_PROGRESS: 'IN_PROGRESS',
  EncounterStatus.COMPLETED: 'COMPLETED',
  EncounterStatus.CANCELLED: 'CANCELLED',
};

const _$SeverityCategoryEnumMap = {
  SeverityCategory.CRITICAL: 'CRITICAL',
  SeverityCategory.EARLY: 'EARLY',
  SeverityCategory.ROUTINE: 'ROUTINE',
  SeverityCategory.URGENT: 'URGENT',
  SeverityCategory.ASAP: 'ASAP',
  SeverityCategory.STAT: 'STAT',
};
