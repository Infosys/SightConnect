import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    String? requestId,
    String? timestamp,
    Map<String, dynamic>? intent,
    Map<String, dynamic>? location,
    Profile? profile,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}

@freezed
class Profile with _$Profile {
  const factory Profile({
    String? hipCode,
    Patient? patient,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}

@freezed
class Patient with _$Patient {
  const factory Patient({
    String? healthId,
    String? healthIdNumber,
    String? name,
    String? gender,
    String? profilePhoto,
    List<PatientAddress>? address,
    int? yearOfBirth,
    int? dayOfBirth,
    int? monthOfBirth,
    String? parentPatientId,
    List<RelatedParty>? relatedParty,
    List<Map<String, dynamic>>? identifiers,
    List<Map<String, dynamic>>? medicalRecords,
  }) = _Patient;

  factory Patient.fromJson(Map<String, dynamic> json) =>
      _$PatientFromJson(json);
}

@freezed
class PatientAddress with _$PatientAddress {
  const factory PatientAddress({
    String? line,
    String? district,
    String? state,
    String? pincode,
    String? label,
    bool? isPrimary,
    bool? isDeleted,
    String? status,
  }) = _PatientAddress;

  factory PatientAddress.fromJson(Map<String, dynamic> json) =>
      _$PatientAddressFromJson(json);
}

@freezed
class RelatedParty with _$RelatedParty {
  const factory RelatedParty({
    String? patientId,
    String? name,
    String? profilePhoto,
    String? relationship,
    String? age,
  }) = _RelatedParty;

  factory RelatedParty.fromJson(Map<String, dynamic> json) =>
      _$RelatedPartyFromJson(json);
}
