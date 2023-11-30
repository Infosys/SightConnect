import 'package:eye_care_for_all/features/patient/patient_profile/data/models/meta_data_model.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/data/models/profile_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_response_model.freezed.dart';
part 'patient_response_model.g.dart';

@freezed
class PatientResponseModel with _$PatientResponseModel{
  const factory PatientResponseModel({
    String? intent,
    MetaDataModel? metaData,
    ProfileModel? profile,
    
  }) = _PatientResponseModel;

  factory PatientResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PatientResponseModelFromJson(json); 
}