import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/enums/performer_role.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'performer_DTO.freezed.dart';
part 'performer_DTO.g.dart';

@freezed
class PerformerDTO with _$PerformerDTO{
  const factory PerformerDTO({
    PerformerRole? role,
    int? identifier
  }) = _PerformerDTO;

  factory PerformerDTO.fromJson(Map<String, dynamic> json) =>
      _$PerformerDTOFromJson(json); 
}