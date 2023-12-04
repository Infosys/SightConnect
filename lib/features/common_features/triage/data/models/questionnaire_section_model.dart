import 'package:eye_care_for_all/features/common_features/triage/data/models/assessment_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/questionnaire_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'questionnaire_section_model.freezed.dart';
part 'questionnaire_section_model.g.dart';

@freezed
class QuestionnaireSectionModel with _$QuestionnaireSectionModel{
  const factory QuestionnaireSectionModel({
   int? id,
   int? index,
   String? description,
   QuestionnaireModel? questionnaire,
   AssessmentModel? assessment,
   
    
  }) = _QuestionnaireSectionModel;

  factory QuestionnaireSectionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireSectionModelFromJson(json); 
}