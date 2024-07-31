import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/enums/performer_role.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/body_site.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/care_plan_category.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/care_plan_status.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/diagnostic_report_status.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/encounter_status.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/gaol_outcome.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/goal_achievement_status.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/goal_category.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/goal_lifecycle_status.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/goal_measure.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/goal_parameter.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/request_priority.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/service_type.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/severity.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/source.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/test_type.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/models/timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'triage_detailed_report_model.freezed.dart';
part 'triage_detailed_report_model.g.dart';

@freezed
class TriageDetailedReportModel with _$TriageDetailedReportModel {
  const factory TriageDetailedReportModel({
    int? encounterId,
    int? organizationCode,
    int? tenantCode,
    ServiceType? serviceType,
    EncounterStatus? encounterStatus,
    String? remarks,
    EncounterPeriod? encounterPeriod,
    int? diagnosticReportId,
    int? assessmentCode,
    String? assessmentVersion,
    @TimestampConverter() DateTime? issued,
    @TimestampConverter() DateTime? userStartDate,
    Source? source,
    DiagnosticReportStatus? status,
    String? sourceVersion,
    int? performerId,
    int? subject,
    PerformerRole? performerRole,
    List<IncompleteTestModel>? incompleteTests,
    List<Response>? responses,
    List<Observation>? observations,
    List<Media>? media,
    @TimestampConverter() DateTime? updateEndTime,
    String? diagnosticReportDescription,
    String? questionResultDescription,
    String? observationResultDescription,
    String? mediaResultDescription,
    Severity? cumulativeSeverity,
    Severity? observationSeverity,
    Severity? mediaSeverity,
    Severity? questionResponseSeverity,
    List<CarePlan>? carePlans,
  }) = _TriageDetailedReportModel;
  factory TriageDetailedReportModel.fromJson(Map<String, dynamic> json) =>
      _$TriageDetailedReportModelFromJson(json);
}

@freezed
class EncounterPeriod with _$EncounterPeriod {
  const factory EncounterPeriod({
    required int id,
    @TimestampConverter() DateTime? start,
    @TimestampConverter() DateTime? end,
  }) = _EncounterPeriod;

  factory EncounterPeriod.fromJson(Map<String, dynamic> json) =>
      _$EncounterPeriodFromJson(json);
}

@freezed
class IncompleteTestModel with _$IncompleteTestModel {
  const factory IncompleteTestModel({
    required int id,
    required TestType testName,
  }) = _IncompleteTestModel;

  factory IncompleteTestModel.fromJson(Map<String, dynamic> json) =>
      _$IncompleteTestModelFromJson(json);
}

@freezed
class Answer with _$Answer {
  const factory Answer({
    required int id,
    required double score,
    int? answerCode,
    required String value,
  }) = _Answer;

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);
}

@freezed
class Response with _$Response {
  const factory Response({
    required int id,
    required int linkId,
    required double score,
    List<Answer>? answers,
  }) = _Response;

  factory Response.fromJson(Map<String, dynamic> json) =>
      _$ResponseFromJson(json);
}

@freezed
class Observation with _$Observation {
  const factory Observation({
    required int id,
    int? identifier,
    String? value,
    double? score,
  }) = _Observation;

  factory Observation.fromJson(Map<String, dynamic> json) =>
      _$ObservationFromJson(json);
}

@freezed
class Media with _$Media {
  const factory Media({
    required int id,
    int? identifier,
    String? baseUrl,
    String? endpoint,
    BodySite? bodySite,
    double? score,
    String? fileId,
  }) = _Media;

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
}

@freezed
class CarePlan with _$CarePlan {
  const factory CarePlan({
    required int carePlanId,
    RequestStatus? carePlanStatus,
    CarePlanCategory? category,
    String? title,
    String? description,
    int? subject, //patient id
    @TimestampConverter() DateTime? created,
    String? note,
    EncounterPeriod? period,
    List<Condition>? conditions,
    List<Activity>? activities,
    List<Goal>? goals,
  }) = _CarePlan;

  factory CarePlan.fromJson(Map<String, dynamic> json) =>
      _$CarePlanFromJson(json);
}

@freezed
class Condition with _$Condition {
  const factory Condition({
    int? id,
    @TimestampConverter() DateTime? recordedDate,
    BodySite? bodySite,
    String? code,
    String? note,
  }) = _Condition;

  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);
}

@freezed
class Activity with _$Activity {
  const factory Activity({
    int? id,
    String? progress,
    PlannedActivityReference? plannedActivityReference,
  }) = _Activity;

  factory Activity.fromJson(Map<String, dynamic> json) =>
      _$ActivityFromJson(json);
}

@freezed
class PlannedActivityReference with _$PlannedActivityReference {
  const factory PlannedActivityReference({
    int? id,
    String? type,
    ServiceRequest? serviceRequest,
    Communication? communication,
  }) = _PlannedActivityReference;

  factory PlannedActivityReference.fromJson(Map<String, dynamic> json) =>
      _$PlannedActivityReferenceFromJson(json);
}

@freezed
class ServiceRequest with _$ServiceRequest {
  const factory ServiceRequest({
    int? id,
    int? identifier,
    String? note,
    String? patientInstruction,
    BodySite? bodySite,
    RequestPriority? priority,
  }) = _ServiceRequest;

  factory ServiceRequest.fromJson(Map<String, dynamic> json) =>
      _$ServiceRequestFromJson(json);
}

@freezed
class Communication with _$Communication {
  const factory Communication({
    int? id,
    dynamic status,
    dynamic statusReason,
    dynamic category,
    dynamic priority,
    dynamic doNotPerform,
    dynamic medium,
    dynamic subject,
    dynamic about,
    dynamic authoredOn,
    dynamic reason,
    dynamic note,
  }) = _Communication;

  factory Communication.fromJson(Map<String, dynamic> json) =>
      _$CommunicationFromJson(json);
}

@freezed
class Goal with _$Goal {
  const factory Goal({
    required int? id,
    @TimestampConverter() DateTime? statusDate,
    String? statusReason,
    GoalAchievement? achievementStatus,
    GoalLifecycleStatus? lifecycleStatus,
    GoalCategory? category,
    List<GoalOutcomeModel>? outcomes,
    @TimestampConverter() DateTime? startDate,
    @TimestampConverter() DateTime? dueDate,
    List<Target>? targets,
  }) = _Goal;

  factory Goal.fromJson(Map<String, dynamic> json) => _$GoalFromJson(json);
}

@freezed
class GoalOutcomeModel with _$GoalOutcomeModel {
  const factory GoalOutcomeModel({int? id, GoalOutcome? goalOutcome}) =
      _GoalOutcomeModel;

  factory GoalOutcomeModel.fromJson(Map<String, dynamic> json) =>
      _$GoalOutcomeModelFromJson(json);
}

@freezed
class Target with _$Target {
  const factory Target({
    int? id,
    GoalMeasure? measure,
    String? detailString,
    int? detailQuantity,
    String? detailRange,
    GoalParameter? detailCodeableConcept,
    @TimestampConverter() DateTime? dueDate,
  }) = _Target;

  factory Target.fromJson(Map<String, dynamic> json) => _$TargetFromJson(json);
}
