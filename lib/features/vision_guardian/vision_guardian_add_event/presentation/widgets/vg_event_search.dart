import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/pages/vg_event_details_page.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_data_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_search_bar.dart';
import 'package:eye_care_for_all/shared/widgets/loading_overlay.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionGuardianSearchEvent extends ConsumerWidget {
  const VisionGuardianSearchEvent({super.key, required this.search});
  final String search;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var response = ref.watch(addEventDetailsProvider).searchEventResults;
    var loading = ref.watch(addEventDetailsProvider).eventLoading;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: AppSize.klheight * 3,
          title: const VisionGuardianEventSearchBar(
              readOnly: false, searchType: "event"),
          actions: const [],
        ),
        body: LoadingOverlay(
          isLoading: loading,
          overlayColor: null,
          child: response.isEmpty
              ? const Center(
                  child: Text("No Event Found"),
                )
              : SingleChildScrollView(
                  controller: ref
                      .watch(addEventDetailsProvider)
                      .searchEventListController,
                  child: Padding(
                    padding: const EdgeInsets.all(AppSize.kspadding),
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
                        if (ref
                                .watch(addEventDetailsProvider)
                                .newSearchEventList
                                .length ==
                            10)
                          const Padding(
                            padding: EdgeInsets.all(AppSize.klpadding),
                            child: CircularProgressIndicator.adaptive(),
                          ),
                      ],
                    ),
                  ),
                ),
        ));
  }
}
