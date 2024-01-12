import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_list_details.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_search_bar.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionGuardianSearchEvent extends ConsumerWidget {
  const VisionGuardianSearchEvent({super.key, required this.search});
  final String search;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: AppSize.klheight * 3,
          title: const VisionGuardianEventSearchBar(
              readOnly: false, searchType: "event"),
          actions: const [],
        ),
        body: const SingleChildScrollView(
          child: Center(
              child: VisionEventListDetails(
            eventType: "search",
          )),
        ));
  }
}
