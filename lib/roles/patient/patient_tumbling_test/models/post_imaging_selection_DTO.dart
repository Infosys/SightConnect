import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_imaging_selection_DTO.freezed.dart';
part 'post_imaging_selection_DTO.g.dart';

@freezed
class PostImagingSelectionDTO with _$PostImagingSelectionDTO{
  const factory PostImagingSelectionDTO({
    int? identifier,
    String? endpoint,
    String? baseUrl,
    double? score
    
  }) = _PostImagingSelectionDTO;

  factory PostImagingSelectionDTO.fromJson(Map<String, dynamic> json) =>
      _$PostImagingSelectionDTOFromJson(json); 
}