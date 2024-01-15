import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:location/location.dart';
import '../../../../../core/models/vision_center_model.dart';

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