import 'package:eye_care_for_all/core/models/timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    String? intent,
    MetaData? metaData,
    Profile? profile,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}

@freezed
class Profile with _$Profile {
  const factory Profile({
    Patient? patient,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}

@freezed
class Patient with _$Patient {
  const factory Patient({
    int? abhaNumber,
    String? abhaAddress,
    String? name,
    Gender? gender,
    @TimestampConverter() DateTime? dayOfBirth,
    @TimestampConverter() DateTime? monthOfBirth,
    @TimestampConverter() DateTime? yearOfBirth,
    String? phoneNumber,
    int? parentPatientId,
    List<PatientAddress>? address,
    List<RelatedParty>? relatedParty,
    List<Identifiers>? identifiers,
    List<MedicalRecords>? medicalRecords,
  }) = _Patient;

  factory Patient.fromJson(Map<String, dynamic> json) =>
      _$PatientFromJson(json);
}

@freezed
class PatientAddress with _$PatientAddress {
  const factory PatientAddress({
    int? id,
    String? line,
    String? district,
    String? state,
    String? pincode,
    String? label,
    bool? isPrimary,
    bool? isDeleted,
    Status? status,
  }) = _PatientAddress;

  factory PatientAddress.fromJson(Map<String, dynamic> json) =>
      _$PatientAddressFromJson(json);
}

@freezed
class RelatedParty with _$RelatedParty {
  const factory RelatedParty({
    int? patientId,
    Relation? relation,
    int? parentPatientId,
    String? regRef,
  }) = _RelatedParty;

  factory RelatedParty.fromJson(Map<String, dynamic> json) =>
      _$RelatedPartyFromJson(json);
}

@freezed
class Identifiers with _$Identifiers {
  const factory Identifiers({
    int? id,
    IdentfierType? type,
    String? value,
  }) = _Identifiers;

  factory Identifiers.fromJson(Map<String, dynamic> json) =>
      _$IdentifiersFromJson(json);
}

@freezed
class MedicalRecords with _$MedicalRecords {
  const factory MedicalRecords({
    int? id,
    @TimestampConverter() DateTime? registrationDate,
    String? organisationId,
  }) = _MedicalRecords;

  factory MedicalRecords.fromJson(Map<String, dynamic> json) =>
      _$MedicalRecordsFromJson(json);
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

enum Gender { MALE, FEMALE, OTHERS }

enum Status { ACTIVE, INACTIVE }

enum Relation { FATHER, MOTHER, SPOUSE, CHILD, OTHERS }

enum IdentfierType {
  EMAIL,
  MOBILE,
}
