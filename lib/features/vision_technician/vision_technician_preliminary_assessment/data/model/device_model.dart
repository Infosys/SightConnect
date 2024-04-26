import 'package:freezed_annotation/freezed_annotation.dart';

import '../enums/device_enums.dart';

part 'device_model.freezed.dart';
part 'device_model.g.dart';


@freezed
abstract class DeviceDTO with _$DeviceDTO {
  factory DeviceDTO({
    int? id,
    String? identifier,
    String? displayName,
    String? definition,
    Status? status,
    TestCategory? testCategory,
    int? priority,
    AvailabilityStatus? availabilityStatus,
    String? manufacturer,
    String? manufactureDate,
    String? expirationDate,
    String? serialNumber,
    String? modelNumber,
    String? version,
    String? note,
    bool? isDeleted,
  }) = _DeviceDTO;

  factory DeviceDTO.fromJson(Map<String, dynamic> json) => _$DeviceDTOFromJson(json);
}