import 'package:eye_care_for_all/features/common_features/triage/data/models/post_answer_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_question_response_model.freezed.dart';
part 'post_question_response_model.g.dart';

@freezed
class PostQuestionResponseModel with _$PostQuestionResponseModel{
  const factory PostQuestionResponseModel({
    int? linkId,
    double? score,
    List<PostAnswerModel>? answer
  }) = _PostQuestionResponseModel;

  factory PostQuestionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PostQuestionResponseModelFromJson(json); 
}