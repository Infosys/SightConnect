/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:location/location.dart';

import '../../../../../helpers/models/vision_center_model.dart';

part 'NearByVisionCenterState.freezed.dart';

@freezed
class NearByVisionCenterState with _$NearByVisionCenterState {
  const factory NearByVisionCenterState({
    required bool isLoading,
    required List<OrganizationResponseModel>? visionCenters,
    String? errorMessage,
    PermissionStatus? permissionStatus,
    @Default(false) bool shouldForceReload,
  }) = _NearByVisionCenterState;

  factory NearByVisionCenterState.initial() => const NearByVisionCenterState(
        isLoading: false,
        visionCenters: [],
        errorMessage: null,
        permissionStatus: null,
        shouldForceReload: false,
      );
}
