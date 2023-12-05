import 'package:eye_care_for_all/core/models/timestamp_converter.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/srouce.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'triage_assessment_model.dart';
import 'enums/action_type.dart';
import 'enums/constraint.dart';
import 'enums/disabled_display.dart';
import 'enums/enable_behaviour.dart';
import 'enums/operator.dart';
import 'enums/performer_role.dart';
import 'enums/test_name.dart';
part 'triage_response_model.freezed.dart';
part 'triage_response_model.g.dart';

@freezed
class TriageResponseModel with _$TriageResponseModel {
  const factory TriageResponseModel({
    int? patientId,
    int? encounterId,
    String? serviceType,
    int? organizationCode,
    List<PerformerModel>? performer,
    int? assessmentCode,
    String? assessmentVersion,
    @TimestampConverter() DateTime? issued,
    @TimestampConverter() DateTime? userStartDate,
    Source? source,
    String? sourceVersion,
    List<IncompleteTestModel>? incompleteSection,
    double? cummulativeScore,
    List<Map<String, double>>? score,
    List<PostImagingSelectionModel>? imagingSelection,
    List<PostObservationsModel>? observations,
    List<PostQuestionResponseModel>? questionResponse,
  }) = _TriageResponseModel;

  factory TriageResponseModel.fromJson(Map<String, dynamic> json) =>
      _$TriageResponseModelFromJson(json);
}

@freezed
class PostImagingSelectionModel with _$PostImagingSelectionModel {
  const factory PostImagingSelectionModel({
    int? identifier,
    String? endpoint,
    String? baseUrl,
    double? score,
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

@freezed
class QuestionnaireResponseModel with _$QuestionnaireResponseModel {
  const factory QuestionnaireResponseModel({
    int? id,
    String? name,
    String? description,
    String? version,
    @TimestampConverter() DateTime? approvalDate,
    @TimestampConverter() DateTime? lastReviewDate,
    @TimestampConverter() DateTime? effectiveFrom,
    @TimestampConverter() DateTime? effectiveTill,
    @TimestampConverter() DateTime? creationDate,
    @TimestampConverter() DateTime? lastModifiedDate,
    int? publisherCode,
    String? publisherType,
    List<QuestionResponseModel>? questionResponseDTO,
  }) = _QuestionnaireResponseModel;

  factory QuestionnaireResponseModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireResponseModelFromJson(json);
}

@freezed
class QuestionResponseModel with _$QuestionResponseModel {
  const factory QuestionResponseModel({
    int? id,
    String? definition,
    Constraint? constraint,
    String? defaultValue,
    EnableBehaviour? enableBehaviour,
    int? maxLength,
    DisabledDisplay? disabledDisplay,
    String? prefix,
    int? weight,
    String? image,
    List<ActionOnResponseModel>? actionOnResponseDTO,
    bool? readOnly,
    bool? required,
  }) = _QuestionResponseModel;

  factory QuestionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionResponseModelFromJson(json);
}

@freezed
class ActionOnResponseModel with _$ActionOnResponseModel {
  const factory ActionOnResponseModel({
    int? id,
    Operator? operator,
    String? answer,
    ActionType? actionType,
  }) = _ActionOnResponseModel;

  factory ActionOnResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ActionOnResponseModelFromJson(json);
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
class PerformerModel with _$PerformerModel {
  const factory PerformerModel({
    PerformerRole? role,
    int? identifier,
  }) = _PerformerModel;

  factory PerformerModel.fromJson(Map<String, dynamic> json) =>
      _$PerformerModelFromJson(json);
}
