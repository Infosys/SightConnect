import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_answer_DTO.freezed.dart';
part 'post_answer_DTO.g.dart';

@freezed
class PostAnswerDTO with _$PostAnswerDTO{
  const factory PostAnswerDTO({
    String? value,
    double? score
    
  }) = _PostAnswerDTO;

  factory PostAnswerDTO.fromJson(Map<String, dynamic> json) =>
      _$PostAnswerDTOFromJson(json); 
}