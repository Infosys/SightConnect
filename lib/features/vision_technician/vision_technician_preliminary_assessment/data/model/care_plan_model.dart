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
    String? role,
    int? identifier,
  }) = _PerformerModel;

  factory PerformerModel.fromJson(Map<String, dynamic> json) =>
      _$PerformerModelFromJson(json);
}

@freezed
class ConditionModel with _$ConditionModel {
  const factory ConditionModel({
    String? recordedDate,
    String? bodySite,
    String? code,
    String? note,
  }) = _ConditionModel;

  factory ConditionModel.fromJson(Map<String, dynamic> json) =>
      _$ConditionModelFromJson(json);
}

@freezed
class ServiceRequestModel with _$ServiceRequestModel {
  const factory ServiceRequestModel({
    String? note,
    String? patientInstruction,
    int? identifier,
    String? bodySite,
    String? priority,
  }) = _ServiceRequestModel;

  factory ServiceRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceRequestModelFromJson(json);
}

@freezed
class GoalModel with _$GoalModel {
  const factory GoalModel({
    String? statusReason,
    String? achievementStatus,
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
    String? goalOutcome,
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

