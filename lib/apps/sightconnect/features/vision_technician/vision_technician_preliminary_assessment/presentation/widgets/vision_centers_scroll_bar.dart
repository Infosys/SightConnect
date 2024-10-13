/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:auto_size_text/auto_size_text.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_home/presentation/modals/NearByVisionCenterState.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_home/presentation/providers/near_by_vision_center_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:location/location.dart' as location;
import 'package:permission_handler/permission_handler.dart' as handler;
import 'package:permission_handler/permission_handler.dart';

class VisionCentersScrollBar extends ConsumerStatefulWidget {
  const VisionCentersScrollBar({super.key});

  @override
  ConsumerState<VisionCentersScrollBar> createState() =>
      _VisionCentersScrollBarState();
}

class _VisionCentersScrollBarState extends ConsumerState<VisionCentersScrollBar>
    with WidgetsBindingObserver {
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
    final firstcontroller = ScrollController();
    final NearByVisionCenterState viewState =
        ref.watch(nearByVisionCenterProvider);
    final loc = context.loc!;

    return Builder(
      builder: (context) {
        if (viewState.isLoading) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        } else if (viewState.errorMessage != null) {
          return Container(
            width: AppSize.width(context) / 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: AppColor.lightGrey,
              ),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  "assets/icons/location_empty_state.svg",
                  height: 62,
                  width: 50,
                ),
                const SizedBox(height: AppSize.ks),
                Text(
                  viewState.errorMessage ?? '',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
                const SizedBox(height: AppSize.ks),
                TextButton(
                  onPressed: () async {
                    final status = viewState.permissionStatus;
                    final model = ref.read(nearByVisionCenterProvider.notifier);
                    if (status == location.PermissionStatus.deniedForever) {
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
          return Container(
            width: Responsive.isMobile(context)
                ? AppSize.width(context)
                : AppSize.width(context) / 2,
            height: Responsive.isMobile(context)
                ? AppSize.height(context) / 2
                : Responsive.isTablet(context)
                    ? AppSize.height(context) / 4
                    : AppSize.height(context) / 2.5,
            padding: const EdgeInsets.all(AppSize.ks + 2),
            decoration: BoxDecoration(
              border: Border.all(color: AppColor.lightGrey),
              borderRadius: BorderRadius.circular(AppSize.km),
            ),
            child: Scrollbar(
              thumbVisibility: true,
              controller: firstcontroller,
              child: ListView.builder(
                shrinkWrap: true,
                controller: firstcontroller,
                itemCount: viewState.visionCenters!.length,
                itemBuilder: (BuildContext context, int index) {
                  final data = viewState.visionCenters!;
                  final isSelected = ref
                      .watch(preliminaryAssessmentHelperProvider)
                      .isSelectVisionCenter(data[index]);

                  return Padding(
                    padding: const EdgeInsets.all(AppSize.ks),
                    child: InkWell(
                      onTap: () {
                        ref
                            .read(preliminaryAssessmentHelperProvider)
                            .setSelectedVisionCenter(data[index]);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: isSelected
                              ? Border.all(
                                  color: AppColor.green,
                                  width: 2,
                                )
                              : Border.all(
                                  color: AppColor.lightGrey,
                                  width: 1,
                                ),
                          borderRadius: BorderRadius.circular(AppSize.ks),
                        ),
                        padding: const EdgeInsets.all(AppSize.ks + 3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    data[index]
                                            .facilityInformation
                                            ?.facilityName ??
                                        "",
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: applyRobotoFont(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    data[index]
                                            .facilityInformation
                                            ?.facilityAddressDetails
                                            ?.addressLine1 ??
                                        "",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: applyRobotoFont(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Visibility(
                              visible: isSelected,
                              child: const Icon(
                                Icons.check_circle,
                                size: 20,
                                color: AppColor.green,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}

class VisionCenterError extends StatelessWidget {
  const VisionCenterError({
    super.key,
    required this.viewState,
    this.ref,
  });
  final NearByVisionCenterState viewState;
  // ignore: prefer_typing_uninitialized_variables
  final ref;
  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          "assets/icons/location_empty_state.svg",
          height: 32,
          width: 32,
        ),
        const SizedBox(height: AppSize.ks),
        AutoSizeText(
          viewState.errorMessage.toString().replaceAll("Exception: ", ""),
          textAlign: TextAlign.center,
          maxLines: 2,
        ),
        Builder(builder: (context) {
          if (viewState.permissionStatus == location.PermissionStatus.denied) {
            return Flexible(
              child: TextButton(
                onPressed: () {
                  ref.read(nearByVisionCenterProvider.notifier).init();
                },
                child: Text(loc.vtRequestLocationPermission),
              ),
            );
          } else if (viewState.permissionStatus ==
              location.PermissionStatus.deniedForever) {
            return Flexible(
              child: TextButton(
                onPressed: () {
                  openAppSettings();
                },
                child: Text(loc.vtAppSettings),
              ),
            );
          }

          return const SizedBox();
        }),
      ],
    );
  }
}
