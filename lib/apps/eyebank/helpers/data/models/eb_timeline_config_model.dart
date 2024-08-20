import 'package:freezed_annotation/freezed_annotation.dart';

part 'eb_timeline_config_model.freezed.dart';
part 'eb_timeline_config_model.g.dart';

@freezed
class EbTimelineConfigModel with _$EbTimelineConfigModel {
  const factory EbTimelineConfigModel({
    String? timelineName,
    String? timelineVersion,
    List<Stage>? stages,
  }) = _EbTimelineConfigModel;

  factory EbTimelineConfigModel.fromJson(Map<String, dynamic> json) =>
      _$EbTimelineConfigModelFromJson(json);
}

@freezed
class Stage with _$Stage {
  const factory Stage({
    String? stageName,
    String? stageVersion,
    @Default(false) repeats,
    int? minRepeat,
    int? maxRepeat,
  }) = _Stage;

  factory Stage.fromJson(Map<String, dynamic> json) => _$StageFromJson(json);
}
