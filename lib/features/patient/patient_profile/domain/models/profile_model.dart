import 'package:eye_care_for_all/core/models/timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'enums/gender.dart';
import 'enums/identifier_type.dart';
import 'enums/relationship.dart';
import 'enums/status.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class PatientResponseModel with _$PatientResponseModel {
  const factory PatientResponseModel({
    String? intent,
    MetaDataModel? metaData,
    ProfileModel? profile,
  }) = _PatientResponseModel;

  factory PatientResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PatientResponseModelFromJson(json);
}

@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    ExtendedPatientModel? patient,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}

@freezed
class RelatedPartyModel with _$RelatedPartyModel {
  const RelatedPartyModel._();
  const factory RelatedPartyModel({
    int? patientId,
    Relationship? relation,
    int? parentPatientId,
    String? regRef,
    String? name,
    String? profilePicture,
    int? age,
  }) = _RelatedPartyModel;

  static String relationMapper(Relationship relationship) {
    return switch (relationship) {
      Relationship.FATHER => 'Father',
      Relationship.MOTHER => 'Mother',
      Relationship.SPOUSE => 'Spouse',
      Relationship.CHILD => 'Child',
      Relationship.SIBING => 'Sibling',
      Relationship.UNCLE => 'Uncle',
      Relationship.AUNT => 'Aunt',
      Relationship.GRANDFATHER => 'Grandfather',
      Relationship.GRANDMOTHER => 'Grandmother',
      Relationship.OTHER => 'Other',
    };
  }

  factory RelatedPartyModel.fromJson(Map<String, dynamic> json) =>
      _$RelatedPartyModelFromJson(json);
}

@freezed
class PatientModel with _$PatientModel {
  const factory PatientModel({
    int? id,
    String? regRef,
    String? counterId,
    String? hprID,
    String? hipCode,
    LocationModel? location,
    String? abhaId,
    String? abhaAddress,
    String? firstName,
    String? middleName,
    String? lastName,
    Gender? gender,
    String? mobile,
    String? email,
    String? profilePhoto,
    String? yearOfBirth,
    String? monthOfBirth,
    String? dayOfBirth,
    int? age,
    String? parentPatientId,
    Relationship? relationship,
    List<AddressModel>? address,
  }) = _PatientModel;

  factory PatientModel.fromJson(Map<String, dynamic> json) =>
      _$PatientModelFromJson(json);
}

@freezed
class MetaDataModel with _$MetaDataModel {
  const factory MetaDataModel({
    String? hipId,
    String? counterId,
    String? hprId,
    String? latitude,
    String? longitude,
  }) = _MetaDataModel;

  factory MetaDataModel.fromJson(Map<String, dynamic> json) =>
      _$MetaDataModelFromJson(json);
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
class LocationModel with _$LocationModel {
  const factory LocationModel({
    String? latitude,
    String? longitude,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}

@freezed
class IdentifierModel with _$IdentifierModel {
  const factory IdentifierModel({
    int? id,
    IdentifierType? type,
  }) = _IdentifierModel;

  factory IdentifierModel.fromJson(Map<String, dynamic> json) =>
      _$IdentifierModelFromJson(json);
}

@freezed
class ExtendedPatientModel with _$ExtendedPatientModel {
  const factory ExtendedPatientModel({
    int? patientId,
    String? osid,
    int? abhaNumber,
    String? abhaAddress,
    String? name,
    Gender? gender,
    String? dayOfBirth,
    String? monthOfBirth,
    String? yearOfBirth,
    String? phoneNumber,
    int? age,
    String? email,
    String? profilePhoto,
    int? parentPatientId,
    List<AddressModel>? address,
    List<RelatedPartyModel>? relatedParty,
    List<IdentifierModel>? identifiers,
    List<MedicalRecordModel>? medicalRecords,
  }) = _ExtendedPatientModel;

  factory ExtendedPatientModel.fromJson(Map<String, dynamic> json) =>
      _$ExtendedPatientModelFromJson(json);
}

@freezed
class AddressModel with _$AddressModel {
  const factory AddressModel(
      {int? id,
      String? line,
      String? ward,
      String? town,
      String? village,
      String? subDistrict,
      String? district,
      String? state,
      String? pincode,
      String? label,
      Status? status,
      bool? primary,
      bool? deleted}) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}
