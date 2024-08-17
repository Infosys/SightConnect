import 'package:freezed_annotation/freezed_annotation.dart';

part 'eb_form_intimation_response_model.freezed.dart';
part 'eb_form_intimation_response_model.g.dart';

@freezed
class EBFormIntimationResponseModel with _$EBFormIntimationResponseModel {
  const factory EBFormIntimationResponseModel({
    @JsonKey(name: "timelineName") String? timelineName,
    @JsonKey(name: "timelineVersion") String? timelineVersion,
    @JsonKey(name: "stage") dynamic stage,
  }) = _EBFormIntimationResponseModel;

  factory EBFormIntimationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$EBFormIntimationResponseModelFromJson(json);
}
