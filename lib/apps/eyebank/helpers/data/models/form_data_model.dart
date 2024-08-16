import 'package:eye_care_for_all/apps/eyebank/helpers/data/respositories/contracts/eb_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_data_model.freezed.dart';
part 'form_data_model.g.dart';

@freezed
class FormDataModel with _$FormDataModel {
  const factory FormDataModel({
    int? encounterId,
    String? tenantId,
    AssessmentName? assessmentName,
    String? assessmentVersion,
    List<Form>? forms,
  }) = _FormDataModel;

  factory FormDataModel.fromJson(Map<String, dynamic> json) =>
      _$FormDataModelFromJson(json);
}

@freezed
class Form with _$Form {
  const factory Form({
    int? identifier,
    IdentifierType? identifierType,
    FormData? formData,
  }) = _Form;

  factory Form.fromJson(Map<String, dynamic> json) => _$FormFromJson(json);
}

@freezed
class FormData with _$FormData {
  const factory FormData() = _FormData;

  factory FormData.fromJson(Map<String, dynamic> json) =>
      _$FormDataFromJson(json);
}
