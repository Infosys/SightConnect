/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vg_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VgProfileModelImpl _$$VgProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$VgProfileModelImpl(
      id: (json['id'] as num?)?.toInt(),
      profilePhoto: json['profilePhoto'] as String?,
      healthProfessionalType: json['healthProfessionalType'] as String?,
      practitionerType: json['practitionerType'] as String?,
      officialMobileCode: json['officialMobileCode'] as String?,
      officialMobile: json['officialMobile'] as String?,
      officialEmail: json['officialEmail'] as String?,
      visibleProfilePicture: json['visibleProfilePicture'] as String?,
      personalInformation: json['personalInformation'] == null
          ? null
          : PersonalInformation.fromJson(
              json['personalInformation'] as Map<String, dynamic>),
      communicationAddress: json['communicationAddress'] == null
          ? null
          : CommunicationAddress.fromJson(
              json['communicationAddress'] as Map<String, dynamic>),
      contactInformation: json['contactInformation'] == null
          ? null
          : ContactInformation.fromJson(
              json['contactInformation'] as Map<String, dynamic>),
      registrationAcademic: json['registrationAcademic'] == null
          ? null
          : RegistrationAcademic.fromJson(
              json['registrationAcademic'] as Map<String, dynamic>),
      currentWorkDetails: json['currentWorkDetails'] == null
          ? null
          : CurrentWorkDetails.fromJson(
              json['currentWorkDetails'] as Map<String, dynamic>),
      availableForTeleconsultation:
          json['availableForTeleconsultation'] as bool?,
      practiceGrants: (json['practiceGrants'] as List<dynamic>?)
          ?.map((e) => PracticeGrant.fromJson(e as Map<String, dynamic>))
          .toList(),
      osid: json['osid'] as String?,
    );

Map<String, dynamic> _$$VgProfileModelImplToJson(
        _$VgProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profilePhoto': instance.profilePhoto,
      'healthProfessionalType': instance.healthProfessionalType,
      'practitionerType': instance.practitionerType,
      'officialMobileCode': instance.officialMobileCode,
      'officialMobile': instance.officialMobile,
      'officialEmail': instance.officialEmail,
      'visibleProfilePicture': instance.visibleProfilePicture,
      'personalInformation': instance.personalInformation?.toJson(),
      'communicationAddress': instance.communicationAddress?.toJson(),
      'contactInformation': instance.contactInformation?.toJson(),
      'registrationAcademic': instance.registrationAcademic?.toJson(),
      'currentWorkDetails': instance.currentWorkDetails?.toJson(),
      'availableForTeleconsultation': instance.availableForTeleconsultation,
      'practiceGrants':
          instance.practiceGrants?.map((e) => e.toJson()).toList(),
      'osid': instance.osid,
    };

_$CommunicationAddressImpl _$$CommunicationAddressImplFromJson(
        Map<String, dynamic> json) =>
    _$CommunicationAddressImpl(
      isCommunicationAddressAsPerKyc:
          json['isCommunicationAddressAsPerKYC'] as String?,
      address: json['address'] as String?,
      name: json['name'] as String?,
      country: json['country'] as String?,
      state: json['state'] as String?,
      city: json['city'] as String?,
      postalCode: json['postalCode'] as String?,
      osid: json['osid'] as String?,
    );

Map<String, dynamic> _$$CommunicationAddressImplToJson(
        _$CommunicationAddressImpl instance) =>
    <String, dynamic>{
      'isCommunicationAddressAsPerKYC': instance.isCommunicationAddressAsPerKyc,
      'address': instance.address,
      'name': instance.name,
      'country': instance.country,
      'state': instance.state,
      'city': instance.city,
      'postalCode': instance.postalCode,
      'osid': instance.osid,
    };

_$ContactInformationImpl _$$ContactInformationImplFromJson(
        Map<String, dynamic> json) =>
    _$ContactInformationImpl(
      publicMobileNumber: json['publicMobileNumber'] as String?,
      publicMobileNumberCode: json['publicMobileNumberCode'] as String?,
      publicMobileNumberStatus: json['publicMobileNumberStatus'] as String?,
      landLineNumber: json['landLineNumber'] as String?,
      landLineNumberCode: json['landLineNumberCode'] as String?,
      publicEmail: json['publicEmail'] as String?,
      publicEmailStatus: json['publicEmailStatus'] as String?,
      osid: json['osid'] as String?,
    );

Map<String, dynamic> _$$ContactInformationImplToJson(
        _$ContactInformationImpl instance) =>
    <String, dynamic>{
      'publicMobileNumber': instance.publicMobileNumber,
      'publicMobileNumberCode': instance.publicMobileNumberCode,
      'publicMobileNumberStatus': instance.publicMobileNumberStatus,
      'landLineNumber': instance.landLineNumber,
      'landLineNumberCode': instance.landLineNumberCode,
      'publicEmail': instance.publicEmail,
      'publicEmailStatus': instance.publicEmailStatus,
      'osid': instance.osid,
    };

_$CurrentWorkDetailsImpl _$$CurrentWorkDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentWorkDetailsImpl(
      currentlyWorking: json['currentlyWorking'] as String?,
      purposeOfWork: json['purposeOfWork'] as String?,
      chooseWorkStatus: json['chooseWorkStatus'] as String?,
      reasonForNotWorking: json['reasonForNotWorking'] as String?,
      certificateAttachment: json['certificateAttachment'] as String?,
      osid: json['osid'] as String?,
    );

Map<String, dynamic> _$$CurrentWorkDetailsImplToJson(
        _$CurrentWorkDetailsImpl instance) =>
    <String, dynamic>{
      'currentlyWorking': instance.currentlyWorking,
      'purposeOfWork': instance.purposeOfWork,
      'chooseWorkStatus': instance.chooseWorkStatus,
      'reasonForNotWorking': instance.reasonForNotWorking,
      'certificateAttachment': instance.certificateAttachment,
      'osid': instance.osid,
    };

_$PersonalInformationImpl _$$PersonalInformationImplFromJson(
        Map<String, dynamic> json) =>
    _$PersonalInformationImpl(
      salutation: json['salutation'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      nationality: json['nationality'] as String?,
      placeOfBirthState: json['placeOfBirthState'] as String?,
      district: json['district'] as String?,
      city: json['city'] as String?,
      languagesSpoken: json['languagesSpoken'] as String?,
      osid: json['osid'] as String?,
    );

Map<String, dynamic> _$$PersonalInformationImplToJson(
        _$PersonalInformationImpl instance) =>
    <String, dynamic>{
      'salutation': instance.salutation,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'nationality': instance.nationality,
      'placeOfBirthState': instance.placeOfBirthState,
      'district': instance.district,
      'city': instance.city,
      'languagesSpoken': instance.languagesSpoken,
      'osid': instance.osid,
    };

_$PracticeGrantImpl _$$PracticeGrantImplFromJson(Map<String, dynamic> json) =>
    _$PracticeGrantImpl(
      registrationDate: const TimestampConverter()
          .fromJson(json['registrationDate'] as String?),
      id: (json['id'] as num?)?.toInt(),
      grantType: json['grantType'] as String?,
      grantRole: json['grantRole'] as String?,
      department: json['department'] as String?,
      organization: json['organization'] == null
          ? null
          : Organization.fromJson(json['organization'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PracticeGrantImplToJson(_$PracticeGrantImpl instance) =>
    <String, dynamic>{
      'registrationDate':
          const TimestampConverter().toJson(instance.registrationDate),
      'id': instance.id,
      'grantType': instance.grantType,
      'grantRole': instance.grantRole,
      'department': instance.department,
      'organization': instance.organization?.toJson(),
    };

_$OrganizationImpl _$$OrganizationImplFromJson(Map<String, dynamic> json) =>
    _$OrganizationImpl(
      id: (json['id'] as num?)?.toInt(),
      regRef: json['regRef'] as String?,
      facilityType: json['facilityType'] as String?,
      tenant: json['tenant'] == null
          ? null
          : Tenant.fromJson(json['tenant'] as Map<String, dynamic>),
      status: json['status'] as String?,
      governingOrganization: json['governingOrganization'],
    );

Map<String, dynamic> _$$OrganizationImplToJson(_$OrganizationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'regRef': instance.regRef,
      'facilityType': instance.facilityType,
      'tenant': instance.tenant?.toJson(),
      'status': instance.status,
      'governingOrganization': instance.governingOrganization,
    };

_$TenantImpl _$$TenantImplFromJson(Map<String, dynamic> json) => _$TenantImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$TenantImplToJson(_$TenantImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$RegistrationAcademicImpl _$$RegistrationAcademicImplFromJson(
        Map<String, dynamic> json) =>
    _$RegistrationAcademicImpl(
      category: json['category'] as String?,
      registrationData: (json['registrationData'] as List<dynamic>?)
          ?.map((e) => RegistrationDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
      osid: json['osid'] as String?,
    );

Map<String, dynamic> _$$RegistrationAcademicImplToJson(
        _$RegistrationAcademicImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'registrationData':
          instance.registrationData?.map((e) => e.toJson()).toList(),
      'osid': instance.osid,
    };

_$RegistrationDatumImpl _$$RegistrationDatumImplFromJson(
        Map<String, dynamic> json) =>
    _$RegistrationDatumImpl(
      registeredWithCouncil: json['registeredWithCouncil'] as String?,
      registrationNumber: json['registrationNumber'] as String?,
      registrationCertificate: json['registrationCertificate'] as String?,
      isNameDifferentInCertificate:
          json['isNameDifferentInCertificate'] as String?,
      proofOfNameChangeCertificate:
          json['proofOfNameChangeCertificate'] as String?,
      categoryId: json['categoryId'] as String?,
      qualifications: (json['qualifications'] as List<dynamic>?)
          ?.map((e) => Qualification.fromJson(e as Map<String, dynamic>))
          .toList(),
      osid: json['osid'] as String?,
    );

Map<String, dynamic> _$$RegistrationDatumImplToJson(
        _$RegistrationDatumImpl instance) =>
    <String, dynamic>{
      'registeredWithCouncil': instance.registeredWithCouncil,
      'registrationNumber': instance.registrationNumber,
      'registrationCertificate': instance.registrationCertificate,
      'isNameDifferentInCertificate': instance.isNameDifferentInCertificate,
      'proofOfNameChangeCertificate': instance.proofOfNameChangeCertificate,
      'categoryId': instance.categoryId,
      'qualifications':
          instance.qualifications?.map((e) => e.toJson()).toList(),
      'osid': instance.osid,
    };

_$QualificationImpl _$$QualificationImplFromJson(Map<String, dynamic> json) =>
    _$QualificationImpl(
      nameOfDegreeOrDiplomaObtained:
          json['nameOfDegreeOrDiplomaObtained'] as String?,
      country: json['country'] as String?,
      state: json['state'] as String?,
      college: json['college'] as String?,
      university: json['university'] as String?,
      monthOfAwardingDegreeDiploma:
          json['monthOfAwardingDegreeDiploma'] as String?,
      yearOfAwardingDegreeDiploma:
          json['yearOfAwardingDegreeDiploma'] as String?,
      degreeCertificate: json['degreeCertificate'] as String?,
      isNameDifferentInCertificate:
          json['isNameDifferentInCertificate'] as String?,
      proofOfNameChangeCertificate:
          json['proofOfNameChangeCertificate'] as String?,
      osid: json['osid'] as String?,
    );

Map<String, dynamic> _$$QualificationImplToJson(_$QualificationImpl instance) =>
    <String, dynamic>{
      'nameOfDegreeOrDiplomaObtained': instance.nameOfDegreeOrDiplomaObtained,
      'country': instance.country,
      'state': instance.state,
      'college': instance.college,
      'university': instance.university,
      'monthOfAwardingDegreeDiploma': instance.monthOfAwardingDegreeDiploma,
      'yearOfAwardingDegreeDiploma': instance.yearOfAwardingDegreeDiploma,
      'degreeCertificate': instance.degreeCertificate,
      'isNameDifferentInCertificate': instance.isNameDifferentInCertificate,
      'proofOfNameChangeCertificate': instance.proofOfNameChangeCertificate,
      'osid': instance.osid,
    };
