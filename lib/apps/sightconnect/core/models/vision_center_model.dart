import 'package:eye_care_for_all/apps/sightconnect/core/models/enums/facility_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vision_center_model.freezed.dart';
part 'vision_center_model.g.dart';

@freezed
class OrganizationResponseModel with _$OrganizationResponseModel {
  const factory OrganizationResponseModel(
      {int? id,
      String? trackingId,
      String? facilityid,
      FacilityType? facilityType,
      TenantCustomModel? tenant,
      FacilityInformationModel? facilityInformation,
      FacilityAdditionalInformationModel? facilityAdditionalInformation,
      // FacilityDetailedInformationModel? facilityDetailedInformationModel,
      String? osid}) = _OrganizationResponseModel;
  factory OrganizationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$OrganizationResponseModelFromJson(json);
}

// -------------------------------------------------------------------------------------

@freezed
class TenantCustomModel with _$TenantCustomModel {
  const factory TenantCustomModel({
    int? id,
    String? name,
  }) = _TenantCustomModel;
  factory TenantCustomModel.fromJson(Map<String, dynamic> json) =>
      _$TenantCustomModelFromJson(json);
}

// -------------------------------------------------------------------------------------------

@freezed
class FacilityInformationModel with _$FacilityInformationModel {
  const factory FacilityInformationModel({
    String? facilityName,
    String? ownershipCode,
    String? ownershipSubTypeCode,
    String? ownershipSubTypeCode2,
    FacilityAddressModel? facilityAddressDetails,
    FacilityContactInformationModel? facilityContactInformation,
    String? systemOfMedicineCode,
    String? facilityTypeCode,
    String? facilitySubType,
    String? specialityTypeCode,
    String? typeOfServiceCode,
    String? facilityOperationalStatus,
    FacilityUploadModel? facilityUploads,
    List<FacilityAddressProofModel>? facilityAddressProof,
    List<FacilityTimingModel>? timingsOfFacility,
    List<AbdmCompliantSoftwareModel>? abdmCompliantSoftware,
  }) = _FacilityInformationModel;
  factory FacilityInformationModel.fromJson(Map<String, dynamic> json) =>
      _$FacilityInformationModelFromJson(json);
}

// -----------------------------------------------------------------------------------------------

@freezed
class FacilityAddressModel with _$FacilityAddressModel {
  const factory FacilityAddressModel(
      {String? country,
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
      String? pincode}) = _FacilityAddressModel;
  factory FacilityAddressModel.fromJson(Map<String, dynamic> json) =>
      _$FacilityAddressModelFromJson(json);
}

// ----------------------------------------------------------------------------------------------------

@freezed
class FacilityContactInformationModel with _$FacilityContactInformationModel {
  const factory FacilityContactInformationModel(
      {String? facilityContactNumber,
      String? facilityEmailId,
      String? facilityLandlineNumber,
      String? facilityStdCode,
      String? websiteLink,
      String? osid}) = _FacilityContactInformationModel;
  factory FacilityContactInformationModel.fromJson(Map<String, dynamic> json) =>
      _$FacilityContactInformationModelFromJson(json);
}

// --------------------------------------------------------------------------------------------------------

@freezed
class FacilityUploadModel with _$FacilityUploadModel {
  const factory FacilityUploadModel(
      {DocumentModel? facilityBoardPhoto,
      DocumentModel? facilityBuildingPhoto,
      String? osid}) = _FacilityUploadModel;
  factory FacilityUploadModel.fromJson(Map<String, dynamic> json) =>
      _$FacilityUploadModelFromJson(json);
}

// ------------------------------------------------------------------------------------------------------------

@freezed
class FacilityAddressProofModel with _$FacilityAddressProofModel {
  const factory FacilityAddressProofModel(
      {String? addressProofType,
      DocumentModel? addressProofAttachment,
      String? osid}) = _FacilityAddressProofModel;
  factory FacilityAddressProofModel.fromJson(Map<String, dynamic> json) =>
      _$FacilityAddressProofModelFromJson(json);
}

// ---------------------------------------------------------------------------------------------------------------

@freezed
class FacilityTimingModel with _$FacilityTimingModel {
  const factory FacilityTimingModel(
      {String? workingDays,
      String? openingHours,
      String? osid}) = _FacilityTimingModel;
  factory FacilityTimingModel.fromJson(Map<String, dynamic> json) =>
      _$FacilityTimingModelFromJson(json);
}

// ------------------------------------------------------------------------------------------------------------------

@freezed
class AbdmCompliantSoftwareModel with _$AbdmCompliantSoftwareModel {
  const factory AbdmCompliantSoftwareModel(
      {List<String>? existingSoftwares,
      String? anyother,
      String? osid}) = _AbdmCompliantSoftwareModel;
  factory AbdmCompliantSoftwareModel.fromJson(Map<String, dynamic> json) =>
      _$AbdmCompliantSoftwareModelFromJson(json);
}

// ----------------------------------------------------------------------------------------------------------------------

@freezed
class FacilityAdditionalInformationModel
    with _$FacilityAdditionalInformationModel {
  const factory FacilityAdditionalInformationModel({
    String? trackingId,
    GeneralInformationModel? generalInformation,
    // LinkedProgramIdModel? linkedProgramIds
  }) = _FacilityAdditionalInformationModel;
  factory FacilityAdditionalInformationModel.fromJson(
          Map<String, dynamic> json) =>
      _$FacilityAdditionalInformationModelFromJson(json);
}

// --------------------------------------------------------------------------------------------------------------------------

@freezed
class GeneralInformationModel with _$GeneralInformationModel {
  const factory GeneralInformationModel({
    String? hasDialysisCenter,
    String? hasPharmacy,
    String? hasBloodBank,
    String? hasCathLab,
    String? hasDiagnosticLab,
    String? hasImagingCenter,
    // List<ImagingCenterServiceModel>? servicesByImagingCenter
  }) = _GeneralInformationModel;
  factory GeneralInformationModel.fromJson(Map<String, dynamic> json) =>
      _$GeneralInformationModelFromJson(json);
}

// -------------------------------------------------------------------------------------------------------------------------------

@freezed
class DocumentModel with _$DocumentModel {
  const factory DocumentModel({String? name, String? value, String? osid}) =
      _DocumentModel;
  factory DocumentModel.fromJson(Map<String, dynamic> json) =>
      _$DocumentModelFromJson(json);
}
