import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_imaging_selection_model.freezed.dart';
part 'post_imaging_selection_model.g.dart';

@freezed
class PostImagingSelectionModel with _$PostImagingSelectionModel{
  const factory PostImagingSelectionModel({
    int? identifier,
    String? endpoint,
    String? baseUrl,
    double? score
    
  }) = _PostImagingSelectionModel;

  factory PostImagingSelectionModel.fromJson(Map<String, dynamic> json) =>
      _$PostImagingSelectionModelFromJson(json); 
}