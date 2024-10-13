/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:freezed_annotation/freezed_annotation.dart';
part 'vision_center_models.freezed.dart';
part 'vision_center_models.g.dart';

@freezed
class FacilityModel with _$FacilityModel {
  const factory FacilityModel({
     int? organizationProfileId, // Nullable
     String? trackingId,
     String? facilityId,
     String? facilityType,
     TenantModel? tenant, // Nullable
     FacilityInformationModel? facilityInformation,
    String? osid, // Optional
  }) = _FacilityModel;

  factory FacilityModel.fromJson(Map<String, dynamic> json) =>
      _$FacilityModelFromJson(json);

}

@freezed
class TenantModel with _$TenantModel {
  const factory TenantModel({
     int? id,
     String? name,
  }) = _TenantModel;

  factory TenantModel.fromJson(Map<String, dynamic> json) =>
      _$TenantModelFromJson(json);

  // ... Factories and methods (if any)
}

@freezed
class FacilityInformationModel with _$FacilityInformationModel {
  const factory FacilityInformationModel({
     String? facilityName,
     String? ownershipCode,
    String? ownershipSubTypeCode, // Nullable
    String? ownershipSubTypeCode2, // Nullable
     FacilityAddressDetailsModel? facilityAddressDetails,
     FacilityContactInformationModel? facilityContactInformation,
     String? systemOfMedicineCode,
     String? facilityTypeCode,
     String? facilitySubType,
    String? specialityTypeCode, // Nullable
    String? typeOfServiceCode, // Nullable
     String? facilityOperationalStatus,
    FacilityUploadsModel? facilityUploads, // Nullable
    List<FacilityAddressProofModel>? facilityAddressProof, // Nullable List
    List<FacilityTimingModel>? timingsOfFacility, // Nullable List
    List<AbdmCompliantSoftwareModel>? abdmCompliantSoftware, // Nullable List
  }) = _FacilityInformationModel;

  factory FacilityInformationModel.fromJson(Map<String, dynamic> json) =>
      _$FacilityInformationModelFromJson(json);

  // ... Factories and methods (if any)
}

@freezed
class FacilityAddressDetailsModel with _$FacilityAddressDetailsModel {
  const factory FacilityAddressDetailsModel({
    String? country,
    String? stateLGDCode,
    String? districtLGDCode,
    String? subDistrictLGDCode,
    String? facilityRegion,
    String? villageCityTownLGDCode,
    String? addressLine1,
    String? addressLine2,
    String? latitude,
    String? longitude,
    String? osid,
    String? pincode,
  }) = _FacilityAddressDetailsModel;

  factory FacilityAddressDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$FacilityAddressDetailsModelFromJson(json);

  // ... Factories and methods (if any)
}

@freezed
class FacilityContactInformationModel with _$FacilityContactInformationModel {
  const factory FacilityContactInformationModel({
    String? facilityContactNumber,
    String? facilityEmailId,
    String? facilityLandlineNumber, // Nullable
    String? facilityStdCode, // Nullable
    String? websiteLink, // Nullable
    String? osid,
  }) = _FacilityContactInformationModel;

  factory FacilityContactInformationModel.fromJson(Map<String, dynamic> json) =>
      _$FacilityContactInformationModelFromJson(json);

  // ... Factories and methods (if any)
}

@freezed
class FacilityUploadsModel with _$FacilityUploadsModel {
  const factory FacilityUploadsModel({
    UploadModel? facilityBoardPhoto,
    UploadModel? facilityBuildingPhoto,
    String? osid, // Optional
  }) = _FacilityUploadsModel;

  factory FacilityUploadsModel.fromJson(Map<String, dynamic> json) =>
      _$FacilityUploadsModelFromJson(json);

  // ... Factories and methods (if any)
}

@freezed
class UploadModel with _$UploadModel {
  const factory UploadModel({
    String? name,
    String? value,
    String? osid,
  }) = _UploadModel;

  factory UploadModel.fromJson(Map<String, dynamic> json) =>
      _$UploadModelFromJson(json);

  // ... Factories and methods (if any)
}

@freezed
class FacilityAddressProofModel with _$FacilityAddressProofModel {
  const factory FacilityAddressProofModel({
    String? addressProofType,
    AddressProofAttachmentModel? addressProofAttachment,
    String? osid,
  }) = _FacilityAddressProofModel;

  factory FacilityAddressProofModel.fromJson(Map<String, dynamic> json) =>
      _$FacilityAddressProofModelFromJson(json);

  // ... Factories and methods (if any)
}

@freezed
class AddressProofAttachmentModel with _$AddressProofAttachmentModel {
  const factory AddressProofAttachmentModel({
    String? name,
    String? value,
    String? osid,
  }) = _AddressProofAttachmentModel;

  factory AddressProofAttachmentModel.fromJson(Map<String, dynamic> json) =>
      _$AddressProofAttachmentModelFromJson(json);

  // ... Factories and methods (if any)
}


@freezed
class FacilityTimingModel with _$FacilityTimingModel {
  const factory FacilityTimingModel({
    String? workingDays,
    String? openingHours,
    String? osid,
  }) = _FacilityTimingModel;

  factory FacilityTimingModel.fromJson(Map<String, dynamic> json) =>
      _$FacilityTimingModelFromJson(json);

  // ... Factories and methods (if any)
}


@freezed
class AbdmCompliantSoftwareModel with _$AbdmCompliantSoftwareModel {
  const factory AbdmCompliantSoftwareModel({
    List<String>? existingSoftwares,
    String? anyOther,
    String? osid,
  }) = _AbdmCompliantSoftwareModel;

  factory AbdmCompliantSoftwareModel.fromJson(Map<String, dynamic> json) =>
      _$AbdmCompliantSoftwareModelFromJson(json);

  // ... Factories and methods (if any)
}




