import 'package:freezed_annotation/freezed_annotation.dart';

part 'vt_search_result_model.freezed.dart';
part 'vt_search_result_model.g.dart';

@freezed
class VTPatientSearchDto with _$VTPatientSearchDto {
  const factory VTPatientSearchDto({
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
  }) = _VTPatientSearchDto;

  factory VTPatientSearchDto.fromJson(Map<String, dynamic> json) =>
      _$VTPatientSearchDtoFromJson(json);
}
