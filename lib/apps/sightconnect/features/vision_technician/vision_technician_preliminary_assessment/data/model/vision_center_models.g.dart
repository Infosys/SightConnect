/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vision_center_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FacilityModelImpl _$$FacilityModelImplFromJson(Map<String, dynamic> json) =>
    _$FacilityModelImpl(
      organizationProfileId: (json['organizationProfileId'] as num?)?.toInt(),
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

Map<String, dynamic> _$$FacilityModelImplToJson(_$FacilityModelImpl instance) =>
    <String, dynamic>{
      'organizationProfileId': instance.organizationProfileId,
      'trackingId': instance.trackingId,
      'facilityId': instance.facilityId,
      'facilityType': instance.facilityType,
      'tenant': instance.tenant?.toJson(),
      'facilityInformation': instance.facilityInformation?.toJson(),
      'osid': instance.osid,
    };

_$TenantModelImpl _$$TenantModelImplFromJson(Map<String, dynamic> json) =>
    _$TenantModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$TenantModelImplToJson(_$TenantModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$FacilityInformationModelImpl _$$FacilityInformationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FacilityInformationModelImpl(
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

Map<String, dynamic> _$$FacilityInformationModelImplToJson(
        _$FacilityInformationModelImpl instance) =>
    <String, dynamic>{
      'facilityName': instance.facilityName,
      'ownershipCode': instance.ownershipCode,
      'ownershipSubTypeCode': instance.ownershipSubTypeCode,
      'ownershipSubTypeCode2': instance.ownershipSubTypeCode2,
      'facilityAddressDetails': instance.facilityAddressDetails?.toJson(),
      'facilityContactInformation':
          instance.facilityContactInformation?.toJson(),
      'systemOfMedicineCode': instance.systemOfMedicineCode,
      'facilityTypeCode': instance.facilityTypeCode,
      'facilitySubType': instance.facilitySubType,
      'specialityTypeCode': instance.specialityTypeCode,
      'typeOfServiceCode': instance.typeOfServiceCode,
      'facilityOperationalStatus': instance.facilityOperationalStatus,
      'facilityUploads': instance.facilityUploads?.toJson(),
      'facilityAddressProof':
          instance.facilityAddressProof?.map((e) => e.toJson()).toList(),
      'timingsOfFacility':
          instance.timingsOfFacility?.map((e) => e.toJson()).toList(),
      'abdmCompliantSoftware':
          instance.abdmCompliantSoftware?.map((e) => e.toJson()).toList(),
    };

_$FacilityAddressDetailsModelImpl _$$FacilityAddressDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FacilityAddressDetailsModelImpl(
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

Map<String, dynamic> _$$FacilityAddressDetailsModelImplToJson(
        _$FacilityAddressDetailsModelImpl instance) =>
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

_$FacilityContactInformationModelImpl
    _$$FacilityContactInformationModelImplFromJson(Map<String, dynamic> json) =>
        _$FacilityContactInformationModelImpl(
          facilityContactNumber: json['facilityContactNumber'] as String?,
          facilityEmailId: json['facilityEmailId'] as String?,
          facilityLandlineNumber: json['facilityLandlineNumber'] as String?,
          facilityStdCode: json['facilityStdCode'] as String?,
          websiteLink: json['websiteLink'] as String?,
          osid: json['osid'] as String?,
        );

Map<String, dynamic> _$$FacilityContactInformationModelImplToJson(
        _$FacilityContactInformationModelImpl instance) =>
    <String, dynamic>{
      'facilityContactNumber': instance.facilityContactNumber,
      'facilityEmailId': instance.facilityEmailId,
      'facilityLandlineNumber': instance.facilityLandlineNumber,
      'facilityStdCode': instance.facilityStdCode,
      'websiteLink': instance.websiteLink,
      'osid': instance.osid,
    };

_$FacilityUploadsModelImpl _$$FacilityUploadsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FacilityUploadsModelImpl(
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

Map<String, dynamic> _$$FacilityUploadsModelImplToJson(
        _$FacilityUploadsModelImpl instance) =>
    <String, dynamic>{
      'facilityBoardPhoto': instance.facilityBoardPhoto?.toJson(),
      'facilityBuildingPhoto': instance.facilityBuildingPhoto?.toJson(),
      'osid': instance.osid,
    };

_$UploadModelImpl _$$UploadModelImplFromJson(Map<String, dynamic> json) =>
    _$UploadModelImpl(
      name: json['name'] as String?,
      value: json['value'] as String?,
      osid: json['osid'] as String?,
    );

Map<String, dynamic> _$$UploadModelImplToJson(_$UploadModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'osid': instance.osid,
    };

_$FacilityAddressProofModelImpl _$$FacilityAddressProofModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FacilityAddressProofModelImpl(
      addressProofType: json['addressProofType'] as String?,
      addressProofAttachment: json['addressProofAttachment'] == null
          ? null
          : AddressProofAttachmentModel.fromJson(
              json['addressProofAttachment'] as Map<String, dynamic>),
      osid: json['osid'] as String?,
    );

Map<String, dynamic> _$$FacilityAddressProofModelImplToJson(
        _$FacilityAddressProofModelImpl instance) =>
    <String, dynamic>{
      'addressProofType': instance.addressProofType,
      'addressProofAttachment': instance.addressProofAttachment?.toJson(),
      'osid': instance.osid,
    };

_$AddressProofAttachmentModelImpl _$$AddressProofAttachmentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddressProofAttachmentModelImpl(
      name: json['name'] as String?,
      value: json['value'] as String?,
      osid: json['osid'] as String?,
    );

Map<String, dynamic> _$$AddressProofAttachmentModelImplToJson(
        _$AddressProofAttachmentModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'osid': instance.osid,
    };

_$FacilityTimingModelImpl _$$FacilityTimingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FacilityTimingModelImpl(
      workingDays: json['workingDays'] as String?,
      openingHours: json['openingHours'] as String?,
      osid: json['osid'] as String?,
    );

Map<String, dynamic> _$$FacilityTimingModelImplToJson(
        _$FacilityTimingModelImpl instance) =>
    <String, dynamic>{
      'workingDays': instance.workingDays,
      'openingHours': instance.openingHours,
      'osid': instance.osid,
    };

_$AbdmCompliantSoftwareModelImpl _$$AbdmCompliantSoftwareModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AbdmCompliantSoftwareModelImpl(
      existingSoftwares: (json['existingSoftwares'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      anyOther: json['anyOther'] as String?,
      osid: json['osid'] as String?,
    );

Map<String, dynamic> _$$AbdmCompliantSoftwareModelImplToJson(
        _$AbdmCompliantSoftwareModelImpl instance) =>
    <String, dynamic>{
      'existingSoftwares': instance.existingSoftwares,
      'anyOther': instance.anyOther,
      'osid': instance.osid,
    };
