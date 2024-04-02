// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vision_center_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrganizationResponseModelImpl _$$OrganizationResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrganizationResponseModelImpl(
      id: json['id'] as int?,
      trackingId: json['trackingId'] as String?,
      facilityid: json['facilityid'] as String?,
      facilityType:
          $enumDecodeNullable(_$FacilityTypeEnumMap, json['facilityType']),
      tenant: json['tenant'] == null
          ? null
          : TenantCustomModel.fromJson(json['tenant'] as Map<String, dynamic>),
      facilityInformation: json['facilityInformation'] == null
          ? null
          : FacilityInformationModel.fromJson(
              json['facilityInformation'] as Map<String, dynamic>),
      facilityAdditionalInformation: json['facilityAdditionalInformation'] ==
              null
          ? null
          : FacilityAdditionalInformationModel.fromJson(
              json['facilityAdditionalInformation'] as Map<String, dynamic>),
      osid: json['osid'] as String?,
    );

Map<String, dynamic> _$$OrganizationResponseModelImplToJson(
        _$OrganizationResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'trackingId': instance.trackingId,
      'facilityid': instance.facilityid,
      'facilityType': _$FacilityTypeEnumMap[instance.facilityType],
      'tenant': instance.tenant?.toJson(),
      'facilityInformation': instance.facilityInformation?.toJson(),
      'facilityAdditionalInformation':
          instance.facilityAdditionalInformation?.toJson(),
      'osid': instance.osid,
    };

const _$FacilityTypeEnumMap = {
  FacilityType.PRIMARY: 'PRIMARY',
};

_$TenantCustomModelImpl _$$TenantCustomModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TenantCustomModelImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$TenantCustomModelImplToJson(
        _$TenantCustomModelImpl instance) =>
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
          : FacilityAddressModel.fromJson(
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
          : FacilityUploadModel.fromJson(
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

_$FacilityAddressModelImpl _$$FacilityAddressModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FacilityAddressModelImpl(
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

Map<String, dynamic> _$$FacilityAddressModelImplToJson(
        _$FacilityAddressModelImpl instance) =>
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

_$FacilityUploadModelImpl _$$FacilityUploadModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FacilityUploadModelImpl(
      facilityBoardPhoto: json['facilityBoardPhoto'] == null
          ? null
          : DocumentModel.fromJson(
              json['facilityBoardPhoto'] as Map<String, dynamic>),
      facilityBuildingPhoto: json['facilityBuildingPhoto'] == null
          ? null
          : DocumentModel.fromJson(
              json['facilityBuildingPhoto'] as Map<String, dynamic>),
      osid: json['osid'] as String?,
    );

Map<String, dynamic> _$$FacilityUploadModelImplToJson(
        _$FacilityUploadModelImpl instance) =>
    <String, dynamic>{
      'facilityBoardPhoto': instance.facilityBoardPhoto?.toJson(),
      'facilityBuildingPhoto': instance.facilityBuildingPhoto?.toJson(),
      'osid': instance.osid,
    };

_$FacilityAddressProofModelImpl _$$FacilityAddressProofModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FacilityAddressProofModelImpl(
      addressProofType: json['addressProofType'] as String?,
      addressProofAttachment: json['addressProofAttachment'] == null
          ? null
          : DocumentModel.fromJson(
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
      anyother: json['anyother'] as String?,
      osid: json['osid'] as String?,
    );

Map<String, dynamic> _$$AbdmCompliantSoftwareModelImplToJson(
        _$AbdmCompliantSoftwareModelImpl instance) =>
    <String, dynamic>{
      'existingSoftwares': instance.existingSoftwares,
      'anyother': instance.anyother,
      'osid': instance.osid,
    };

_$FacilityAdditionalInformationModelImpl
    _$$FacilityAdditionalInformationModelImplFromJson(
            Map<String, dynamic> json) =>
        _$FacilityAdditionalInformationModelImpl(
          trackingId: json['trackingId'] as String?,
          generalInformation: json['generalInformation'] == null
              ? null
              : GeneralInformationModel.fromJson(
                  json['generalInformation'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$FacilityAdditionalInformationModelImplToJson(
        _$FacilityAdditionalInformationModelImpl instance) =>
    <String, dynamic>{
      'trackingId': instance.trackingId,
      'generalInformation': instance.generalInformation?.toJson(),
    };

_$GeneralInformationModelImpl _$$GeneralInformationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GeneralInformationModelImpl(
      hasDialysisCenter: json['hasDialysisCenter'] as String?,
      hasPharmacy: json['hasPharmacy'] as String?,
      hasBloodBank: json['hasBloodBank'] as String?,
      hasCathLab: json['hasCathLab'] as String?,
      hasDiagnosticLab: json['hasDiagnosticLab'] as String?,
      hasImagingCenter: json['hasImagingCenter'] as String?,
    );

Map<String, dynamic> _$$GeneralInformationModelImplToJson(
        _$GeneralInformationModelImpl instance) =>
    <String, dynamic>{
      'hasDialysisCenter': instance.hasDialysisCenter,
      'hasPharmacy': instance.hasPharmacy,
      'hasBloodBank': instance.hasBloodBank,
      'hasCathLab': instance.hasCathLab,
      'hasDiagnosticLab': instance.hasDiagnosticLab,
      'hasImagingCenter': instance.hasImagingCenter,
    };

_$DocumentModelImpl _$$DocumentModelImplFromJson(Map<String, dynamic> json) =>
    _$DocumentModelImpl(
      name: json['name'] as String?,
      value: json['value'] as String?,
      osid: json['osid'] as String?,
    );

Map<String, dynamic> _$$DocumentModelImplToJson(_$DocumentModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'osid': instance.osid,
    };
