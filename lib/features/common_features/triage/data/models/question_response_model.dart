import 'package:eye_care_for_all/features/common_features/triage/data/enums/constraint.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/enums/disabled_display.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/enums/enable_behaviour.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/action_on_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_response_model.freezed.dart';
part 'question_response_model.g.dart';

@freezed
class QuestionResponseModel with _$QuestionResponseModel{
  const factory QuestionResponseModel({
    int? id,
    String? definition,
    Constraint? constraint,
    String? defaultValue,
    EnableBehaviour? enableBehaviour,
    int? maxLength,
    DisabledDisplay? disabledDisplay,
    String? prefix,
    int? weight,
    String? image,
    List<ActionOnResponseModel>? actionOnResponseDTO,
    bool? readOnly,
    bool? required
    
  }) = _QuestionResponseModel;

  factory QuestionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionResponseModelFromJson(json); 
}