import 'package:eye_care_for_all/features/common_features/triage/data/models/media_list_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/media_list_section_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_list_section_response_model.freezed.dart';
part 'media_list_section_response_model.g.dart';

@freezed
class MediaListSectionResponseModel with _$MediaListSectionResponseModel{
  const factory MediaListSectionResponseModel({
    int? id,
    int? index,
    String? description,
    MediaListSectionModel? supersection,
    List<MediaListResponseModel>? mediaListResponseDTOList,
  }) = _MediaListSectionResponseModel;

  factory MediaListSectionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MediaListSectionResponseModelFromJson(json); 
}