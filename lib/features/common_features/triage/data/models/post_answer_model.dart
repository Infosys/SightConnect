import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_answer_model.freezed.dart';
part 'post_answer_model.g.dart';

@freezed
class PostAnswerModel with _$PostAnswerModel{
  const factory PostAnswerModel({
    String? value,
    double? score
    
  }) = _PostAnswerModel;

  factory PostAnswerModel.fromJson(Map<String, dynamic> json) =>
      _$PostAnswerModelFromJson(json); 
}