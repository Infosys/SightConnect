import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'submit_form_data_request_model.freezed.dart';
part 'submit_form_data_request_model.g.dart';

@freezed
class SubmitFormDataRequestModel with _$SubmitFormDataRequestModel {
    const factory SubmitFormDataRequestModel({
        FormData? formData,
        String? performerId,
        String? performerRole,
        String? verifiedById,
        String? verifiedByRole,
    }) = _SubmitFormDataRequestModel;

    factory SubmitFormDataRequestModel.fromJson(Map<String, dynamic> json) => _$SubmitFormDataRequestModelFromJson(json);
}

@freezed
class FormData with _$FormData {
    const factory FormData() = _FormData;

    factory FormData.fromJson(Map<String, dynamic> json) => _$FormDataFromJson(json);
}
