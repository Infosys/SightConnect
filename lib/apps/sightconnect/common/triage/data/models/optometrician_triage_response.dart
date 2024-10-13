/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/enums/observation_code.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../helpers/models/timestamp_converter.dart';

part 'optometrician_triage_response.freezed.dart';
part 'optometrician_triage_response.g.dart';

@freezed
class OptometristTriageResponse with _$OptometristTriageResponse {
  @JsonSerializable(explicitToJson: true)
  const factory OptometristTriageResponse({
    int? id,
    String? uuid,
    String? patientId,
    int? patientAge,
    Gender? patientGender,
    String? patientEducation,
    String? patientProfession,
    String? source,
    int? reportId,
    int? enounterId,
    int? organizationCode,
    int? assessmentCode,
    @TimestampConverter() DateTime? assessmentStartTime,
    @TimestampConverter() DateTime? assessmentEndTime,
    @TimestampConverter() DateTime? physicalAssessmentStartTime,
    @TimestampConverter() DateTime? physicalAssessmentEndTime,
    String? capturedBy,
    Urgency? overallUrgency,
    String? questionnaireRemarks,
    List<QuestionResponse>? questionResponse,
    Urgency? questionnaireUrgency,
    String? questionnaireReview,
    List<Observation>? observations,
    String? observationsRemarks,
    Urgency? observationsUrgency,
    String? observationReview,
    List<MediaCapture>? mediaCapture,
    String? eyeScanReview,
    bool? assessmentCompleted,
    bool? acuityTestcompleted,
    bool? eyeScanCompleted,
    bool? mobileAssessmentCompleted,
    bool? physicalAssessmentCompleted,
    String? overallReview,
    String? questionnaireScore,
    String? observationScore,
    String? eyeScanScore,
    String? overallScore,
    bool? assessmentAssistance,
    bool? visualAcuityAssistance,
    bool? visualAcuityAided,
    bool? eyeScanAssistance,
    bool? redEye,
    bool? cataract,
    bool? redEyeOS,
    bool? redEyeOD,
    bool? cataractOD,
    bool? cataractOS,
    String? languageUsed,
    String? longDistanceUsed,
  }) = _OptometristTriageResponse;

  factory OptometristTriageResponse.fromJson(Map<String, Object?> json) =>
      _$OptometristTriageResponseFromJson(json);
}

@freezed
class QuestionResponse with _$QuestionResponse {
  const factory QuestionResponse({
    int? questionCode,
    bool? response,
  }) = _QuestionResponse;

  factory QuestionResponse.fromJson(Map<String, Object?> json) =>
      _$QuestionResponseFromJson(json);
}

@freezed
class Observation with _$Observation {
  const factory Observation({
    int? observationCode,
    double? response,
    String? observationIdentifier,
    ObservationCode? observationType,
  }) = _Observation;

  factory Observation.fromJson(Map<String, Object?> json) =>
      _$ObservationFromJson(json);
}

@freezed
class MediaCapture with _$MediaCapture {
  const factory MediaCapture({
    int? mediaCode,
    String? fileName,
    String? fileType,
    String? encodingType,
  }) = _MediaCapture;

  factory MediaCapture.fromJson(Map<String, Object?> json) =>
      _$MediaCaptureFromJson(json);
}

enum Urgency { RED, YELLOW, GREEN }

enum Gender { MALE, FEMALE, OTHERS, Male, Female, Others, M, F, O }
