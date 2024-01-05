// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vg_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VgProfileModel _$$_VgProfileModelFromJson(Map<String, dynamic> json) =>
    _$_VgProfileModel(
      id: json['id'] as int?,
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
      specialities: (json['specialities'] as List<dynamic>?)
          ?.map((e) => Speciality.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentWorkDetails: json['currentWorkDetails'] == null
          ? null
          : CurrentWorkDetails.fromJson(
              json['currentWorkDetails'] as Map<String, dynamic>),
      osid: json['osid'] as String?,
    );

Map<String, dynamic> _$$_VgProfileModelToJson(_$_VgProfileModel instance) =>
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
      'specialities': instance.specialities?.map((e) => e.toJson()).toList(),
      'currentWorkDetails': instance.currentWorkDetails?.toJson(),
      'osid': instance.osid,
    };

_$_CommunicationAddress _$$_CommunicationAddressFromJson(
        Map<String, dynamic> json) =>
    _$_CommunicationAddress(
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

Map<String, dynamic> _$$_CommunicationAddressToJson(
        _$_CommunicationAddress instance) =>
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

_$_ContactInformation _$$_ContactInformationFromJson(
        Map<String, dynamic> json) =>
    _$_ContactInformation(
      publicMobileNumber: json['publicMobileNumber'] as String?,
      publicMobileNumberCode: json['publicMobileNumberCode'] as String?,
      publicMobileNumberStatus: json['publicMobileNumberStatus'] as String?,
      landLineNumber: json['landLineNumber'] as String?,
      landLineNumberCode: json['landLineNumberCode'] as String?,
      publicEmail: json['publicEmail'] as String?,
      publicEmailStatus: json['publicEmailStatus'] as String?,
      osid: json['osid'] as String?,
    );

Map<String, dynamic> _$$_ContactInformationToJson(
        _$_ContactInformation instance) =>
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

_$_CurrentWorkDetails _$$_CurrentWorkDetailsFromJson(
        Map<String, dynamic> json) =>
    _$_CurrentWorkDetails(
      currentlyWorking: json['currentlyWorking'] as String?,
      purposeOfWork: json['purposeOfWork'] as String?,
      chooseWorkStatus: json['chooseWorkStatus'] as String?,
      reasonForNotWorking: json['reasonForNotWorking'] as String?,
      certificateAttachment: json['certificateAttachment'] as String?,
      facilityDeclarationData: json['facilityDeclarationData'] == null
          ? null
          : Speciality.fromJson(
              json['facilityDeclarationData'] as Map<String, dynamic>),
      osid: json['osid'] as String?,
    );

Map<String, dynamic> _$$_CurrentWorkDetailsToJson(
        _$_CurrentWorkDetails instance) =>
    <String, dynamic>{
      'currentlyWorking': instance.currentlyWorking,
      'purposeOfWork': instance.purposeOfWork,
      'chooseWorkStatus': instance.chooseWorkStatus,
      'reasonForNotWorking': instance.reasonForNotWorking,
      'certificateAttachment': instance.certificateAttachment,
      'facilityDeclarationData': instance.facilityDeclarationData?.toJson(),
      'osid': instance.osid,
    };

_$_Speciality _$$_SpecialityFromJson(Map<String, dynamic> json) =>
    _$_Speciality(
      osid: json['osid'] as String?,
    );

Map<String, dynamic> _$$_SpecialityToJson(_$_Speciality instance) =>
    <String, dynamic>{
      'osid': instance.osid,
    };

_$_PersonalInformation _$$_PersonalInformationFromJson(
        Map<String, dynamic> json) =>
    _$_PersonalInformation(
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

Map<String, dynamic> _$$_PersonalInformationToJson(
        _$_PersonalInformation instance) =>
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

_$_RegistrationAcademic _$$_RegistrationAcademicFromJson(
        Map<String, dynamic> json) =>
    _$_RegistrationAcademic(
      category: json['category'] as String?,
      registrationData: (json['registrationData'] as List<dynamic>?)
          ?.map((e) => RegistrationDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
      osid: json['osid'] as String?,
    );

Map<String, dynamic> _$$_RegistrationAcademicToJson(
        _$_RegistrationAcademic instance) =>
    <String, dynamic>{
      'category': instance.category,
      'registrationData':
          instance.registrationData?.map((e) => e.toJson()).toList(),
      'osid': instance.osid,
    };

_$_RegistrationDatum _$$_RegistrationDatumFromJson(Map<String, dynamic> json) =>
    _$_RegistrationDatum(
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

Map<String, dynamic> _$$_RegistrationDatumToJson(
        _$_RegistrationDatum instance) =>
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

_$_Qualification _$$_QualificationFromJson(Map<String, dynamic> json) =>
    _$_Qualification(
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

Map<String, dynamic> _$$_QualificationToJson(_$_Qualification instance) =>
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
