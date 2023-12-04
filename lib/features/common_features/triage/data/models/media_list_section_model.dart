import 'package:eye_care_for_all/features/common_features/triage/data/models/assessment_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/media_list_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_list_section_model.freezed.dart';
part 'media_list_section_model.g.dart';

@freezed
class MediaListSectionModel with _$MediaListSectionModel{
  const factory MediaListSectionModel({
    int? id,
    int? index,
    String? description,
    MediaListModel? mediaList,
    AssessmentModel? assessment,
  }) = _MediaListSectionModel;

  factory MediaListSectionModel.fromJson(Map<String, dynamic> json) =>
      _$MediaListSectionModelFromJson(json); 
}