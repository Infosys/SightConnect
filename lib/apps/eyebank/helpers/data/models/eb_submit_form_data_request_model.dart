import 'package:freezed_annotation/freezed_annotation.dart';

part 'eb_submit_form_data_request_model.freezed.dart';
part 'eb_submit_form_data_request_model.g.dart';

@freezed
class EBSubmitFormDataRequestModel with _$EBSubmitFormDataRequestModel {
  const factory EBSubmitFormDataRequestModel({
    String? encounterId,
    String? timelineName,
    String? timelineVersion,
    String? stageName,
    String? stageVersion,
    dynamic formData,
    String? serviceRequestId,
    String? performerId,
    String? performerRole,
    String? verifiedById,
    String? verifiedByRole,
    dynamic metaData,
  }) = _EBSubmitFormDataRequestModel;

  factory EBSubmitFormDataRequestModel.fromJson(Map<String, dynamic> json) =>
      _$EBSubmitFormDataRequestModelFromJson(json);
}
