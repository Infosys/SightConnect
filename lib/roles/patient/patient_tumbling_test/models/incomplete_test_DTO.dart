import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/enums/test_name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'incomplete_test_DTO.freezed.dart';
part 'incomplete_test_DTO.g.dart';

@freezed
class IncompleteTestDTO with _$IncompleteTestDTO{
  const factory IncompleteTestDTO({
    int? id,
    TestName? testName
    
  }) = _IncompleteTestDTO;

  factory IncompleteTestDTO.fromJson(Map<String, dynamic> json) =>
      _$IncompleteTestDTOFromJson(json); 
}