import 'package:eye_care_for_all/core/models/timestamp_converter.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/enums/vision_technician_home_enums.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'vt_patient_model.freezed.dart';
part 'vt_patient_model.g.dart';

@freezed
class VTPatientDto with _$VTPatientDto {
  const factory VTPatientDto({
    int? id,
    String? name,
    String? mobile,
    String? yearOfBirth,
    String? monthOfBirth,
    String? dayOfBirth,
    Gender? gender,
    String? districtName,
    String? townName,
    String? pincode,
    int? encounterId,
    @TimestampConverter() DateTime? encounterStartDate,
    String? status,
    SeverityCategory? category,
  }) = _VTPatientDto;

  factory VTPatientDto.fromJson(Map<String, dynamic> json) =>
      _$VTPatientDtoFromJson(json);
}
