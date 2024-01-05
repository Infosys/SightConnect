import 'package:freezed_annotation/freezed_annotation.dart';

part 'vg_patient_response_model.freezed.dart';
part 'vg_patient_response_model.g.dart';

@freezed
class VisionGuardianPatientResponseModel with _$VisionGuardianPatientResponseModel {
  factory VisionGuardianPatientResponseModel({
    int? id,
    String? name,
    String? mobile,
    String? yearOfBirth,
    String? monthOfBirth,
    String? dayOfBirth,
    String? gender,
    String? districtName,
    String? townName,
    String? pincode,
    int? encounterId,
    String? encounterStartDate,
    String? status,
    String? category,
  }) = _VisionGuardianPatientResponseModel;

  factory VisionGuardianPatientResponseModel.fromJson(Map<String, dynamic> json) =>
      _$VisionGuardianPatientResponseModelFromJson(json);
       
}

