import 'package:eye_care_for_all/features/common_features/auth/data/enums/gender.dart';
import 'package:eye_care_for_all/features/common_features/auth/data/enums/relationship.dart';
import 'package:eye_care_for_all/features/common_features/auth/data/models/address_model.dart';
import 'package:eye_care_for_all/features/common_features/auth/data/models/location_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_model.freezed.dart';
part 'patient_model.g.dart';

@freezed
class PatientModel with _$PatientModel {
  const factory PatientModel({
    String? counterId,
    String? hprID,
    String? hipCode,
    LocationModel? location,
    String? abhaId,
    String? abhaAddress,
    String? name,
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
    List<AddressModel>? address
  }) = _PatientModel;

  factory PatientModel.fromJson(Map<String, dynamic> json) =>
      _$PatientModelFromJson(json); 
}