import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/models/post_answer_DTO.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_question_response_DTO.freezed.dart';
part 'post_question_response_DTO.g.dart';

@freezed
class PostQuestionResponseDTO with _$PostQuestionResponseDTO{
  const factory PostQuestionResponseDTO({
    int? linkId,
    double? score,
    List<PostAnswerDTO>? answer
  }) = _PostQuestionResponseDTO;

  factory PostQuestionResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$PostQuestionResponseDTOFromJson(json); 
}