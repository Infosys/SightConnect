/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/pages/vg_event_details_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_empty_result_card.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_data_card.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/vg_event_data_provider.dart';

class VisionEventListDetails extends ConsumerWidget {
  const VisionEventListDetails({super.key, required this.eventType});
  final String eventType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(addEventDetailsProvider);
    bool loading = model.eventLoading;
    List<VisionGuardianEventModel> response = model.listOfEventDetails;
    final loc = context.loc!;

    ref.listen(addEventDetailsProvider, (previous, next) {
      if (next.error) {
        Fluttertoast.showToast(
          msg: loc.vgErrorFetchingEventDetails,
        );
      }
    });

    if (!loading && response.isEmpty) {
      return SizedBox(
        width: Responsive.isMobile(context)
            ? AppSize.width(context) * 0.9
            : AppSize.width(context) * 0.95,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            VisionGuardianEmptyResultCard(type: loc.vgEvent),
          ],
        ),
      );
    } else if (loading) {
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (int index = 0; index < response.length; index++)
          InkWell(
            onTap: () {
              ref
                  .read(addEventDetailsProvider)
                  .setEventId(response[index].id.toString());

              ref.read(vgEventDataCacheProvider).setEventDetails =
                  response[index];
              ref
                  .read(vgEventDataCacheProvider)
                  .setEventId(response[index].id ?? 0);
              // SharedPreferenceService.storeEventId(
              //     response[index].id.toString());
              // logger.f(
              //     "Event id in event list details page : ${SharedPreferenceService.getEventId!}");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return VisionGuardianEventDetailsPage(
                      eventDetails: response[index],
                    );
                  },
                ),
              );
            },
            child: VgEventDataCards(
              data: response[index],
            ),
          ),
        if (model.newEventList.length == 10 && eventType != "default")
          const Padding(
            padding: EdgeInsets.all(AppSize.kl),
            child: CircularProgressIndicator.adaptive(),
          ),
      ],
    );
  }
}
