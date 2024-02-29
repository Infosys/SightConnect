import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/modals/NearByVisionCenterState.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/providers/near_by_vision_center_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/nearby_vision_center_card.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:location/location.dart' as location;
import 'package:permission_handler/permission_handler.dart' as handler;

class NearbyVisionCentersList extends ConsumerStatefulWidget {
  const NearbyVisionCentersList({super.key});

  @override
  ConsumerState<NearbyVisionCentersList> createState() =>
      _NearbyVisionCentersListState();
}

class _NearbyVisionCentersListState
    extends ConsumerState<NearbyVisionCentersList> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(nearByVisionCenterProvider.notifier).init();
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.resumed:
        if (ref.read(nearByVisionCenterProvider).shouldForceReload) {
          ref.read(nearByVisionCenterProvider.notifier).reload();
          break;
        }
      case AppLifecycleState.paused:
        if (ref.read(nearByVisionCenterProvider).permissionStatus !=
            location.PermissionStatus.granted) {
          ref.read(nearByVisionCenterProvider.notifier).enableForceReload();
        }
        break;
      default:
        break;
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    final NearByVisionCenterState viewState =
        ref.watch(nearByVisionCenterProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.kmwidth),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  loc.nearbyVisionCentersTitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: applyFiraSansFont(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: AppSize.kmheight,
          ),
          Builder(
            builder: (context) {
              if (viewState.isLoading) {
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              } else if (viewState.errorMessage != null) {
                return Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: AppColor.lightGrey,
                    ),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/location_empty_state.svg",
                        height: 62,
                        width: 50,
                      ),
                      const SizedBox(height: AppSize.ksheight),
                      Text(
                        viewState.errorMessage ?? '',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                      const SizedBox(height: AppSize.ksheight),
                      TextButton(
                        onPressed: () async {
                          final status = viewState.permissionStatus;
                          final model =
                              ref.read(nearByVisionCenterProvider.notifier);
                          if (status ==
                              location.PermissionStatus.deniedForever) {
                            if (await handler.openAppSettings()) {
                              model.init();
                            }
                          } else {
                            model.init();
                          }
                        },
                        child: const Text("Request Location Permission"),
                      ),
                    ],
                  ),
                );
              } else if (viewState.visionCenters != null) {
                if (viewState.visionCenters?.isEmpty == true) {
                  return Center(
                    child: Text(
                      loc.nearbyVisionCentersNotFound,
                      style: applyFiraSansFont(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  );
                }
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...viewState.visionCenters!
                          .map(
                            (e) => NearbyVisionCentersCard(data: e),
                          )
                          .toList()
                    ],
                  ),
                );
              } else {
                return const SizedBox();
              }
            },
          ),
        ],
      ),
    );
  }
}
