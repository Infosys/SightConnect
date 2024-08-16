import 'package:freezed_annotation/freezed_annotation.dart';

part 'eb_form_intimation_response_model.freezed.dart';
part 'eb_form_intimation_response_model.g.dart';

@freezed
class EBFormIntimationResponseModel with _$EBFormIntimationResponseModel {
  const factory EBFormIntimationResponseModel({
    @JsonKey(name: "timelineName") String? timelineName,
    @JsonKey(name: "timelineVersion") String? timelineVersion,
    @JsonKey(name: "stage") Stage? stage,
  }) = _EBFormIntimationResponseModel;

  factory EBFormIntimationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$EBFormIntimationResponseModelFromJson(json);
}

@freezed
class Stage with _$Stage {
  const factory Stage({
    @JsonKey(name: "stageName") String? stageName,
    @JsonKey(name: "stageVersion") String? stageVersion,
    @JsonKey(name: "stageConfig") StageConfig? stageConfig,
  }) = _Stage;

  factory Stage.fromJson(Map<String, dynamic> json) => _$StageFromJson(json);
}

@freezed
class StageConfig with _$StageConfig {
  const factory StageConfig() = _StageConfig;

  factory StageConfig.fromJson(Map<String, dynamic> json) =>
      _$StageConfigFromJson(json);
}
