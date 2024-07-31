import 'package:freezed_annotation/freezed_annotation.dart';

part 'vg_event_patient_model.freezed.dart';
part 'vg_event_patient_model.g.dart';

@freezed
class VisionGuardianEventPatientResponseModel
    with _$VisionGuardianEventPatientResponseModel {
  factory VisionGuardianEventPatientResponseModel({
    @JsonKey(name: 'patientId') int? patientId,
    @JsonKey(name: 'registryRef') String? registryRef,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'firstName') String? firstName,
    @JsonKey(name: 'lastName') String? lastName,
    @JsonKey(name: 'middleName') String? middleName,
    @JsonKey(name: 'accountStatus') String? accountStatus,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'profilePhoto') String? profilePhoto,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'dayOfBirth') String? dayOfBirth,
    @JsonKey(name: 'monthOfBirth') String? monthOfBirth,
    @JsonKey(name: 'yearOfBirth') String? yearOfBirth,
    @JsonKey(name: 'phoneNumber') String? phoneNumber,
    @JsonKey(name: 'parentPatientId') int? parentPatientId,
    @JsonKey(name: 'address') List<AddressModel>? address,
    @JsonKey(name: 'dobSource') String? dobSource,
  }) = _VisionGuardianEventPatientResponseModel;

  factory VisionGuardianEventPatientResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$VisionGuardianEventPatientResponseModelFromJson(json);
}

@freezed
class AddressModel with _$AddressModel {
  factory AddressModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'line') String? line,
    @JsonKey(name: 'district') String? district,
    @JsonKey(name: 'state') String? state,
    @JsonKey(name: 'pincode') String? pincode,
    @JsonKey(name: 'label') String? label,
    @JsonKey(name: 'isPrimary') bool? isPrimary,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'ward') String? ward,
    @JsonKey(name: 'town') String? town,
    @JsonKey(name: 'village') String? village,
    @JsonKey(name: 'subDistrict') String? subDistrict,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}
