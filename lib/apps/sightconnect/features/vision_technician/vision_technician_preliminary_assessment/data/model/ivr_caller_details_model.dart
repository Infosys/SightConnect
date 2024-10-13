/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ivr_caller_details_model.freezed.dart';
part 'ivr_caller_details_model.g.dart';

@freezed
class IVRCallerDetailsModel with _$IVRCallerDetailsModel{
  const factory IVRCallerDetailsModel({
    String? agentMobile,
    String? callerId,
    String? callerName,
    String? callerNumber,
  }) = _IVRCallerDetailsModel;
  factory IVRCallerDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$IVRCallerDetailsModelFromJson(json);
}