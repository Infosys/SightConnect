import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/pages/vg_event_details_page.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_empty_result_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_data_card.dart';

import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/widgets/loading_overlay.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionEventListDetails extends ConsumerWidget {
  const VisionEventListDetails({super.key, required this.eventType});
  final String eventType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var loading = ref.watch(addEventDetailsProvider).eventLoading;
    var response = ref.watch(addEventDetailsProvider).listOfEventDetails;
    var error = ref.watch(addEventDetailsProvider).error;

    if (loading == false && error) {
      Fluttertoast.showToast(msg: "Server Error");
    }
    if (loading == false && response.isEmpty) {
      return SizedBox(
        width: Responsive.isMobile(context)
            ? AppSize.width(context) * 0.9
            : AppSize.width(context) * 0.95,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            VisionGuardianEmptyResultCard(
              type: 'Event',
            ),
          ],
        ),
      );
    }
    return LoadingOverlay(
      isLoading: loading,
      overlayColor: null,
      child: Column(
        children: [
          for (int index = 0; index < response.length; index++)
            InkWell(
              onTap: () {
                ref
                    .read(addEventDetailsProvider)
                    .setEventId(response[index].id.toString());
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
          if (ref.watch(addEventDetailsProvider).newEventList.length == 10 &&
              eventType != "default")
            const Padding(
              padding: EdgeInsets.all(AppSize.klpadding),
              child: CupertinoActivityIndicator(),
            ),
        ],
      ),
    );
  }
}
