import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/repositories/vision_center_repository_impl.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/nearby_vision_center_card.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var nearByVisionCenterProvider = FutureProvider(
  (ref) {
    const latitude = 0.0;
    const longitude = 0.0;
    return ref
        .watch(visionCenterRepositoryProvider)
        .getVisionCenters(latitude: latitude, longitude: longitude);
  },
);

class NearbyVisionCentersList extends ConsumerWidget {
  const NearbyVisionCentersList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: applyLightShadow(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppSize.kmwidth),
                child: Text(
                  "Nearby Vision Centers",
                  style: applyFiraSansFont(
                    fontSize: 18,
                  ),
                ),
              ),
              const Spacer(),
              // TextButton(
              //   onPressed: () {},
              //   child: Text(
              //     "See All",
              //     style: applyRobotoFont(
              //       fontSize: 14,
              //       fontWeight: FontWeight.w500,
              //       color: AppColor.blue,
              //     ),
              //   ),
              // ),
            ],
          ),
          const SizedBox(
            height: AppSize.kmheight,
          ),
          ref.watch(nearByVisionCenterProvider).when(
                data: (data) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...data
                            .map(
                              (e) => NearbyVisionCentersCard(data: e),
                            )
                            .toList()
                      ],
                    ),
                  );
                },
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                error: (error, stackTrace) => const Center(
                  child: SizedBox(),
                ),
              ),
        ],
      ),
    );
  }
}
