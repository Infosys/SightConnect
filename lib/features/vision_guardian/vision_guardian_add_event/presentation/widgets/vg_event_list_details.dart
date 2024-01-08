import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/pages/vg_event_details_page.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_empty_result_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_data_cards.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionEventListDetails extends ConsumerWidget {
  const VisionEventListDetails({super.key, required this.eventType});
  final String eventType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (eventType == "default") {
      return ref.watch(getEventDetailsProvider).when(data: (eventDetails) {
        if (eventDetails.isEmpty) {
          return SizedBox(
            width: Responsive.isMobile(context)
                ? AppSize.width(context) * 0.9
                : AppSize.width(context) * 0.95,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                VisionGuardianEmptyResultCard(type: "Event"),
              ],
            ),
          );
        }

        Widget event(event) {
          return InkWell(
            onTap: () {
              ref.read(addEventDetailsProvider).setEventId(
                    event.id.toString(),
                  );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      VisionGuardianEventDetailsPage(eventDetails: event),
                ),
              );
            },
            child: vgEventDataCards(context, event),
          );
        }

        List<Widget> events(eventDetails) {
          List<Widget> events = [];
          for (int i = 0; i < eventDetails.length; i++) {
            events.add(event(eventDetails[i]));
            events.add(const SizedBox(
              height: AppSize.ksheight,
            ));
          }
          return events;
        }

        return Column(
          children: events(eventDetails),
        );
        // return ListView.separated(
        //   shrinkWrap: true,
        //   itemCount: eventDetails.length,
        //   itemBuilder: (context, index) {
        //     return InkWell(
        //         onTap: () {
        //           ref
        //               .read(addEventDetailsProvider)
        //               .setEventId(eventDetails[index].id.toString());
        //           Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //               builder: (context) => VisionGuardianEventDetailsPage(
        //                   eventDetails: eventDetails[index]),
        //             ),
        //           );
        //         },
        //         child: vgEventDataCards(context, eventDetails[index]));
        //   },
        //   separatorBuilder: (BuildContext context, int index) {
        //     return const SizedBox(
        //       height: AppSize.ksheight,
        //     );
        //   },
        // );
      }, loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }, error: (error, stackTrace) {
        return const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [VisionGuardianEmptyResultCard(type: "Event")],
        );
      });
    } else {
      var response = ref.watch(addEventDetailsProvider).listOfEventDetails;

      return Column(children: [
        for (int index = 0; index < response.length; index++) ...[
          InkWell(
              onTap: () {
                ref
                    .read(addEventDetailsProvider)
                    .setEventId(response[index].id.toString());
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VisionGuardianEventDetailsPage(
                        eventDetails: response[index]),
                  ),
                );
              },
              child: vgEventDataCards(context, response[index])),
          const SizedBox(
            height: AppSize.ksheight,
          )
        ]
      ]);
    }
  }
}
