import 'package:eye_care_for_all/features/common_features/triage/data/enums/assessment_type.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/enums/condition.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/enums/organ.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/media_list_section_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/observation_set_section_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/questionnaire_sections_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'assessment_response_model.freezed.dart';
part 'assessment_response_model.g.dart';

@freezed
class AssessmentResponseModel with _$AssessmentResponseModel{
  const factory AssessmentResponseModel({
    int? id,
    String? name,
    String? organizationCode,
    Condition? condition,
    AssessmentType? assessmentType,
    Organ? organ,
    List<QuestionnaireSectionsResponseModel>? questionnaireSectionsResponseDTOList,
    List<MediaListSectionResponseModel>? mediaListSectionResponseDTOList,
    List<ObservationSetSectionResponseModel>? observationSetSectionResponseDTOList,
    
  }) = _AssessmentResponseModel;

  factory AssessmentResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AssessmentResponseModelFromJson(json); 
}