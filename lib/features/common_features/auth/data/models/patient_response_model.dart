import 'package:freezed_annotation/freezed_annotation.dart';

import 'meta_data_model.dart';
import 'profile_model.dart';

part 'patient_response_model.freezed.dart';
part 'patient_response_model.g.dart';

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
