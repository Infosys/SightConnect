// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vision_center_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FacilityModel _$$_FacilityModelFromJson(Map<String, dynamic> json) =>
    _$_FacilityModel(
      organizationProfileId: json['organizationProfileId'] as int?,
      trackingId: json['trackingId'] as String?,
      facilityId: json['facilityId'] as String?,
      facilityType: json['facilityType'] as String?,
      tenant: json['tenant'] == null
          ? null
          : TenantModel.fromJson(json['tenant'] as Map<String, dynamic>),
      facilityInformation: json['facilityInformation'] == null
          ? null
          : FacilityInformationModel.fromJson(
              json['facilityInformation'] as Map<String, dynamic>),
      osid: json['osid'] as String?,
    );

Map<String, dynamic> _$$_FacilityModelToJson(_$_FacilityModel instance) =>
    <String, dynamic>{
      'organizationProfileId': instance.organizationProfileId,
      'trackingId': instance.trackingId,
      'facilityId': instance.facilityId,
      'facilityType': instance.facilityType,
      'tenant': instance.tenant,
      'facilityInformation': instance.facilityInformation,
      'osid': instance.osid,
    };

_$_TenantModel _$$_TenantModelFromJson(Map<String, dynamic> json) =>
    _$_TenantModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_TenantModelToJson(_$_TenantModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_FacilityInformationModel _$$_FacilityInformationModelFromJson(
        Map<String, dynamic> json) =>
    _$_FacilityInformationModel(
      facilityName: json['facilityName'] as String?,
      ownershipCode: json['ownershipCode'] as String?,
      ownershipSubTypeCode: json['ownershipSubTypeCode'] as String?,
      ownershipSubTypeCode2: json['ownershipSubTypeCode2'] as String?,
      facilityAddressDetails: json['facilityAddressDetails'] == null
          ? null
          : FacilityAddressDetailsModel.fromJson(
              json['facilityAddressDetails'] as Map<String, dynamic>),
      facilityContactInformation: json['facilityContactInformation'] == null
          ? null
          : FacilityContactInformationModel.fromJson(
              json['facilityContactInformation'] as Map<String, dynamic>),
      systemOfMedicineCode: json['systemOfMedicineCode'] as String?,
      facilityTypeCode: json['facilityTypeCode'] as String?,
      facilitySubType: json['facilitySubType'] as String?,
      specialityTypeCode: json['specialityTypeCode'] as String?,
      typeOfServiceCode: json['typeOfServiceCode'] as String?,
      facilityOperationalStatus: json['facilityOperationalStatus'] as String?,
      facilityUploads: json['facilityUploads'] == null
          ? null
          : FacilityUploadsModel.fromJson(
              json['facilityUploads'] as Map<String, dynamic>),
      facilityAddressProof: (json['facilityAddressProof'] as List<dynamic>?)
          ?.map((e) =>
              FacilityAddressProofModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      timingsOfFacility: (json['timingsOfFacility'] as List<dynamic>?)
          ?.map((e) => FacilityTimingModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      abdmCompliantSoftware: (json['abdmCompliantSoftware'] as List<dynamic>?)
          ?.map((e) =>
              AbdmCompliantSoftwareModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FacilityInformationModelToJson(
        _$_FacilityInformationModel instance) =>
    <String, dynamic>{
      'facilityName': instance.facilityName,
      'ownershipCode': instance.ownershipCode,
      'ownershipSubTypeCode': instance.ownershipSubTypeCode,
      'ownershipSubTypeCode2': instance.ownershipSubTypeCode2,
      'facilityAddressDetails': instance.facilityAddressDetails,
      'facilityContactInformation': instance.facilityContactInformation,
      'systemOfMedicineCode': instance.systemOfMedicineCode,
      'facilityTypeCode': instance.facilityTypeCode,
      'facilitySubType': instance.facilitySubType,
      'specialityTypeCode': instance.specialityTypeCode,
      'typeOfServiceCode': instance.typeOfServiceCode,
      'facilityOperationalStatus': instance.facilityOperationalStatus,
      'facilityUploads': instance.facilityUploads,
      'facilityAddressProof': instance.facilityAddressProof,
      'timingsOfFacility': instance.timingsOfFacility,
      'abdmCompliantSoftware': instance.abdmCompliantSoftware,
    };

_$_FacilityAddressDetailsModel _$$_FacilityAddressDetailsModelFromJson(
        Map<String, dynamic> json) =>
    _$_FacilityAddressDetailsModel(
      country: json['country'] as String?,
      stateLGDCode: json['stateLGDCode'] as String?,
      districtLGDCode: json['districtLGDCode'] as String?,
      subDistrictLGDCode: json['subDistrictLGDCode'] as String?,
      facilityRegion: json['facilityRegion'] as String?,
      villageCityTownLGDCode: json['villageCityTownLGDCode'] as String?,
      addressLine1: json['addressLine1'] as String?,
      addressLine2: json['addressLine2'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      osid: json['osid'] as String?,
      pincode: json['pincode'] as String?,
    );

Map<String, dynamic> _$$_FacilityAddressDetailsModelToJson(
        _$_FacilityAddressDetailsModel instance) =>
    <String, dynamic>{
      'country': instance.country,
      'stateLGDCode': instance.stateLGDCode,
      'districtLGDCode': instance.districtLGDCode,
      'subDistrictLGDCode': instance.subDistrictLGDCode,
      'facilityRegion': instance.facilityRegion,
      'villageCityTownLGDCode': instance.villageCityTownLGDCode,
      'addressLine1': instance.addressLine1,
      'addressLine2': instance.addressLine2,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'osid': instance.osid,
      'pincode': instance.pincode,
    };

_$_FacilityContactInformationModel _$$_FacilityContactInformationModelFromJson(
        Map<String, dynamic> json) =>
    _$_FacilityContactInformationModel(
      facilityContactNumber: json['facilityContactNumber'] as String?,
      facilityEmailId: json['facilityEmailId'] as String?,
      facilityLandlineNumber: json['facilityLandlineNumber'] as String?,
      facilityStdCode: json['facilityStdCode'] as String?,
      websiteLink: json['websiteLink'] as String?,
      osid: json['osid'] as String?,
    );

Map<String, dynamic> _$$_FacilityContactInformationModelToJson(
        _$_FacilityContactInformationModel instance) =>
    <String, dynamic>{
      'facilityContactNumber': instance.facilityContactNumber,
      'facilityEmailId': instance.facilityEmailId,
      'facilityLandlineNumber': instance.facilityLandlineNumber,
      'facilityStdCode': instance.facilityStdCode,
      'websiteLink': instance.websiteLink,
      'osid': instance.osid,
    };

_$_FacilityUploadsModel _$$_FacilityUploadsModelFromJson(
        Map<String, dynamic> json) =>
    _$_FacilityUploadsModel(
      facilityBoardPhoto: json['facilityBoardPhoto'] == null
          ? null
          : UploadModel.fromJson(
              json['facilityBoardPhoto'] as Map<String, dynamic>),
      facilityBuildingPhoto: json['facilityBuildingPhoto'] == null
          ? null
          : UploadModel.fromJson(
              json['facilityBuildingPhoto'] as Map<String, dynamic>),
      osid: json['osid'] as String?,
    );

Map<String, dynamic> _$$_FacilityUploadsModelToJson(
        _$_FacilityUploadsModel instance) =>
    <String, dynamic>{
      'facilityBoardPhoto': instance.facilityBoardPhoto,
      'facilityBuildingPhoto': instance.facilityBuildingPhoto,
      'osid': instance.osid,
    };

_$_UploadModel _$$_UploadModelFromJson(Map<String, dynamic> json) =>
    _$_UploadModel(
      name: json['name'] as String?,
      value: json['value'] as String?,
      osid: json['osid'] as String?,
    );

Map<String, dynamic> _$$_UploadModelToJson(_$_UploadModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'osid': instance.osid,
    };

_$_FacilityAddressProofModel _$$_FacilityAddressProofModelFromJson(
        Map<String, dynamic> json) =>
    _$_FacilityAddressProofModel(
      addressProofType: json['addressProofType'] as String?,
      addressProofAttachment: json['addressProofAttachment'] == null
          ? null
          : AddressProofAttachmentModel.fromJson(
              json['addressProofAttachment'] as Map<String, dynamic>),
      osid: json['osid'] as String?,
    );

Map<String, dynamic> _$$_FacilityAddressProofModelToJson(
        _$_FacilityAddressProofModel instance) =>
    <String, dynamic>{
      'addressProofType': instance.addressProofType,
      'addressProofAttachment': instance.addressProofAttachment,
      'osid': instance.osid,
    };

_$_AddressProofAttachmentModel _$$_AddressProofAttachmentModelFromJson(
        Map<String, dynamic> json) =>
    _$_AddressProofAttachmentModel(
      name: json['name'] as String?,
      value: json['value'] as String?,
      osid: json['osid'] as String?,
    );

Map<String, dynamic> _$$_AddressProofAttachmentModelToJson(
        _$_AddressProofAttachmentModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'osid': instance.osid,
    };

_$_FacilityTimingModel _$$_FacilityTimingModelFromJson(
        Map<String, dynamic> json) =>
    _$_FacilityTimingModel(
      workingDays: json['workingDays'] as String?,
      openingHours: json['openingHours'] as String?,
      osid: json['osid'] as String?,
    );

Map<String, dynamic> _$$_FacilityTimingModelToJson(
        _$_FacilityTimingModel instance) =>
    <String, dynamic>{
      'workingDays': instance.workingDays,
      'openingHours': instance.openingHours,
      'osid': instance.osid,
    };

_$_AbdmCompliantSoftwareModel _$$_AbdmCompliantSoftwareModelFromJson(
        Map<String, dynamic> json) =>
    _$_AbdmCompliantSoftwareModel(
      existingSoftwares: (json['existingSoftwares'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      anyOther: json['anyOther'] as String?,
      osid: json['osid'] as String?,
    );

Map<String, dynamic> _$$_AbdmCompliantSoftwareModelToJson(
        _$_AbdmCompliantSoftwareModel instance) =>
    <String, dynamic>{
      'existingSoftwares': instance.existingSoftwares,
      'anyOther': instance.anyOther,
      'osid': instance.osid,
    };
