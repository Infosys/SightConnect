import 'package:eye_care_for_all/apps/eyebank/helpers/data/respositories/contracts/eb_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'submit_form_data_response_model.freezed.dart';
part 'submit_form_data_response_model.g.dart';

@freezed
class SubmitFormDataResponseModel with _$SubmitFormDataResponseModel {
  const factory SubmitFormDataResponseModel({
    int? encounterId,
    Forms? forms,
  }) = _SubmitFormDataResponseModel;

  factory SubmitFormDataResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SubmitFormDataResponseModelFromJson(json);
}

@freezed
class Forms with _$Forms {
  const factory Forms({
    int? identifier,
    IdentifierType? identifierType,
    Map<String, dynamic>? formData,
  }) = _Forms;

  factory Forms.fromJson(Map<String, dynamic> json) => _$FormsFromJson(json);
}
