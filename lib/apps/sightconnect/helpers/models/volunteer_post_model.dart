/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// To parse this JSON data, do
//
//     final volunteerPostModel = volunteerPostModelFromJson(jsonString);

import 'dart:convert';

import 'package:eye_care_for_all/apps/sightconnect/helpers/models/patient_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'volunteer_post_model.freezed.dart';
part 'volunteer_post_model.g.dart';

VolunteerPostModel volunteerPostModelFromJson(String str) =>
    VolunteerPostModel.fromJson(json.decode(str));

String volunteerPostModelToJson(VolunteerPostModel data) =>
    json.encode(data.toJson());

@freezed
class VolunteerPostModel with _$VolunteerPostModel {
  const factory VolunteerPostModel({
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
  }) = _VolunteerPostModel;

  factory VolunteerPostModel.fromJson(Map<String, dynamic> json) =>
      _$VolunteerPostModelFromJson(json);
}

enum Status {
  ACTIVE,
  INACTIVE,
  PENDING,
  EXPIRED,
  REJECTED,
  REVOKED,
  SUSPENDED,
  PRE_APPROVED
}
