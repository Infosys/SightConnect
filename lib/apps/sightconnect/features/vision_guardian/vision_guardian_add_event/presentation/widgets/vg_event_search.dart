/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/pages/vg_event_details_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_data_card.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_search_bar.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
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
    final loc = context.loc!;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: AppSize.kl * 3,
        title: const VisionGuardianEventSearchBar(
          readOnly: false,
          searchType: "event",
        ),
        actions: const [],
      ),
      body: LoadingOverlay(
        isLoading: loading,
        ignoreOverlayColor: true,
        child: response.isEmpty
            ? Center(
                child: Text(loc.vgNoEventFound),
              )
            : SingleChildScrollView(
                controller: ref
                    .watch(addEventDetailsProvider)
                    .searchEventListController,
                child: Padding(
                  padding: const EdgeInsets.all(AppSize.ks),
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
                          padding: EdgeInsets.all(AppSize.kl),
                          child: CircularProgressIndicator.adaptive(),
                        ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
