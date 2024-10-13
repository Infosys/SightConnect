/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceModelImpl _$$DeviceModelImplFromJson(Map<String, dynamic> json) =>
    _$DeviceModelImpl(
      id: (json['id'] as num?)?.toInt(),
      identifier: json['identifier'] as String?,
      displayName: json['displayName'] as String?,
      definition: json['definition'] as String?,
      status: $enumDecodeNullable(_$StatusEnumMap, json['status']),
      testCategory:
          $enumDecodeNullable(_$TestCategoryEnumMap, json['testCategory']),
      priority: (json['priority'] as num?)?.toInt(),
      availabilityStatus: $enumDecodeNullable(
          _$AvailabilityStatusEnumMap, json['availabilityStatus']),
      manufacturer: json['manufacturer'] as String?,
      manufactureDate: json['manufactureDate'] == null
          ? null
          : DateTime.parse(json['manufactureDate'] as String),
      expirationDate: json['expirationDate'] == null
          ? null
          : DateTime.parse(json['expirationDate'] as String),
      serialNumber: json['serialNumber'] as String?,
      modelNumber: json['modelNumber'] as String?,
      version: json['version'] as String?,
      note: json['note'] as String?,
      isDeleted: json['isDeleted'] as bool?,
      deviceObservation: json['deviceObservation'] == null
          ? null
          : DeviceObservation.fromJson(
              json['deviceObservation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DeviceModelImplToJson(_$DeviceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'identifier': instance.identifier,
      'displayName': instance.displayName,
      'definition': instance.definition,
      'status': _$StatusEnumMap[instance.status],
      'testCategory': _$TestCategoryEnumMap[instance.testCategory],
      'priority': instance.priority,
      'availabilityStatus':
          _$AvailabilityStatusEnumMap[instance.availabilityStatus],
      'manufacturer': instance.manufacturer,
      'manufactureDate': instance.manufactureDate?.toIso8601String(),
      'expirationDate': instance.expirationDate?.toIso8601String(),
      'serialNumber': instance.serialNumber,
      'modelNumber': instance.modelNumber,
      'version': instance.version,
      'note': instance.note,
      'isDeleted': instance.isDeleted,
      'deviceObservation': instance.deviceObservation?.toJson(),
    };

const _$StatusEnumMap = {
  Status.ACTIVE: 'ACTIVE',
  Status.INACTIVE: 'INACTIVE',
  Status.ENTERED_IN_ERROR: 'ENTERED_IN_ERROR',
};

const _$TestCategoryEnumMap = {
  TestCategory.TRIAGE: 'TRIAGE',
};

const _$AvailabilityStatusEnumMap = {
  AvailabilityStatus.LOST: 'LOST',
  AvailabilityStatus.DAMAGED: 'DAMAGED',
  AvailabilityStatus.DESTROYED: 'DESTROYED',
  AvailabilityStatus.AVAILABLE: 'AVAILABLE',
};

_$DeviceObservationImpl _$$DeviceObservationImplFromJson(
        Map<String, dynamic> json) =>
    _$DeviceObservationImpl(
      id: (json['id'] as num?)?.toInt(),
      unitType: $enumDecodeNullable(_$UnitTypeEnumMap, json['unitType']),
      inputType: $enumDecodeNullable(_$InputTypeEnumMap, json['inputType']),
      rangeMin: json['rangeMin'] as String?,
      rangeMax: json['rangeMax'] as String?,
      values: json['values'] as String?,
    );

Map<String, dynamic> _$$DeviceObservationImplToJson(
        _$DeviceObservationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'unitType': _$UnitTypeEnumMap[instance.unitType],
      'inputType': _$InputTypeEnumMap[instance.inputType],
      'rangeMin': instance.rangeMin,
      'rangeMax': instance.rangeMax,
      'values': instance.values,
    };

const _$UnitTypeEnumMap = {
  UnitType.DIOPTER: 'DIOPTER',
  UnitType.LOGMAR: 'LOGMAR',
  UnitType.DECIMAL: 'DECIMAL',
  UnitType.SNELLEN: 'SNELLEN',
};

const _$InputTypeEnumMap = {
  InputType.RANGE: 'RANGE',
  InputType.TEXT: 'TEXT',
  InputType.NUMBER: 'NUMBER',
  InputType.DISCRETE: 'DISCRETE',
};
