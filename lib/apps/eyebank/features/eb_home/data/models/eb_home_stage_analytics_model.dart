import 'package:eye_care_for_all/apps/eyebank/helpers/domain/enums/global_eb_enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'eb_home_stage_analytics_model.freezed.dart';
part 'eb_home_stage_analytics_model.g.dart';

@freezed
class EbHomeStageAnalyticsModel with _$EbHomeStageAnalyticsModel {
  const factory EbHomeStageAnalyticsModel({
    @JsonKey(
        name: "code",
        fromJson: _ebStageNameFromJson,
        toJson: _ebStageNameToJson)
    @Default(EBStageName.UNDEFINED)
    EBStageName code,
    @JsonKey(name: "count") int? count,
  }) = _EbHomeStageAnalyticsModel;

  factory EbHomeStageAnalyticsModel.fromJson(Map<String, dynamic> json) =>
      _$EbHomeStageAnalyticsModelFromJson(json);
}

// Custom serialization and deserialization logic for EBStageName
EBStageName _ebStageNameFromJson(String? value) =>
    value != null ? EBStageName.fromValue(value) : EBStageName.UNDEFINED;
String? _ebStageNameToJson(EBStageName? stageName) => stageName?.value;
