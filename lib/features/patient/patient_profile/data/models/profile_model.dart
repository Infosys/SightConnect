import 'package:eye_care_for_all/features/patient/patient_profile/data/models/extended_patient_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class ProfileModel with _$ProfileModel{
  const factory ProfileModel({
    ExtendedPatientModel? patient
    
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json); 
}