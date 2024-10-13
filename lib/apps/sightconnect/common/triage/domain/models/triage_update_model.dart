/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/enums/performer_role.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/source.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/test_type.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/models/timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'triage_update_model.freezed.dart';
part 'triage_update_model.g.dart';

@freezed
class TriageUpdateModel with _$TriageUpdateModel {
  const factory TriageUpdateModel({
    int? patientId,
    int? diagnosticReportId,
    int? tenantCode,
    int? organizationCode,
    List<Performer>? performer,
    int? assessmentCode,
    String? assessmentVersion,
    @TimestampConverter() DateTime? issued,
    Source? source,
    String? sourceVersion,
    List<IncompleteTestModel>? incompleteSection,
    int? cummulativeScore,
    List<Map<String, int>>? score,
    List<PatchImagingSelectionModel>? imagingSelection,
    List<PatchObservationsModel>? observations,
    List<PatchQuestionResponseModel>? questionResponse,
  }) = _TriageUpdateModel;

  factory TriageUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$TriageUpdateModelFromJson(json);
}

@freezed
class PatchQuestionResponseModel with _$PatchQuestionResponseModel {
  const factory PatchQuestionResponseModel({
    int? id,
    Action? action,
    int? linkId,
    double? score,
    List<PatchAnswerModel>? answers,
  }) = _PatchQuestionResponseModel;

  factory PatchQuestionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PatchQuestionResponseModelFromJson(json);
}

@freezed
class PatchAnswerModel with _$PatchAnswerModel {
  const factory PatchAnswerModel({
    int? id,
    Action? action,
    String? value,
    int? answerCode,
    double? score,
  }) = _PatchAnswerModel;

  factory PatchAnswerModel.fromJson(Map<String, dynamic> json) =>
      _$PatchAnswerModelFromJson(json);
}

@freezed
class Performer with _$Performer {
  const factory Performer({
    PerformerRole? role,
    int? identifier,
  }) = _Performer;

  factory Performer.fromJson(Map<String, dynamic> json) =>
      _$PerformerFromJson(json);
}

@freezed
class IncompleteTestModel with _$IncompleteTestModel {
  const factory IncompleteTestModel({
    TestType? testName,
  }) = _IncompleteTestModel;

  factory IncompleteTestModel.fromJson(Map<String, dynamic> json) =>
      _$IncompleteTestModelFromJson(json);
}

@freezed
class PatchObservationsModel with _$PatchObservationsModel {
  const factory PatchObservationsModel({
    int? id,
    int? identifier,
    Action? action,
    String? value,
    double? score,
  }) = _PatchObservationsModel;

  factory PatchObservationsModel.fromJson(Map<String, dynamic> json) =>
      _$PatchObservationsModelFromJson(json);
}

@freezed
class PatchImagingSelectionModel with _$PatchImagingSelectionModel {
  const factory PatchImagingSelectionModel(
      {int? id,
      int? identifier,
      Action? action,
      String? endpoint,
      String? baseUrl,
      double? score,
      String? fileId}) = _PatchImagingSelectionModel;

  factory PatchImagingSelectionModel.fromJson(Map<String, dynamic> json) =>
      _$PatchImagingSelectionModelFromJson(json);
}

enum Action { ADD, REMOVE, UPDATE }
