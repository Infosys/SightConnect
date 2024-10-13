/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:freezed_annotation/freezed_annotation.dart';

part 'vg_patient_response_model.freezed.dart';
part 'vg_patient_response_model.g.dart';

@freezed
class VisionGuardianPatientResponseModel
    with _$VisionGuardianPatientResponseModel {
  factory VisionGuardianPatientResponseModel({
    int? id,
    String? name,
    String? mobile,
    String? yearOfBirth,
    String? monthOfBirth,
    String? dayOfBirth,
    String? gender,
    String? districtName,
    String? townName,
    String? pincode,
    int? encounterId,
    int? diagnosticReportId,
    String? encounterStartDate,
    String? status,
    String? category,
  }) = _VisionGuardianPatientResponseModel;

  factory VisionGuardianPatientResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$VisionGuardianPatientResponseModelFromJson(json);
}
