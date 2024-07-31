// To parse this JSON data, do
//
//     final performerModel = performerModelFromJson(jsonString);

import 'dart:convert';

import 'package:eye_care_for_all/apps/sightconnect/helpers/models/patient_response_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/models/volunteer_post_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'performer_model.freezed.dart';
part 'performer_model.g.dart';

PerformerModel performerModelFromJson(String str) =>
    PerformerModel.fromJson(json.decode(str));

String performerModelToJson(PerformerModel data) => json.encode(data.toJson());

@freezed
class PerformerModel with _$PerformerModel {
  const factory PerformerModel({
    int? id,
    int? userId,
    String? userType,
    DateTime? startDate,
    DateTime? endDate,
    Status? status,
    String? remark,
    bool? isCooldown,
    DateTime? cooldownPeriod,
    PatientModel? profile,
  }) = _PerformerModel;

  factory PerformerModel.fromJson(Map<String, dynamic> json) =>
      _$PerformerModelFromJson(json);
}
