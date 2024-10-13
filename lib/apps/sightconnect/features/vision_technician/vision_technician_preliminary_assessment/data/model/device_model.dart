/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:freezed_annotation/freezed_annotation.dart';

import '../enums/device_enums.dart';

part 'device_model.freezed.dart';
part 'device_model.g.dart';

@freezed
class DeviceModel with _$DeviceModel {
    const factory DeviceModel({
        int? id,
        String? identifier,
        String? displayName,
        String? definition,
        Status? status,
        TestCategory? testCategory,
        int? priority,
        AvailabilityStatus? availabilityStatus,
        String? manufacturer,
        DateTime? manufactureDate,
        DateTime? expirationDate,
        String? serialNumber,
        String? modelNumber,
        String? version,
        String? note,
        bool? isDeleted,
        DeviceObservation? deviceObservation,
    }) = _DeviceModel;

    factory DeviceModel.fromJson(Map<String, dynamic> json) => _$DeviceModelFromJson(json);
}

@freezed
class DeviceObservation with _$DeviceObservation {
    const factory DeviceObservation({
        int? id,
        UnitType? unitType,
        InputType? inputType,
        String? rangeMin,
        String? rangeMax,
        String? values,
    }) = _DeviceObservation;

    factory DeviceObservation.fromJson(Map<String, dynamic> json) => _$DeviceObservationFromJson(json);
}
