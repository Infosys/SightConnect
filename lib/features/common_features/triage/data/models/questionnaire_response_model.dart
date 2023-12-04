import 'package:eye_care_for_all/core/models/timestamp_converter.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/question_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'questionnaire_response_model.freezed.dart';
part 'questionnaire_response_model.g.dart';

@freezed
class QuestionnaireResponseModel with _$QuestionnaireResponseModel{
  const factory QuestionnaireResponseModel({
   int? id,
   String? name,
   String? description,
   String? version,
   @TimestampConverter() DateTime? approvalDate,
   @TimestampConverter() DateTime? lastReviewDate,
   @TimestampConverter() DateTime? effectiveFrom,
   @TimestampConverter() DateTime? effectiveTill,
   @TimestampConverter() DateTime? creationDate,
    @TimestampConverter() DateTime? lastModifiedDate,
    int? publisherCode,
    String? publisherType,
    List<QuestionResponseModel>? questionResponseDTO,

    
  }) = _QuestionnaireResponseModel;

  factory QuestionnaireResponseModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireResponseModelFromJson(json); 
}