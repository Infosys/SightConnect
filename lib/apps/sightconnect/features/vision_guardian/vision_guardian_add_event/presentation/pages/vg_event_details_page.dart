import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/pages/vg_add_patient_card.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/pages/vg_create_event_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_details_tab.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_patient_search_filter.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_teammate_search.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_dashboard/presentation/pages/vg_dashboard_page.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/services/shared_preference.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../shared/constants/app_color.dart';
import '../../../../../../../shared/constants/app_size.dart';

class VisionGuardianEventDetailsPage extends HookConsumerWidget {
  const VisionGuardianEventDetailsPage({super.key, required this.eventDetails});

  final VisionGuardianEventModel eventDetails;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var tabIndex = useState(0);
    var searchVisible = useState<bool>(true);
    final loc = context.loc!;
    // ref.read(addEventDetailsProvider).setEventId(eventDetails.id.toString());
    // ref.read(triageMemberProvider).setTestPersonId(eventDetails.id!);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: buildDrawer(context, ref: ref),
      appBar: CustomAppbar(
        title: Text("Event : ${eventDetails.title!} - ${eventDetails.id!}"),
        centerTitle: false,
        actions: [
          Visibility(
            visible: searchVisible.value,
            child: IconButton(
              onPressed: () {
                if (tabIndex.value == 0) {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VisionGuardianSearchPatient(
                        search: "search",
                        eventDetails: eventDetails,
                      ),
                    ),
                    (route) => false,
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const VisionGuardianSearchTeammate(
                        search: "search",
                      ),
                    ),
                  );
                }
              },
              icon: const Icon(
                Icons.search,
                color: AppColor.grey,
              ),
            ),
          ),
        ],
        leadingIcon: Builder(
          builder: (context) => InkWell(
            onTap: () async {
              Scaffold.of(context).openDrawer();
              // ref.read(addEventDetailsProvider).resetListOfEventPatients();
              // await SharedPreferenceService.clearEventId();
              // Navigator.pop(context);
            },
            child: const Icon(
              Icons.menu,
              size: 35,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.symmetric(horizontal: AppSize.km),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                fullscreenDialog: true,
                builder: (context) => const VisionGuardianAddPatient(
                  triageMode: TriageMode.EVENT,
                ),
              ),
            );
          },
          child: Container(
            height: AppSize.height(context) * 0.06,
            padding: const EdgeInsets.only(bottom: AppSize.ks - 1),
            margin: const EdgeInsets.only(bottom: AppSize.kl),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor.yellow,
              boxShadow: const <BoxShadow>[
                BoxShadow(
                  color: AppColor.grey,
                  blurRadius: 8,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Center(
              child: Text(
                loc.startAssessment,
                style: applyRobotoFont(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColor.black,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              EventDetailsTab(eventDetails: eventDetails),
            ],
          ),
        ),
      ),
    );
  }

  Drawer buildDrawer(BuildContext context, {required WidgetRef ref}) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: AppColor.primary,
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: AppColor.white,
                  child: (eventDetails.images != null &&
                          eventDetails.images!.isNotEmpty)
                      ? ClipOval(
                          child: Image.network(
                            _getImageUrl(eventDetails.images![0]),
                            width: 60,
                            height: 60,
                            fit: BoxFit.fill,
                          ),
                        )
                      : Center(
                          child: Text(
                            "NO IMAGE",
                            style: applyRobotoFont(
                                color: AppColor.black, fontSize: 12),
                          ),
                        ),
                ),
                const SizedBox(height: AppSize.km),
                Text(
                  " ${eventDetails.title}",
                  style: applyRobotoFont(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColor.white,
                  ),
                ),
                const SizedBox(height: AppSize.ks),
                Text(
                  eventDetails.description!,
                  style: applyRobotoFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColor.white,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text("All Events"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const VisionGuardianEventPage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text("Home"),
            onTap: () async {
              await SharedPreferenceService.clearEventId();
              if (context.mounted) {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const VisionGuardianDashboardPage(),
                  ),
                  (route) => false,
                );
              }
            },
          ),
          // ListTile(
          //   title: const Text("Create New Event"),
          //   onTap: () {
          //     ref.read(addEventDetailsProvider).setIsLoading();
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => const VGAddEventDetailsPage(),
          //       ),
          //     );
          //   },
          // ),
          // ListTile(
          //   title: const Text("Settings"),
          //   onTap: () {
          //     Navigator.pop(context);
          //   },
          // ),
        ],
      ),
    );
  }
}

String _getImageUrl(VisionGuardianEventImage image) {
  String imageUrl = "${image.baseUrl}${image.endpoint}";
  return imageUrl;
}
