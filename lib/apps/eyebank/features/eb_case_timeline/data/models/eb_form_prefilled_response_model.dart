import 'package:freezed_annotation/freezed_annotation.dart';

part 'eb_form_prefilled_response_model.freezed.dart';
part 'eb_form_prefilled_response_model.g.dart';

@freezed
class EBFormPrefilledResponseModel with _$EBFormPrefilledResponseModel {
  const factory EBFormPrefilledResponseModel({
    @JsonKey(name: "encounterId") String? encounterId,
    @JsonKey(name: "tenantId") String? tenantId,
    @JsonKey(name: "serviceRequestId") String? serviceRequestId,
    @JsonKey(name: "stageName") String? stageName,
    @JsonKey(name: "stageVersion") String? stageVersion,
    @JsonKey(name: "formData") dynamic formData,
    @JsonKey(name: "metaData") dynamic metaData,
  }) = _EBFormPrefilledResponseModel;

  factory EBFormPrefilledResponseModel.fromJson(Map<String, dynamic> json) =>
      _$EBFormPrefilledResponseModelFromJson(json);
}
