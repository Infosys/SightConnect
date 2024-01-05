import 'package:eye_care_for_all/core/models/timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vt_profile_model.freezed.dart';
part 'vt_profile_model.g.dart';

@freezed
class VtProfileModel with _$VtProfileModel {
  const factory VtProfileModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "profilePhoto") String? profilePhoto,
    @JsonKey(name: "healthProfessionalType") String? healthProfessionalType,
    @JsonKey(name: "practitionerType") String? practitionerType,
    @JsonKey(name: "officialMobileCode") String? officialMobileCode,
    @JsonKey(name: "officialMobile") String? officialMobile,
    @JsonKey(name: "officialEmail") String? officialEmail,
    @JsonKey(name: "visibleProfilePicture") String? visibleProfilePicture,
    @JsonKey(name: "personalInformation")
    PersonalInformation? personalInformation,
    @JsonKey(name: "communicationAddress")
    CommunicationAddress? communicationAddress,
    @JsonKey(name: "contactInformation") ContactInformation? contactInformation,
    @JsonKey(name: "registrationAcademic")
    RegistrationAcademic? registrationAcademic,
    @JsonKey(name: "currentWorkDetails") CurrentWorkDetails? currentWorkDetails,
    @JsonKey(name: "availableForTeleconsultation")
    bool? availableForTeleconsultation,
    @JsonKey(name: "practiceGrants") List<PracticeGrant>? practiceGrants,
    @JsonKey(name: "osid") String? osid,
  }) = _VtProfileModel;

  factory VtProfileModel.fromJson(Map<String, dynamic> json) =>
      _$VtProfileModelFromJson(json);
}

@freezed
class CommunicationAddress with _$CommunicationAddress {
  const factory CommunicationAddress({
    @JsonKey(name: "isCommunicationAddressAsPerKYC")
    String? isCommunicationAddressAsPerKyc,
    @JsonKey(name: "address") String? address,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "country") String? country,
    @JsonKey(name: "state") String? state,
    @JsonKey(name: "city") String? city,
    @JsonKey(name: "postalCode") String? postalCode,
    @JsonKey(name: "osid") String? osid,
  }) = _CommunicationAddress;

  factory CommunicationAddress.fromJson(Map<String, dynamic> json) =>
      _$CommunicationAddressFromJson(json);
}

@freezed
class ContactInformation with _$ContactInformation {
  const factory ContactInformation({
    @JsonKey(name: "publicMobileNumber") String? publicMobileNumber,
    @JsonKey(name: "publicMobileNumberCode") String? publicMobileNumberCode,
    @JsonKey(name: "publicMobileNumberStatus") String? publicMobileNumberStatus,
    @JsonKey(name: "landLineNumber") String? landLineNumber,
    @JsonKey(name: "landLineNumberCode") String? landLineNumberCode,
    @JsonKey(name: "publicEmail") String? publicEmail,
    @JsonKey(name: "publicEmailStatus") String? publicEmailStatus,
    @JsonKey(name: "osid") String? osid,
  }) = _ContactInformation;

  factory ContactInformation.fromJson(Map<String, dynamic> json) =>
      _$ContactInformationFromJson(json);
}

@freezed
class CurrentWorkDetails with _$CurrentWorkDetails {
  const factory CurrentWorkDetails({
    @JsonKey(name: "currentlyWorking") String? currentlyWorking,
    @JsonKey(name: "purposeOfWork") String? purposeOfWork,
    @JsonKey(name: "chooseWorkStatus") String? chooseWorkStatus,
    @JsonKey(name: "reasonForNotWorking") String? reasonForNotWorking,
    @JsonKey(name: "certificateAttachment") String? certificateAttachment,
    @JsonKey(name: "osid") String? osid,
  }) = _CurrentWorkDetails;

  factory CurrentWorkDetails.fromJson(Map<String, dynamic> json) =>
      _$CurrentWorkDetailsFromJson(json);
}

@freezed
class PersonalInformation with _$PersonalInformation {
  const factory PersonalInformation({
    @JsonKey(name: "salutation") String? salutation,
    @JsonKey(name: "firstName") String? firstName,
    @JsonKey(name: "lastName") String? lastName,
    @JsonKey(name: "nationality") String? nationality,
    @JsonKey(name: "placeOfBirthState") String? placeOfBirthState,
    @JsonKey(name: "district") String? district,
    @JsonKey(name: "city") String? city,
    @JsonKey(name: "languagesSpoken") String? languagesSpoken,
    @JsonKey(name: "osid") String? osid,
  }) = _PersonalInformation;

  factory PersonalInformation.fromJson(Map<String, dynamic> json) =>
      _$PersonalInformationFromJson(json);
}

@freezed
class PracticeGrant with _$PracticeGrant {
  const factory PracticeGrant({
    @TimestampConverter() DateTime? registrationDate,
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "grantType") String? grantType,
    @JsonKey(name: "grantRole") String? grantRole,
    @JsonKey(name: "department") String? department,
    @JsonKey(name: "organization") Organization? organization,
  }) = _PracticeGrant;

  factory PracticeGrant.fromJson(Map<String, dynamic> json) =>
      _$PracticeGrantFromJson(json);
}

@freezed
class Organization with _$Organization {
  const factory Organization({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "regRef") String? regRef,
    @JsonKey(name: "facilityType") String? facilityType,
    @JsonKey(name: "tenant") Tenant? tenant,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "governingOrganization") dynamic governingOrganization,
  }) = _Organization;

  factory Organization.fromJson(Map<String, dynamic> json) =>
      _$OrganizationFromJson(json);
}

@freezed
class Tenant with _$Tenant {
  const factory Tenant({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
  }) = _Tenant;
  factory Tenant.fromJson(Map<String, dynamic> json) => _$TenantFromJson(json);
}

@freezed
class RegistrationAcademic with _$RegistrationAcademic {
  const factory RegistrationAcademic({
    @JsonKey(name: "category") String? category,
    @JsonKey(name: "registrationData")
    List<RegistrationDatum>? registrationData,
    @JsonKey(name: "osid") String? osid,
  }) = _RegistrationAcademic;
  factory RegistrationAcademic.fromJson(Map<String, dynamic> json) =>
      _$RegistrationAcademicFromJson(json);
}

@freezed
class RegistrationDatum with _$RegistrationDatum {
  const factory RegistrationDatum({
    @JsonKey(name: "registeredWithCouncil") String? registeredWithCouncil,
    @JsonKey(name: "registrationNumber") String? registrationNumber,
    @JsonKey(name: "registrationCertificate") String? registrationCertificate,
    @JsonKey(name: "isNameDifferentInCertificate")
    String? isNameDifferentInCertificate,
    @JsonKey(name: "proofOfNameChangeCertificate")
    String? proofOfNameChangeCertificate,
    @JsonKey(name: "categoryId") String? categoryId,
    @JsonKey(name: "qualifications") List<Qualification>? qualifications,
    @JsonKey(name: "osid") String? osid,
  }) = _RegistrationDatum;
  factory RegistrationDatum.fromJson(Map<String, dynamic> json) =>
      _$RegistrationDatumFromJson(json);
}

@freezed
class Qualification with _$Qualification {
  const factory Qualification({
    @JsonKey(name: "nameOfDegreeOrDiplomaObtained")
    String? nameOfDegreeOrDiplomaObtained,
    @JsonKey(name: "country") String? country,
    @JsonKey(name: "state") String? state,
    @JsonKey(name: "college") String? college,
    @JsonKey(name: "university") String? university,
    @JsonKey(name: "monthOfAwardingDegreeDiploma")
    String? monthOfAwardingDegreeDiploma,
    @JsonKey(name: "yearOfAwardingDegreeDiploma")
    String? yearOfAwardingDegreeDiploma,
    @JsonKey(name: "degreeCertificate") String? degreeCertificate,
    @JsonKey(name: "isNameDifferentInCertificate")
    String? isNameDifferentInCertificate,
    @JsonKey(name: "proofOfNameChangeCertificate")
    String? proofOfNameChangeCertificate,
    @JsonKey(name: "osid") String? osid,
  }) = _Qualification;
  factory Qualification.fromJson(Map<String, dynamic> json) =>
      _$QualificationFromJson(json);
}
