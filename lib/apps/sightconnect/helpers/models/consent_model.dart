/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:freezed_annotation/freezed_annotation.dart';

part 'consent_model.freezed.dart';
part 'consent_model.g.dart';

@freezed
class ConsentModel with _$ConsentModel {
  const factory ConsentModel({
    int? templateId,
    String? consentVersion,
    String? templateType,
    @Default(ConsentStatus.PENDING) ConsentStatus consentStatus,
    String? acknowledgeDate,
  }) = _ConsentModel;
  factory ConsentModel.fromJson(Map<String, dynamic> json) =>
      _$ConsentModelFromJson(json);
}

enum ConsentStatus { ACKNOWLEDGED, WITHDRAWN, PENDING }
