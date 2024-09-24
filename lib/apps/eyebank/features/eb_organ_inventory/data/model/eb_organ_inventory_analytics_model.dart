import 'package:freezed_annotation/freezed_annotation.dart';

part 'eb_organ_inventory_analytics_model.freezed.dart';
part 'eb_organ_inventory_analytics_model.g.dart';

@freezed
class EbOrganInventoryAnalyticsModel with _$EbOrganInventoryAnalyticsModel {
  const factory EbOrganInventoryAnalyticsModel({
    @JsonKey(name: "day") Day? day,
    @JsonKey(name: "week") Day? week,
    @JsonKey(name: "month") Day? month,
  }) = _EbOrganInventoryAnalyticsModel;

  factory EbOrganInventoryAnalyticsModel.fromJson(Map<String, dynamic> json) =>
      _$EbOrganInventoryAnalyticsModelFromJson(json);
}

@freezed
class Day with _$Day {
  const factory Day({
    @JsonKey(name: "in") int? dayIn,
    @JsonKey(name: "out") int? out,
  }) = _Day;

  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);
}
