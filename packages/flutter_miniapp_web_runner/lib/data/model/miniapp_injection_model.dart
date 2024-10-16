/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:freezed_annotation/freezed_annotation.dart';

part 'miniapp_injection_model.freezed.dart';
part 'miniapp_injection_model.g.dart';

@freezed
class MiniAppInjectionModel with _$MiniAppInjectionModel {
  const factory MiniAppInjectionModel({
    MiniAppActionType? action,
    String? parentPatientId,
    String? mobileNumber,
    String? token,
    String? pinCode,
    MiniAppInjectionModelRole? role,
    Map<String, dynamic>? additionalData,
    required MiniAppEnv miniAppEnv,
  }) = _MiniAppInjectionModel;
  factory MiniAppInjectionModel.fromJson(Map<String, dynamic> json) =>
      _$MiniAppInjectionModelFromJson(json);
}

enum MiniAppEnv { DEV, PROD, STAGING, TESTING }

enum MiniAppInjectionModelRole {
  VISION_TECHNICIAN,
  PATIENT,
  OPTOMETRITIAN,
  VOLUNTEER,
  VISION_GUARDIAN,
  OTHER
}

enum MiniAppActionType {
  REGISTER,
  UPDATE,
  ADD_MEMBER,
  iPLEDGE,
}
