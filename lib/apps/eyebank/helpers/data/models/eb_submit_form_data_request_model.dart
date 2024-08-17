import 'package:freezed_annotation/freezed_annotation.dart';

part 'eb_submit_form_data_request_model.freezed.dart';
part 'eb_submit_form_data_request_model.g.dart';

@freezed
class EBSubmitFormDataRequestModel with _$EBSubmitFormDataRequestModel {
  const factory EBSubmitFormDataRequestModel({
    String? timelineName,
    String? timelineVersion,
    FormData? formData,
    String? performerId,
    String? performerRole,
    String? verifiedById,
    String? verifiedByRole,
  }) = _EBSubmitFormDataRequestModel;

  factory EBSubmitFormDataRequestModel.fromJson(Map<String, dynamic> json) =>
      _$EBSubmitFormDataRequestModelFromJson(json);
}

@freezed
class FormData with _$FormData {
  const factory FormData() = _FormData;

  factory FormData.fromJson(Map<String, dynamic> json) =>
      _$FormDataFromJson(json);
}
