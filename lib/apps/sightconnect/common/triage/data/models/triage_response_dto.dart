import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/enums/author_type.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/enums/body_site.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/enums/category.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/enums/performer_role.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/enums/source.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/enums/status.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/enums/test_code.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/service_type.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/severity.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/test_type.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/models/timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'triage_response_dto.freezed.dart';
part 'triage_response_dto.g.dart';

@freezed
class TriageResponseDto with _$TriageResponseDto {
  const factory TriageResponseDto({
    int? id,
    int? assessmentCode,
    String? assessmentVersion,
    Category? category,
    TestCode? code,
    @TimestampConverter() DateTime? issued,
    @TimestampConverter() DateTime? userStartDate,
    Source? source,
    Status? status,
    int? subject,
    Severity? observationSeverity,
    Severity? questionResponseSeverity,
    Severity? mediaSeverity,
    Severity? cumulativeSeverity,
    String? sourceVersion,
    bool? isDeleted,
    int? performerId,
    PerformerRole? performerRole,
    List<IncompleteTest>? incompleteTests,
    List<Response>? responses,
    List<Observation>? observations,
    List<Media>? media,
    Encounter? encounter,
    @TimestampConverter() DateTime? updateEndTime,
    String? diagnosticReportDescription,
    String? questionResultDescription,
    String? observationResultDescription,
    String? mediaResultDescription,
    bool? deleted,
  }) = _TriageResponseDto;

  factory TriageResponseDto.fromJson(Map<String, dynamic> json) =>
      _$TriageResponseDtoFromJson(json);
}

@freezed
class IncompleteTest with _$IncompleteTest {
  const factory IncompleteTest({
    int? id,
    TestType? testName,
  }) = _IncompleteTest;

  factory IncompleteTest.fromJson(Map<String, dynamic> json) =>
      _$IncompleteTestFromJson(json);
}

@freezed
class Response with _$Response {
  const factory Response({
    int? id,
    @TimestampConverter() DateTime? authored,
    int? linkId,
    int? score,
    Author? author,
    List<Answer>? answers,
  }) = _Response;

  factory Response.fromJson(Map<String, dynamic> json) =>
      _$ResponseFromJson(json);
}

@freezed
class Author with _$Author {
  const factory Author({
    int? id,
    AuthorType? type,
    int? identifier,
  }) = _Author;

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
}

@freezed
class Answer with _$Answer {
  const factory Answer({
    int? id,
    int? score,
    int? answerCode,
    String? value,
  }) = _Answer;

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);
}

@freezed
class Observation with _$Observation {
  const factory Observation({
    int? id,
    int? performer,
    String? issued,
    int? identifier,
    Severity? interpretation,
    String? value,
    int? score,
  }) = _Observation;

  factory Observation.fromJson(Map<String, dynamic> json) =>
      _$ObservationFromJson(json);
}

@freezed
class Media with _$Media {
  const factory Media({
    int? id,
    int? performer,
    @TimestampConverter() DateTime? issued,
    int? identifier,
    String? baseUrl,
    String? endpoint,
    BodySite? bodySite,
    int? score,
    String? fileId,
  }) = _Media;

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
}

@freezed
class Encounter with _$Encounter {
  const factory Encounter({
    int? id,
    String? uuid,
    int? serviceProvider,
    int? subject,
    ServiceType? serviceType,
    Status? status,
    bool? isDeleted,
    String? remarks,
    int? performerReference,
    Period? period,
    String? partOf,
    String? mrn,
  }) = _Encounter;

  factory Encounter.fromJson(Map<String, dynamic> json) =>
      _$EncounterFromJson(json);
}

@freezed
class Period with _$Period {
  const factory Period({
    int? id,
    @TimestampConverter() DateTime? start,
    @TimestampConverter() DateTime? end,
  }) = _Period;

  factory Period.fromJson(Map<String, dynamic> json) => _$PeriodFromJson(json);
}
