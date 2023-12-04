import 'package:eye_care_for_all/core/models/timestamp_converter.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/media_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_list_response_model.freezed.dart';
part 'media_list_response_model.g.dart';

@freezed
class MediaListResponseModel with _$MediaListResponseModel{
  const factory MediaListResponseModel({
    int? id,
    String? name,
    String? version,
    String? description,
    @TimestampConverter() DateTime? creationDate,
    List<MediaResponseModel>? mediaResponseDTOList,
  }) = _MediaListResponseModel;

  factory MediaListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MediaListResponseModelFromJson(json); 
}