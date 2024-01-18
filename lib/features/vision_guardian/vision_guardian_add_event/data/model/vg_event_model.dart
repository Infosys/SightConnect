import 'package:freezed_annotation/freezed_annotation.dart';

part 'vg_event_model.freezed.dart';

part 'vg_event_model.g.dart';

@freezed
class VisionGuardianEventModel with _$VisionGuardianEventModel {
  factory VisionGuardianEventModel({
    int? id,
    String? title,
    String? description,
    int? serviceProvider,
    String? startDate,
    String? endDate,
    String? startTime,
    String? endTime,
    int? maximumAttendeeCapacity,
    String? sponsor,
    String? eventStatus,
    List<VisionGuardianEventImage>? images,
    List<VisionGuardianEventAddress>? addresses,
  }) = _VisionGuardianEventModel;

  factory VisionGuardianEventModel.fromJson(Map<String, dynamic> json) =>
      _$VisionGuardianEventModelFromJson(json);
}

@freezed
class VisionGuardianEventImage with _$VisionGuardianEventImage {
  factory VisionGuardianEventImage({
    int? id,
    String? baseUrl,
    String? endpoint,
    String? fileId,
    bool? thumbnail,
    String? status,
    bool? isDeleted,
  }) = _VisionGuardianEventImage;

  factory VisionGuardianEventImage.fromJson(Map<String, dynamic> json) =>
      _$VisionGuardianEventImageFromJson(json);
}

@freezed
class VisionGuardianEventAddress with _$VisionGuardianEventAddress {
  factory VisionGuardianEventAddress({
    int? id,
    String? venueName,
    String? addressLine1,
    String? addressLine2,
    String? landmark,
    String? street,
    String? city,
    String? subDistrict,
    String? district,
    String? state,
    String? pinCode,
    String? country,
    double? latitude,
    double? longitude,
    bool? isPrimary,
    String? addressType,
    bool? isDeleted,
  }) = _VisionGuardianEventAddress;

  factory VisionGuardianEventAddress.fromJson(Map<String, dynamic> json) =>
      _$VisionGuardianEventAddressFromJson(json);
}
 