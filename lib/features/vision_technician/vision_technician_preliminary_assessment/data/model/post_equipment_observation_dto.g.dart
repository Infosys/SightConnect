// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_equipment_observation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostEquipmentObservationDtoImpl _$$PostEquipmentObservationDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PostEquipmentObservationDtoImpl(
      drId: (json['drId'] as num?)?.toInt(),
      encounterId: (json['encounterId'] as num?)?.toInt(),
      serviceProvider: json['serviceProvider'] as String?,
      equipmentObservationValues:
          (json['equipmentObservationValues'] as List<dynamic>?)
              ?.map((e) =>
                  EquipmentObservationValue.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$PostEquipmentObservationDtoImplToJson(
        _$PostEquipmentObservationDtoImpl instance) =>
    <String, dynamic>{
      'drId': instance.drId,
      'encounterId': instance.encounterId,
      'serviceProvider': instance.serviceProvider,
      'equipmentObservationValues':
          instance.equipmentObservationValues?.map((e) => e.toJson()).toList(),
    };

_$EquipmentObservationValueImpl _$$EquipmentObservationValueImplFromJson(
        Map<String, dynamic> json) =>
    _$EquipmentObservationValueImpl(
      id: (json['id'] as num?)?.toInt(),
      identifier: json['identifier'] as String?,
      observationCategory: $enumDecodeNullable(
          _$ObservationCategoryEnumMap, json['observationCategory']),
      name: json['name'] as String?,
      unitType: $enumDecodeNullable(_$UnitTypeEnumMap, json['unitType']),
      readings: (json['readings'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      readingType:
          $enumDecodeNullable(_$ReadingTypeEnumMap, json['readingType']),
      specimenType:
          $enumDecodeNullable(_$SpecimenTypeEnumMap, json['specimenType']),
      severity: $enumDecodeNullable(_$SeverityEnumMap, json['severity']),
      score: (json['score'] as num?)?.toInt(),
      performer: (json['performer'] as num?)?.toInt(),
      serviceProviderUnit: json['serviceProviderUnit'] as String?,
      additionalInfo: json['additionalInfo'] as String?,
    );

Map<String, dynamic> _$$EquipmentObservationValueImplToJson(
        _$EquipmentObservationValueImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'identifier': instance.identifier,
      'observationCategory':
          _$ObservationCategoryEnumMap[instance.observationCategory],
      'name': instance.name,
      'unitType': _$UnitTypeEnumMap[instance.unitType],
      'readings': instance.readings,
      'readingType': _$ReadingTypeEnumMap[instance.readingType],
      'specimenType': _$SpecimenTypeEnumMap[instance.specimenType],
      'severity': _$SeverityEnumMap[instance.severity],
      'score': instance.score,
      'performer': instance.performer,
      'serviceProviderUnit': instance.serviceProviderUnit,
      'additionalInfo': instance.additionalInfo,
    };

const _$ObservationCategoryEnumMap = {
  ObservationCategory.DEVICE: 'DEVICE',
};

const _$UnitTypeEnumMap = {
  UnitType.DIOPTRE: 'DIOPTRE',
};

const _$ReadingTypeEnumMap = {
  ReadingType.UNIT: 'UNIT',
  ReadingType.DISCRETE: 'DISCRETE',
  ReadingType.RANGE: 'RANGE',
};

const _$SpecimenTypeEnumMap = {
  SpecimenType.LEFT_EYE: 'LEFT_EYE',
  SpecimenType.RIGHT_EYE: 'RIGHT_EYE',
  SpecimenType.BOTH_EYE: 'BOTH_EYE',
};

const _$SeverityEnumMap = {
  Severity.ABNORMAL: 'ABNORMAL',
  Severity.HIGH: 'HIGH',
  Severity.LOW: 'LOW',
};
