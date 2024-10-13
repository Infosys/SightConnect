/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_home/presentation/modals/NearByVisionCenterState.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_tenant_provider.dart';
import 'package:eye_care_for_all/services/shared_preference.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:location/location.dart';

import '../../../../../../../main.dart';
import '../../../../../helpers/repositories/vision_center_repository.dart';
import '../../../../../helpers/repositories/vision_center_repository_impl.dart';

final nearByVisionCenterProvider =
    StateNotifierProvider<NearByVisionCenterProvider, NearByVisionCenterState>(
  (ref) {
    final visionCenterRepository = ref.watch(visionCenterRepositoryProvider);
    final globalTenant = ref.read(globalTenantProvider);
    return NearByVisionCenterProvider(visionCenterRepository, globalTenant);
  },
);

class NearByVisionCenterProvider
    extends StateNotifier<NearByVisionCenterState> {
  final VisionCenterRepository _visionCenterRepository;
  final GlobalTenantProvider _globalTenantProvider;

  LocationData? data;
  Location location = Location();
  bool _isInitializing = false;

  NearByVisionCenterProvider(
    VisionCenterRepository visionCenterRepository,
    GlobalTenantProvider globalTenantProvider,
  )   : _visionCenterRepository = visionCenterRepository,
        _globalTenantProvider = globalTenantProvider,
        super(NearByVisionCenterState.initial());

  Future<void> init() async {
    if (_isInitializing) return;
    _isInitializing = true;

    state = state.copyWith(
      isLoading: true,
      visionCenters: null,
      errorMessage: null,
    );
    location = Location();
    final serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      final enableService = await location.requestService();
      if (!enableService) {
        state = state.copyWith(
          isLoading: false,
          errorMessage: "Location service is not enabled.",
        );
        _isInitializing = false;
        return;
      }
    }
    final permissionStatus = await location.requestPermission();
    logger.d("nearByVisionCenterProvider, permissionStatus: $permissionStatus");

    switch (permissionStatus) {
      case PermissionStatus.granted:
      case PermissionStatus.grantedLimited:
        await onPermissionGranted(permissionStatus);
        break;
      case PermissionStatus.denied:
      case PermissionStatus.deniedForever:
        onPermissionDenied(permissionStatus);
        break;
      default:
        onPermissionDenied(permissionStatus);
        break;
    }
    _isInitializing = false;
  }

  Future<void> onPermissionGranted(PermissionStatus permissionStatus) async {
    state = state.copyWith(permissionStatus: permissionStatus);

    data = await location.getLocation();
    if (data == null) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: "Unable to get the location.",
      );
      return;
    }

    try {
      final visionCenters = await _visionCenterRepository.getVisionCenters(
        latitude: data?.latitude,
        longitude: data?.longitude,
      );

      // Set the tenantId and organizationId to the first vision center's tenant id
      if (SharedPreferenceService.getTenantId == null ||
          SharedPreferenceService.getOrganizationId == null) {
        logger.d(
            "visionCenters tenant id is : ${visionCenters.first.tenant?.id}, and the organization id is : ${visionCenters.first.id}");
        _globalTenantProvider.setTenantId(visionCenters.first.tenant?.id);
        _globalTenantProvider.setOrganizationId(visionCenters.first.id);
      }

      state = state.copyWith(
        isLoading: false,
        visionCenters: visionCenters,
        errorMessage: null,
      );
    } catch (e) {
      logger.e(e.toString());

      state = state.copyWith(
        isLoading: false,
        errorMessage: "We are unable to fetch the nearby vision centers.",
      );
    }
  }

  void onPermissionDenied(PermissionStatus permissionStatus) {
    const errorMessage =
        "Location permission required for nearby vision center access.";
    state = state.copyWith(
      isLoading: false,
      errorMessage: errorMessage,
      permissionStatus: permissionStatus,
    );
  }

  void enableForceReload() {
    state = state.copyWith(shouldForceReload: true);
  }

  void disableForceReload() {
    state = state.copyWith(shouldForceReload: false);
  }

  void reload() {
    disableForceReload();
    init();
  }
}
