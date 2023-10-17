import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/models/timestamp_converter.dart';
part 'triage_response.freezed.dart';
part 'triage_response.g.dart';

@freezed
class TriageResponse with _$TriageResponse {
  @JsonSerializable(explicitToJson: true)
  const factory TriageResponse({
    int? patientId,
    String? source,
    int? organizationCode,
    int? assessmentCode,
    @TimestampConverter() DateTime? assessmentStartTime,
    @TimestampConverter() DateTime? assessmentEndTime,
    String? capturedBy,
    List<QuestionResponse>? questionResponse,
    List<Observation>? observations,
    List<MediaCapture>? mediaCapture,
  }) = _TriageResponse;

  factory TriageResponse.fromJson(Map<String, Object?> json) =>
      _$TriageResponseFromJson(json);
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
