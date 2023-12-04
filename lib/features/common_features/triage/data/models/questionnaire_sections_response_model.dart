import 'package:eye_care_for_all/features/common_features/triage/data/models/questionnaire_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/questionnaire_section_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'questionnaire_sections_response_model.freezed.dart';
part 'questionnaire_sections_response_model.g.dart';

@freezed
class QuestionnaireSectionsResponseModel with _$QuestionnaireSectionsResponseModel{
  const factory QuestionnaireSectionsResponseModel({
      int? id,
      int? index,
      String? description,
      QuestionnaireSectionModel? supersection,
      List<QuestionnaireResponseModel>? questionnaireResponseDTOList,
    
  }) = _QuestionnaireSectionsResponseModel;

  factory QuestionnaireSectionsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireSectionsResponseModelFromJson(json); 
}