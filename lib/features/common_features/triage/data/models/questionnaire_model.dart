import 'package:eye_care_for_all/core/models/timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'questionnaire_model.freezed.dart';
part 'questionnaire_model.g.dart';

@freezed
class QuestionnaireModel with _$QuestionnaireModel{
  const factory QuestionnaireModel({
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
    String? publisherType
    
  }) = _QuestionnaireModel;

  factory QuestionnaireModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireModelFromJson(json); 
}