/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/enums/body_site.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/enums/patient_instruction.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_close_assessment/data/enums/vt_close_assessment_enums.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_preliminary_assessment/data/enums/category_enum.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/models/timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../common/triage/domain/models/enums/status.dart';

part 'care_plan_post_model.freezed.dart';
part 'care_plan_post_model.g.dart';

@freezed
class CarePlanPostModel with _$CarePlanPostModel {
  const factory CarePlanPostModel({
    int? id,
    List<ReportModel>? reports,
    int? encounterId,
    int? organizationCode,
    int? tenantCode,
    List<PerformerModel>? performer,
    List<ConditionModel>? conditions,
    List<ServiceRequestModel>? serviceRequest,
    String? note,
    @TimestampConverter() DateTime? startDate,
    List<GoalModel>? goal,
  }) = _CarePlanPostModel;

  factory CarePlanPostModel.fromJson(Map<String, dynamic> json) =>
      _$CarePlanPostModelFromJson(json);
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
    int? id,
    @TimestampConverter() DateTime? recordedDate,
    BodySite? bodySite,
    String? code,
    String? note,
  }) = _ConditionModel;

  factory ConditionModel.fromJson(Map<String, dynamic> json) =>
      _$ConditionModelFromJson(json);
}

@freezed
class ServiceRequestModel with _$ServiceRequestModel {
  const factory ServiceRequestModel({
    int? id,
    String? note,
    PatientInstruction? patientInstruction,
    int? identifier,
    BodySite? bodySite,
    TriagePriority? priority,
  }) = _ServiceRequestModel;

  factory ServiceRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceRequestModelFromJson(json);
}

@freezed
class GoalModel with _$GoalModel {
  const factory GoalModel({
    int? id,
    String? statusReason,
    Status? achievementStatus,
    List<GoalOutcomeModel>? outcomes,
    String? note,
    @TimestampConverter() DateTime? startDate,
    List<TargetModel>? target,
    Category? category,
  }) = _GoalModel;

  factory GoalModel.fromJson(Map<String, dynamic> json) =>
      _$GoalModelFromJson(json);
}

@freezed
class GoalOutcomeModel with _$GoalOutcomeModel {
  const factory GoalOutcomeModel({
    int? id,
    GoalOutCome? goalOutcome,
  }) = _GoalOutcomeModel;

  factory GoalOutcomeModel.fromJson(Map<String, dynamic> json) =>
      _$GoalOutcomeModelFromJson(json);
}

@freezed
class TargetModel with _$TargetModel {
  const factory TargetModel({
    int? id,
    String? detailString,
  }) = _TargetModel;

  factory TargetModel.fromJson(Map<String, dynamic> json) =>
      _$TargetModelFromJson(json);
}
