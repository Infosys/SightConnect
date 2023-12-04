import 'package:eye_care_for_all/features/common_features/triage/data/enums/media_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_response_model.freezed.dart';
part 'media_response_model.g.dart';

@freezed
class MediaResponseModel with _$MediaResponseModel{
  const factory MediaResponseModel({
    int? id,
    String? name,
    String? description,
    MediaType? type,
    int? maxSize,
    String? fileType
  }) = _MediaResponseModel;

  factory MediaResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MediaResponseModelFromJson(json); 
}