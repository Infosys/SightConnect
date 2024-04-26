// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceDTOImpl _$$DeviceDTOImplFromJson(Map<String, dynamic> json) =>
    _$DeviceDTOImpl(
      id: json['id'] as int?,
      identifier: json['identifier'] as String?,
      displayName: json['displayName'] as String?,
      definition: json['definition'] as String?,
      status: $enumDecodeNullable(_$StatusEnumMap, json['status']),
      testCategory:
          $enumDecodeNullable(_$TestCategoryEnumMap, json['testCategory']),
      priority: json['priority'] as int?,
      availabilityStatus: $enumDecodeNullable(
          _$AvailabilityStatusEnumMap, json['availabilityStatus']),
      manufacturer: json['manufacturer'] as String?,
      manufactureDate: json['manufactureDate'] as String?,
      expirationDate: json['expirationDate'] as String?,
      serialNumber: json['serialNumber'] as String?,
      modelNumber: json['modelNumber'] as String?,
      version: json['version'] as String?,
      note: json['note'] as String?,
      isDeleted: json['isDeleted'] as bool?,
    );

Map<String, dynamic> _$$DeviceDTOImplToJson(_$DeviceDTOImpl instance) =>
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
      'manufactureDate': instance.manufactureDate,
      'expirationDate': instance.expirationDate,
      'serialNumber': instance.serialNumber,
      'modelNumber': instance.modelNumber,
      'version': instance.version,
      'note': instance.note,
      'isDeleted': instance.isDeleted,
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
