import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/pages/vg_add_event_details_page.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_list_details.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_search.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_size.dart';
import '../widgets/vg_event_heder_chips.dart';

class VisionGuardianEventPage extends HookConsumerWidget {
  const VisionGuardianEventPage({super.key});

  final eventStatus = const ["ALL", "CURRENT", "UPCOMING", "PAST", "CANCELLED"];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isSelected = useState<int>(0);
    return Scaffold(
      appBar: CustomAppbar(
        title: const Text('Event'),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {
              ref.read(addEventDetailsProvider).resetSearchEventList();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const VisionGuardianSearchEvent(
                    search: "event",
                  ),
                ),
              );
            },
            icon: const Icon(
              Icons.search,
              color: AppColor.grey,
            ),
          ),
        ],
        leadingIcon: InkWell(
          onTap: () {
            ref.read(addEventDetailsProvider).resetPagination();
            ref.read(addEventDetailsProvider).filterListEvents(0, "");
            Navigator.popUntil(context, (route) => route.isFirst);
          },
          child: const Icon(
            Icons.chevron_left,
            size: 35,
          ),
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          ref.read(addEventDetailsProvider).setIsLoading();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const VGAddEventDetailsPage(),
            ),
          );
        },
        child: Container(
          width: AppSize.width(context) * 0.35,
          height: AppSize.height(context) * 0.06,
          padding: const EdgeInsets.only(bottom: AppSize.ksheight - 1),
          margin: const EdgeInsets.only(bottom: AppSize.klheight),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColor.yellow,
            boxShadow: const <BoxShadow>[
              BoxShadow(
                color: AppColor.grey,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Center(
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: '+ ',
                    style: applyRobotoFont(
                        fontSize: 24,
                        color: AppColor.black,
                        fontWeight: FontWeight.w400),
                  ),
                  TextSpan(
                    text: 'Add Event',
                    style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColor.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: ref.watch(addEventDetailsProvider).eventListController,
        child: Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                vgEventHeaderChips(isSelected, context, eventStatus),
                const SizedBox(height: AppSize.klheight),
                const VisionEventListDetails(
                  eventType: 'viewAll',
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
