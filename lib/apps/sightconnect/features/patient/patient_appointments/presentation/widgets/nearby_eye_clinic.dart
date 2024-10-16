/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'dart:math';

import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_home/presentation/modals/NearByVisionCenterState.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_home/presentation/providers/near_by_vision_center_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/vision_centers_scroll_bar.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:location/location.dart';

class NearbyEyeClinic extends HookConsumerWidget {
  const NearbyEyeClinic({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedVisionCenterIndex = useState<int>(-1);
    LocationData? locationData =
        ref.watch(nearByVisionCenterProvider.notifier).data;

    final NearByVisionCenterState viewState =
        ref.watch(nearByVisionCenterProvider);

    if (viewState.isLoading) {
      return const Center(child: CircularProgressIndicator.adaptive());
    }
    if (viewState.errorMessage != null) {
      return VisionCenterError(
        viewState: viewState,
        ref: ref,
      );
    }

    if (viewState.visionCenters == null) {
      return const Text("No Vision Centers Found");
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Nearby Eye Clinics",
          style: applyFiraSansFont(fontSize: 18),
        ),
        const SizedBox(height: AppSize.km),
        ListView.builder(
          padding: const EdgeInsets.all(0),
          itemCount: viewState.visionCenters!.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final data = viewState.visionCenters!;

            return InkWell(
              onTap: () {
                if (selectedVisionCenterIndex.value == index) {
                  selectedVisionCenterIndex.value = -1;
                  return;
                }
                selectedVisionCenterIndex.value = index;
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: AppSize.ks,
                  horizontal: AppSize.km,
                ),
                margin: const EdgeInsets.symmetric(
                  vertical: AppSize.ks / 2,
                ),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(AppSize.ks),
                  border: Border.all(
                    color: selectedVisionCenterIndex.value == index
                        ? AppColor.primary
                        : AppColor.white,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: selectedVisionCenterIndex.value == index
                            ? AppColor.primary
                            : Colors.grey.withOpacity(0.6),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 12,
                      ),
                    ),
                    const SizedBox(width: AppSize.km),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data[index].facilityInformation?.facilityName ?? "",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: applyRobotoFont(fontSize: 14),
                        ),
                        Text(
                          "${data[index].facilityInformation?.facilityAddressDetails?.facilityRegion}",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: applyRobotoFont(
                            fontSize: 12,
                            color: AppColor.grey,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Text(
                      "${calculateDistance(
                        locationData?.longitude ?? 0,
                        locationData?.latitude ?? 0,
                        double.parse(data[index]
                                .facilityInformation
                                ?.facilityAddressDetails
                                ?.latitude ??
                            "0"),
                        double.parse(data[index]
                                .facilityInformation
                                ?.facilityAddressDetails
                                ?.longitude ??
                            "0"),
                      ).toString()} Km",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: applyRobotoFont(
                        fontSize: 12,
                        color: AppColor.grey,
                      ),
                    ),
                    // getLocation().then((value) => Text()),
                  ],
                ),
              ),
            );
          },
        )
      ],
    );
  }

  int calculateDistance(double lat1, double lon1, double lat2, double lon2) {
    var p = 0.017453292519943295;
    var c = cos;
    var a = 0.5 -
        c((lat2 - lat1) * p) / 2 +
        c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
    return int.parse((12742 * asin(sqrt(a))).floor().toString());
  }
}
