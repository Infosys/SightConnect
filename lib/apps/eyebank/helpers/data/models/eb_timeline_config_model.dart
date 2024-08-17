import 'package:freezed_annotation/freezed_annotation.dart';

part 'eb_timeline_config_model.freezed.dart';
part 'eb_timeline_config_model.g.dart';

@freezed
class EbTimelineConfigModel with _$EbTimelineConfigModel {
  const factory EbTimelineConfigModel({
    List<String>? stages,
    String? timelineName,
    String? timelineVersion,
  }) = _EbTimelineConfigModel;

  factory EbTimelineConfigModel.fromJson(Map<String, dynamic> json) =>
      _$EbTimelineConfigModelFromJson(json);
}
