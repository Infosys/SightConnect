import 'package:eye_care_for_all/core/models/timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_list_model.freezed.dart';
part 'media_list_model.g.dart';

@freezed
class MediaListModel with _$MediaListModel{
  const factory MediaListModel({
    int? id,
    String? name,
    String? version,
    String? description,
    @TimestampConverter() DateTime? creationDate,
  }) = _MediaListModel;

  factory MediaListModel.fromJson(Map<String, dynamic> json) =>
      _$MediaListModelFromJson(json); 
}