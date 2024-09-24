import 'package:freezed_annotation/freezed_annotation.dart';

part 'eb_form_action_request_model.freezed.dart';
part 'eb_form_action_request_model.g.dart';

@freezed
class EBFormActionRequestModel with _$EBFormActionRequestModel {
  const factory EBFormActionRequestModel({
    @JsonKey(name: "timelineName") String? timelineName,
    @JsonKey(name: "timelineVersion") String? timelineVersion,
    @JsonKey(name: "formData") Map<String, dynamic>? eBformData,
    @JsonKey(name: "performerId") String? performerId,
    @JsonKey(name: "performerRole") String? performerRole,
    @JsonKey(name: "verifiedById") String? verifiedById,
    @JsonKey(name: "verifiedByRole") String? verifiedByRole,
  }) = _EBFormActionRequestModel;

  factory EBFormActionRequestModel.fromJson(Map<String, dynamic> json) =>
      _$EBFormActionRequestModelFromJson(json);
}
