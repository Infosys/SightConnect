import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/body_site.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/code.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/patient_instruction.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/patient/patient_authentication/domain/models/enums/status.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/data/enums/vt_close_assessment_enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'care_plan_model.freezed.dart';
part 'care_plan_model.g.dart';

@freezed
class CarePlanModel with _$CarePlanModel {
  const factory CarePlanModel({
    List<ReportModel>? reports,
    int? encounterId,
    int? organizationCode,
    List<PerformerModel>? performer,
    List<ConditionModel>? conditions,
    List<ServiceRequestModel>? serviceRequest,
    String? note,
    String? startDate,
    List<GoalModel>? goal,
  }) = _CarePlanModel;

  factory CarePlanModel.fromJson(Map<String, dynamic> json) =>
      _$CarePlanModelFromJson(json);
}

@freezed
class ReportModel with _$ReportModel {
  const factory ReportModel({
    int? id,
  }) = _ReportModel;

  factory ReportModel.fromJson(Map<String, dynamic> json) =>
      _$ReportModelFromJson(json);
}

@freezed
class PerformerModel with _$PerformerModel {
  const factory PerformerModel({
    Role? role,
    int? identifier,
  }) = _PerformerModel;

  factory PerformerModel.fromJson(Map<String, dynamic> json) =>
      _$PerformerModelFromJson(json);
}

@freezed
class ConditionModel with _$ConditionModel {
  const factory ConditionModel({
    String? recordedDate,
    BodySite? bodySite,
    Code? code,
    String? note,
  }) = _ConditionModel;

  factory ConditionModel.fromJson(Map<String, dynamic> json) =>
      _$ConditionModelFromJson(json);
}

@freezed
class ServiceRequestModel with _$ServiceRequestModel {
  const factory ServiceRequestModel({
    String? note,
    PatientInstruction? patientInstruction,
    int? identifier,
    BodySite? bodySite,
    TriageUrgency? priority,
  }) = _ServiceRequestModel;

  factory ServiceRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceRequestModelFromJson(json);
}

@freezed
class GoalModel with _$GoalModel {
  const factory GoalModel({
    String? statusReason,
    Status? achievementStatus,
    List<GoalOutcomeModel>? outcomes,
    String? note,
    String? startDate,
    List<TargetModel>? target,
  }) = _GoalModel;

  factory GoalModel.fromJson(Map<String, dynamic> json) =>
      _$GoalModelFromJson(json);
}

@freezed
class GoalOutcomeModel with _$GoalOutcomeModel {
  const factory GoalOutcomeModel({
    GoalOutCome? goalOutcome,
  }) = _GoalOutcomeModel;

  factory GoalOutcomeModel.fromJson(Map<String, dynamic> json) =>
      _$GoalOutcomeModelFromJson(json);
}

@freezed
class TargetModel with _$TargetModel {
  const factory TargetModel({
    String? detailString,
  }) = _TargetModel;

  factory TargetModel.fromJson(Map<String, dynamic> json) =>
      _$TargetModelFromJson(json);
}

