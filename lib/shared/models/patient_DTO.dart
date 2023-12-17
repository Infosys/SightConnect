import 'package:eye_care_for_all/shared/enums/gender.dart';
import 'package:eye_care_for_all/shared/enums/relationship.dart';
import 'package:eye_care_for_all/shared/models/address_DTO.dart';
import 'package:eye_care_for_all/shared/models/location_DTO.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_DTO.freezed.dart';
part 'patient_DTO.g.dart';

@freezed
class PatientDTO with _$PatientDTO {
  const factory PatientDTO({
    String? counterId,
    String? hprID,
    String? hipCode,
    LocationDTO? location,
    String? abhaId,
    String? abhaAddress,
    String? name,
    Gender? gender,
    String? mobile,
    String? email,
    String? profilePhoto,
    String? yearOfBirth,
    double? monthOfBirth,
    double? dayOfBirth,
    int? age,
    String? parentPatientId,
    Relationship? relationship,
    List<AddressDTO>? address
  }) = _PatientDTO;

  factory PatientDTO.fromJson(Map<String, dynamic> json) =>
      _$PatientDTOFromJson(json); 
}