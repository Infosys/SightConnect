import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_info.freezed.dart';
part 'patient_info.g.dart';

@freezed
class PatientInfo with _$PatientInfo {
  const factory PatientInfo({
    required int id,
    String? registryRef,
    String? mobileNumber,
    bool? isDeleted,
    bool? deleted,
  }) = _PatientInfo;

  factory PatientInfo.fromJson(Map<String, Object?> json) =>
      _$PatientInfoFromJson(json);
}
