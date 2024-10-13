/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/helpers/models/timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ipledge_model.freezed.dart';
part 'ipledge_model.g.dart';

@freezed
class IPledgeModel with _$IPledgeModel {
  const factory IPledgeModel({
    int? id,
    String? kinName,
    String? kinContact,
    String? kinRelation,
    @TimestampConverter() DateTime? pledgeDate,
    String? pledgeType,
    String? additionalInfo,
    int? patientId,
  }) = _IPledgeModel;

  factory IPledgeModel.fromJson(Map<String, dynamic> json) =>
      _$IPledgeModelFromJson(json);
}
