import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_model.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/pages/vg_event_details_page.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_data_cards.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionEventListDetails extends ConsumerWidget {
  const VisionEventListDetails({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<VisionGuardianEventModel> eventDetails =
        ref.watch(addEventDetailsProvider).events;

    return ListView.separated(
      shrinkWrap: true,
      itemCount: eventDetails.length,
      itemBuilder: (context, index) {
       return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const VisionGuardianEventDetailsPage(),
                ),
              );
            },
            child: vgEventDataCards(context, eventDetails[index]));
      }, separatorBuilder: (BuildContext context, int index) { 
        return const SizedBox(height: AppSize.ksheight,);
       },
    );
  }
}
