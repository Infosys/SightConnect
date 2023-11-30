import 'package:eye_care_for_all/features/common_features/auth/data/enums/gender.dart';
import 'package:eye_care_for_all/features/common_features/auth/data/models/address_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'identifier_model.dart';
import 'medical_record_model.dart';
import 'related_party_model.dart';

part 'extended_patient_model.freezed.dart';
part 'extended_patient_model.g.dart';

@freezed
class ExtendedPatientModel with _$ExtendedPatientModel {
  const factory ExtendedPatientModel({
    int? abhaNumber,
    String? abhaAddress,
    String? name,
    Gender? gender,
    String? dayOfBirth,
    String? monthOfBirth,
    String? yearOfBirth,
    String? phoneNumber,
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
