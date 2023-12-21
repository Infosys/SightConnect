import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_model.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_empty_result_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_list_details.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_search_bar.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionGuardianSearchEvent extends ConsumerWidget {
  const VisionGuardianSearchEvent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
     List<VisionGuardianEventModel> event=
        ref.watch(addEventDetailsProvider).events; 
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: AppSize.klheight * 3,
          title: const VisionGuardianEventSearchBar(readOnly: false),
          actions: [
          ],
        ),
        /*  floatingActionButton: VisionGuardianFloatingAddPatientAction() */

        body: (event.isEmpty)
            ? const Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  VisionGuardianEventResultCard(),
                ],
              ))
            : const VisionEventListDetails());
  }
}
