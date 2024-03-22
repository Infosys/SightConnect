import 'package:eye_care_for_all/core/providers/global_tenant_provider.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/modals/NearByVisionCenterState.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:location/location.dart';

import '../../../../../core/repositories/vision_center_repository.dart';
import '../../../../../core/repositories/vision_center_repository_impl.dart';
import '../../../../../main.dart';

final nearByVisionCenterProvider =
    StateNotifierProvider<NearByVisionCenterProvider, NearByVisionCenterState>(
  (ref) {
    final visionCenterRepository = ref.watch(visionCenterRepositoryProvider);
    final globalTenant = ref.watch(globalTenantProvider);
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
      _globalTenantProvider.setTenantId(visionCenters.first.tenant?.id);
      _globalTenantProvider.setOrganizationId(visionCenters.first.tenant?.id);

      state = state.copyWith(
        isLoading: false,
        visionCenters: visionCenters,
        errorMessage: null,
      );
    } catch (e) {
      final msg = DioErrorHandler.getErrorMessage(e);
      state = state.copyWith(
        isLoading: false,
        errorMessage: msg,
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
