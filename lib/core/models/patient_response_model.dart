import 'package:eye_care_for_all/core/models/timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_response_model.freezed.dart';
part 'patient_response_model.g.dart';

@freezed
class PatientResponseModel with _$PatientResponseModel {
  const factory PatientResponseModel({
    String? intent,
    MetaData? metaData,
    ProfileModel? profile,
  }) = _PatientResponseModel;
  factory PatientResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PatientResponseModelFromJson(json);
}

@freezed
class MetaData with _$MetaData {
  const factory MetaData({
    String? hipId,
    String? counterId,
    String? hprId,
    String? latitude,
    String? longitude,
  }) = _MetaData;
  factory MetaData.fromJson(Map<String, dynamic> json) =>
      _$MetaDataFromJson(json);
}

@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    PatientModel? patient,
  }) = _ProfileModel;
  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}

@freezed
class PatientModel with _$PatientModel {
  const factory PatientModel({
    int? patientId,
    String? registryRef,
    String? abhaNumber,
    String? abhaAddress,
    String? name,
    String? firstName,
    String? lastName,
    String? middleName,
    PatientAccountStatus? accountStatus,
    PatientGender? gender,
    String? profilePhoto,
    String? email,
    String? dayOfBirth,
    String? monthOfBirth,
    String? yearOfBirth,
    int? age,
    String? phoneNumber,
    int? parentPatientId,
    List<AddressModel>? address,
    List<RelatedPartyModel>? relatedParty,
    List<IdentifierModel>? identifiers,
    List<MedicalRecordModel>? medicalRecords,
    DOBSource? dobSource,
    bool? privacyPolicyAccepted,
    String? privacyPolicyTimestamp,
  }) = _PatientModel;
  factory PatientModel.fromJson(Map<String, dynamic> json) =>
      _$PatientModelFromJson(json);
}

@freezed
class AddressModel with _$AddressModel {
  const factory AddressModel({
    int? id,
    String? line,
    String? district,
    String? state,
    String? pincode,
    String? label,
    bool? isPrimary,
    bool? isDeleted,
    AddressStatus? status,
    String? ward,
    String? town,
    String? village,
    String? subDistrict,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}

@freezed
class IdentifierModel with _$IdentifierModel {
  const factory IdentifierModel({
    int? id,
    IdentifierType? type,
    String? value,
  }) = _IdentifierModel;
  factory IdentifierModel.fromJson(Map<String, dynamic> json) =>
      _$IdentifierModelFromJson(json);
}

@freezed
class MedicalRecordModel with _$MedicalRecordModel {
  const factory MedicalRecordModel({
    int? id,
    @TimestampConverter() DateTime? registrationDate,
    String? organisationId,
  }) = _MedicalRecordModel;
  factory MedicalRecordModel.fromJson(Map<String, dynamic> json) =>
      _$MedicalRecordModelFromJson(json);
}

@freezed
class RelatedPartyModel with _$RelatedPartyModel {
  const factory RelatedPartyModel({
    int? patientId,
    FamilyRelationShip? relation,
    int? parentPatientId,
    RelatedPartyStatus? status,
    String? name,
    String? profilePicture,
    int? age,
    String? regRef,
  }) = _RelatedPartyModel;
  factory RelatedPartyModel.fromJson(Map<String, dynamic> json) =>
      _$RelatedPartyModelFromJson(json);
}

enum PatientGender {
  MALE,
  FEMALE,
  OTHER,
}

enum FamilyRelationShip {
  FATHER,
  MOTHER,
  SON,
  DAUGHTER,
  BROTHER,
  SPOUSE,
  CHILD,
  SIBING,
  UNCLE,
  AUNT,
  GRANDFATHER,
  GRANDMOTHER,
  OTHER,
}

enum IdentifierType { ABHA_NUMBER, ABHA_ADDRESS, HPR_ID, COUNTER_ID, MR_CODE }

enum RelatedPartyStatus {
  ACTIVE,
  INACTIVE,
  PENDING_VERIFICATION,
  BLOCKED,
  CLOSED,
  LIMITED,
  DELETED
}

enum AddressStatus { ACTIVE, INACTIVE }

enum PatientAccountStatus {
  ACTIVE,
  INACTIVE,
  PENDING_VERIFICATION,
  BLOCKED,
  CLOSED,
  LIMITED,
  DELETED
}

enum DOBSource { CALCULATED, USER_PROVIDED }
