import 'package:freezed_annotation/freezed_annotation.dart';

part 'eb_form_prefilled_response_model.freezed.dart';
part 'eb_form_prefilled_response_model.g.dart';

@freezed
class EBFormPrefilledResponseModel with _$EBFormPrefilledResponseModel {
  const factory EBFormPrefilledResponseModel({
    @JsonKey(name: "encounterId") int? encounterId,
    @JsonKey(name: "tenantId") String? tenantId,
    @JsonKey(name: "stageName") String? stageName,
    @JsonKey(name: "assessmentVersion") String? assessmentVersion,
    @JsonKey(name: "forms") List<EBform>? eBforms,
  }) = _EBFormPrefilledResponseModel;

  factory EBFormPrefilledResponseModel.fromJson(Map<String, dynamic> json) =>
      _$EBFormPrefilledResponseModelFromJson(json);
}

@freezed
class EBform with _$EBform {
  const factory EBform({
    @JsonKey(name: "identifier") int? identifier,
    @JsonKey(name: "identifierType") String? identifierType,
    @JsonKey(name: "formData") Map<String, dynamic>? eBformData,
  }) = _EBform;

  factory EBform.fromJson(Map<String, dynamic> json) => _$EBformFromJson(json);
}
