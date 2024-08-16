import 'package:freezed_annotation/freezed_annotation.dart';

part 'eb_form_config_response_model.freezed.dart';
part 'eb_form_config_response_model.g.dart';

@freezed
class EBFormConfigResponseModel with _$EBFormConfigResponseModel {
  const factory EBFormConfigResponseModel({
    @JsonKey(name: "stageName") String? stageName,
    @JsonKey(name: "stageVersion") String? stageVersion,
    @JsonKey(name: "stageConfig") StageConfig? stageConfig,
  }) = _EBFormConfigResponseModel;

  factory EBFormConfigResponseModel.fromJson(Map<String, dynamic> json) =>
      _$EBFormConfigResponseModelFromJson(json);
}

@freezed
class StageConfig with _$StageConfig {
  const factory StageConfig() = _StageConfig;

  factory StageConfig.fromJson(Map<String, dynamic> json) =>
      _$StageConfigFromJson(json);
}
