import 'package:freezed_annotation/freezed_annotation.dart';

part 'eb_reject_case_request_model.freezed.dart';
part 'eb_reject_case_request_model.g.dart';

@freezed
class EBRejectCaseRequestModel with _$EBRejectCaseRequestModel {
  const factory EBRejectCaseRequestModel({
    @JsonKey(name: "reason") String? reason,
    @JsonKey(name: "comments") String? comments,
    @JsonKey(name: "performerId") String? performerId,
    @JsonKey(name: "performerRole") String? performerRole,
    @JsonKey(name: "verifiedById") String? verifiedById,
    @JsonKey(name: "verifiedByRole") String? verifiedByRole,
  }) = _EBRejectCaseRequestModel;

  factory EBRejectCaseRequestModel.fromJson(Map<String, dynamic> json) =>
      _$EBRejectCaseRequestModelFromJson(json);
}
