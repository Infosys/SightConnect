import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/enums/srouce.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/models/incomplete_test_DTO.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/models/performer_DTO.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/models/post_imaging_selection_DTO.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/models/post_observations_DTO.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/models/post_question_response_DTO.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'triage_DTO.freezed.dart';
part 'triage_DTO.g.dart';

@freezed
class TriageDTO with _$TriageDTO {
  const factory TriageDTO({
    int? patientId,
    int? encounterId,
    String? serviceType,
    int? organizationCode,
    List<PerformerDTO>? performer,
    int? assessmentCode,
    String? assessmentVersion,
    String? issued,
    String? userStartDate,
    Source? source,
    String? sourceVersion,
    List<IncompleteTestDTO>? incompleteSection,
    List<PostImagingSelectionDTO>? imagingSelection,
    List<PostObservationsDTO>? observations,
    List<PostQuestionResponseDTO>? questionResponse
  }) = _TriageDTO;

  factory TriageDTO.fromJson(Map<String, dynamic> json) =>
      _$TriageDTOFromJson(json); 
}