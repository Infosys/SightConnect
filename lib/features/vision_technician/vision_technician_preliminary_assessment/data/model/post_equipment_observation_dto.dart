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
