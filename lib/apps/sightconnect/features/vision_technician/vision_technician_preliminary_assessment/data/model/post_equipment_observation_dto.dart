/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:freezed_annotation/freezed_annotation.dart';

import '../enums/post_equipments_enum.dart';

part 'post_equipment_observation_dto.freezed.dart';
part 'post_equipment_observation_dto.g.dart';

@freezed
class PostEquipmentObservationDto with _$PostEquipmentObservationDto {
    const factory PostEquipmentObservationDto({
        int? drId,
        int? encounterId,
        String? serviceProvider,
        List<EquipmentObservationValue>? equipmentObservationValues,
    }) = _PostEquipmentObservationDto;

    factory PostEquipmentObservationDto.fromJson(Map<String, dynamic> json) => _$PostEquipmentObservationDtoFromJson(json);
}

@freezed
class EquipmentObservationValue with _$EquipmentObservationValue {
    const factory EquipmentObservationValue({
        int? id,
        String? identifier,
        ObservationCategory? observationCategory,
        String? name,
        UnitType? unitType,
        List<String>? readings,
        ReadingType? readingType,
        SpecimenType? specimenType,
        Severity? severity,
        int? score,
        int? performer,
        String? serviceProviderUnit,
        String? additionalInfo,
    }) = _EquipmentObservationValue;

    factory EquipmentObservationValue.fromJson(Map<String, dynamic> json) => _$EquipmentObservationValueFromJson(json);
}
