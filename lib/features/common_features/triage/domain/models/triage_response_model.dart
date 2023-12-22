import 'package:eye_care_for_all/core/models/timestamp_converter.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/body_site.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/source.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../patient/patient_assessments_and_tests/domain/enum/service_type.dart';
import 'enums/performer_role.dart';
import 'enums/test_name.dart';
part 'triage_response_model.freezed.dart';
part 'triage_response_model.g.dart';
@freezed
class TriageResponseModel with _$TriageResponseModel {
  const factory TriageResponseModel({
    int? patientId,
    int? encounterId,
    ServiceType? serviceType,
    int? organizationCode,
    List<PerformerModel>? performer,
    int? assessmentCode,
    String? assessmentVersion,
    DateTime? issued,
    @TimestampConverter() DateTime? userStartDate,
    Source? source,
    String? sourceVersion,
    List<IncompleteTestModel>? incompleteSection,
    double? cummulativeScore,
    List<Map<String, int>>? score,
    List<PostImagingSelectionModel>? imagingSelection,
    List<PostObservationsModel>? observations,
    List<PostQuestionResponseModel>? questionResponse,
  }) = _TriageResponseModel;

  factory TriageResponseModel.fromJson(Map<String, dynamic> json) =>
      _$TriageResponseModelFromJson(json);
}

/////////////////////////////////////////////////////////

@freezed
class PostQuestionResponseModel with _$PostQuestionResponseModel {
  const factory PostQuestionResponseModel({
    int? linkId,
    double? score,
    List<PostAnswerModel>? answers,
  }) = _PostQuestionResponseModel;

  factory PostQuestionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PostQuestionResponseModelFromJson(json);
}

@freezed
class PostAnswerModel with _$PostAnswerModel {
  const factory PostAnswerModel({
    String? value,
    double? score,
    int? answerCode,
  }) = _PostAnswerModel;

  factory PostAnswerModel.fromJson(Map<String, dynamic> json) =>
      _$PostAnswerModelFromJson(json);
}

@freezed
class PerformerModel with _$PerformerModel {
  const factory PerformerModel({
    PerformerRole? role,
    int? identifier,
  }) = _PerformerModel;

  factory PerformerModel.fromJson(Map<String, dynamic> json) =>
      _$PerformerModelFromJson(json);
}

@freezed
class IncompleteTestModel with _$IncompleteTestModel {
  const factory IncompleteTestModel({
    int? id,
    TestName? testName,
  }) = _IncompleteTestModel;

  factory IncompleteTestModel.fromJson(Map<String, dynamic> json) =>
      _$IncompleteTestModelFromJson(json);
}

@freezed
class PostImagingSelectionModel with _$PostImagingSelectionModel {
  const factory PostImagingSelectionModel({
    int? identifier,
    String? endpoint,
    String? baseUrl,
    double? score,
    String? fileId,
    BodySite? bodySite,
  }) = _PostImagingSelectionModel;

  factory PostImagingSelectionModel.fromJson(Map<String, dynamic> json) =>
      _$PostImagingSelectionModelFromJson(json);
}

@freezed
class PostObservationsModel with _$PostObservationsModel {
  const factory PostObservationsModel({
    int? identifier,
    String? value,
    double? score,
  }) = _PostObservationsModel;

  factory PostObservationsModel.fromJson(Map<String, dynamic> json) =>
      _$PostObservationsModelFromJson(json);
}

//////////////////////////////////////////////////////////














