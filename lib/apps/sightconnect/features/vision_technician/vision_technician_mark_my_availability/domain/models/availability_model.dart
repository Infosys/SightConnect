/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:freezed_annotation/freezed_annotation.dart';

part 'availability_model.freezed.dart';

part 'availability_model.g.dart';

@freezed
class AvailabilityModel with _$AvailabilityModel {
  const factory AvailabilityModel({required int userId,
    String? userType,
    String? mobile,
    bool? available,}) = _AvailabilityModel;

  factory AvailabilityModel.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityModelFromJson(json);
}
