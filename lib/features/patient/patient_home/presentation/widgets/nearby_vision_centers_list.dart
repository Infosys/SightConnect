import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/repositories/vision_center_repository_impl.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/providers/patient_home_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/nearby_vision_center_card.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var simpleNearByVisionCenterProvider = FutureProvider(
  (ref) {
    final location = ref.watch(patientHomeProvider).data;
    return ref.watch(visionCenterRepositoryProvider).getVisionCenters(
        latitude: location?.latitude, longitude: location?.longitude);
  },
);

class NearbyVisionCentersList extends ConsumerWidget {
  const NearbyVisionCentersList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
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
          ref.watch(nearByVisionCenterProvider).when(
                data: (data) {
                  if (data.isEmpty) {
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
                error: (error, stackTrace) {
                  return Center(
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextButton.icon(
                        onPressed: () {
                          ref.read(patientHomeProvider).init();
                        },
                        label: Text(loc.tryAgainButton),
                        icon: const Icon(Icons.location_on),
                      ),
                    ),
                  );
                },
              ),
        ],
      ),
    );
  }
}
