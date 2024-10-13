/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/enums/performer_role.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/enums/source.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/service_type.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/severity.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/test_type.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/models/timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'triage_post_model.freezed.dart';
part 'triage_post_model.g.dart';

@freezed
class TriagePostModel with _$TriagePostModel {
  const factory TriagePostModel({
    int? id,
    int? patientId,
    int? encounterId,
    ServiceType? serviceType,
    int? tenantCode,
    int? organizationCode,
    List<Performer>? performer,
    int? assessmentCode,
    String? assessmentVersion,
    @TimestampConverter() DateTime? issued,
    @TimestampConverter() DateTime? userStartDate,
    Source? source,
    String? sourceVersion,
    List<PostIncompleteTestModel>? incompleteSection,
    int? cummulativeScore,
    List<Map<String, double>>? score,
    List<PostTriageImagingSelectionModel>? imagingSelection,
    List<PostTriageObservationsModel>? observations,
    List<PostTriageQuestionModel>? questionResponse,
    int? subject,
    Severity? observationSeverity,
    Severity? questionResponseSeverity,
    Severity? mediaSeverity,
    Severity? cumulativeSeverity,
    String? diagnosticReportDescription,
    String? questionResultDescription,
    String? observationResultDescription,
    String? mediaResultDescription,
    EncounterModel? encounter,
  }) = _TriagePostModel;

  factory TriagePostModel.fromJson(Map<String, dynamic> json) =>
      _$TriagePostModelFromJson(json);
}

@freezed
class EncounterModel with _$EncounterModel {
  const factory EncounterModel({
    int? id,
  }) = _EncounterModel;
  factory EncounterModel.fromJson(Map<String, dynamic> json) =>
      _$EncounterModelFromJson(json);
}

@freezed
class PostTriageQuestionModel with _$PostTriageQuestionModel {
  const factory PostTriageQuestionModel({
    int? id,
    int? linkId,
    double? score,
    List<PostTriageAnswerModel>? answers,
  }) = _PostTriageQuestionModel;

  factory PostTriageQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$PostTriageQuestionModelFromJson(json);
}

@freezed
class PostTriageAnswerModel with _$PostTriageAnswerModel {
  const factory PostTriageAnswerModel({
    String? value,
    int? id,
    int? answerCode,
    double? score,
  }) = _PostTriageAnswerModel;

  factory PostTriageAnswerModel.fromJson(Map<String, dynamic> json) =>
      _$PostTriageAnswerModelFromJson(json);
}

@freezed
class Performer with _$Performer {
  const factory Performer({
    int? id,
    PerformerRole? role,
    int? identifier,
  }) = _Performer;

  factory Performer.fromJson(Map<String, dynamic> json) =>
      _$PerformerFromJson(json);
}

@freezed
class PostIncompleteTestModel with _$PostIncompleteTestModel {
  const factory PostIncompleteTestModel({
    TestType? testName,
  }) = _PostIncompleteTestModel;

  factory PostIncompleteTestModel.fromJson(Map<String, dynamic> json) =>
      _$PostIncompleteTestModelFromJson(json);
}

@freezed
class PostTriageObservationsModel with _$PostTriageObservationsModel {
  const factory PostTriageObservationsModel({
    int? id,
    int? identifier,
    String? value,
    double? score,
  }) = _PostTriageObservationsModel;

  factory PostTriageObservationsModel.fromJson(Map<String, dynamic> json) =>
      _$PostTriageObservationsModelFromJson(json);
}

@freezed
class PostTriageImagingSelectionModel with _$PostTriageImagingSelectionModel {
  const factory PostTriageImagingSelectionModel({
    int? id,
    int? identifier,
    String? endpoint,
    String? baseUrl,
    double? score,
    String? fileId,
  }) = _PostTriageImagingSelectionModel;

  factory PostTriageImagingSelectionModel.fromJson(Map<String, dynamic> json) =>
      _$PostTriageImagingSelectionModelFromJson(json);
}
