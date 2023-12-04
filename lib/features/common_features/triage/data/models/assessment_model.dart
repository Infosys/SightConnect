import 'package:eye_care_for_all/features/common_features/triage/data/enums/assessment_type.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/enums/condition.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/enums/organ.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'assessment_model.freezed.dart';
part 'assessment_model.g.dart';

@freezed
class AssessmentModel with _$AssessmentModel{
  const factory AssessmentModel({
    int? id,
    String? name,
    String? organizationCode,
    Condition? condition,
    AssessmentType? assessmentType,
    Organ? organ,
    String? version
  }) = _AssessmentModel;

  factory AssessmentModel.fromJson(Map<String, dynamic> json) =>
      _$AssessmentModelFromJson(json); 
}