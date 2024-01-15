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
    return NearByVisionCenterProvider(visionCenterRepository);
  },
);

class NearByVisionCenterProvider
    extends StateNotifier<NearByVisionCenterState> {
  final VisionCenterRepository _visionCenterRepository;

  LocationData? data;
  Location location = Location();

  NearByVisionCenterProvider(VisionCenterRepository visionCenterRepository)
      : _visionCenterRepository = visionCenterRepository,
        super(NearByVisionCenterState.initial());

  Future<void> init() async {
    try {
      state = state.copyWith(
        isLoading: true,
        visionCenters: null,
        errorMessage: null,
      );
      location = Location();
      final permissionStatus = await location.requestPermission();
      logger
          .d("nearByVisionCenterProvider, permissionStatus: $permissionStatus");

      switch (permissionStatus) {
        case PermissionStatus.granted:
        case PermissionStatus.grantedLimited:
          onPermissionGranted(permissionStatus);
          break;
        case PermissionStatus.denied:
        case PermissionStatus.deniedForever:
          onPermissionDenied(permissionStatus);
          break;
        default:
          onPermissionDenied(permissionStatus);
          break;
      }
    } catch (e) {
      logger.e(e);
      data = null;
      final formattedMessage = e.toString().substring(11);
      state = state.copyWith(
        isLoading: false,
        errorMessage: formattedMessage,
        visionCenters: null,
      );
    }
  }

  void onPermissionGranted(PermissionStatus permissionStatus) async {
    state = state.copyWith(permissionStatus: permissionStatus);

    data = await location.getLocation();
    if (data == null) {
      throw Exception("Unable to get the location.");
    }

    final visionCenters = await _visionCenterRepository.getVisionCenters(
      latitude: data?.latitude,
      longitude: data?.longitude,
    );

    state = state.copyWith(
      isLoading: false,
      visionCenters: visionCenters,
      errorMessage: null,
    );
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
