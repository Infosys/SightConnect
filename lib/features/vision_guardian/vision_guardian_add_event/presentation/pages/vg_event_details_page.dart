import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_model.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/pages/vg_add_patient_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_patient_search_filter.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_teammate_search.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_size.dart';
import '../../../../../shared/theme/text_theme.dart';
import '../widgets/vg_event_details_tab.dart';
import '../widgets/vg_event_patients_tab.dart';
import '../widgets/vg_event_teammates_tab.dart';

class VisionGuardianEventDetailsPage extends HookConsumerWidget {
  const VisionGuardianEventDetailsPage({super.key, required this.eventDetails});

  final VisionGuardianEventModel eventDetails;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var tabIndex = useState(0);
    var searchVisible = useState<bool>(true);
    final loc = context.loc!;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppbar(
        title: Text(eventDetails.title!.capitalize()),
        centerTitle: false,
        actions: [
          Visibility(
            visible: searchVisible.value,
            child: IconButton(
              onPressed: () {
                if (tabIndex.value == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VisionGuardianSearchPatient(
                              search: "search",
                            )),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const VisionGuardianSearchTeammate(
                              search: "search",
                            )),
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
        leadingIcon: InkWell(
          onTap: () {
            ref.read(addEventDetailsProvider).resetListOfEventPatients();
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.chevron_left,
            size: 35,
          ),
        ),
      ),
      floatingActionButton: tabIndex.value == 0
          ? InkWell(
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
                width: AppSize.width(context) * 0.35,
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
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: '+ ',
                            style: applyRobotoFont(
                                fontSize: 24,
                                color: AppColor.black,
                                fontWeight: FontWeight.w400)),
                        TextSpan(
                          text: loc.vgAddPatient,
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
            )
          : null,
      body: DefaultTabController(
        length: 3,
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TabBar(
                onTap: (value) {
                  if (value == 1) {
                    searchVisible.value = !searchVisible.value;
                  } else {
                    searchVisible.value = true;
                  }

                  tabIndex.value = value;
                },
                dividerColor: AppColor.black,
                unselectedLabelColor: AppColor.grey,
                labelStyle: applyFiraSansFont(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
                labelColor: AppColor.primary,
                tabs: [
                  Tab(text: loc.vgPatients),
                  Tab(text: loc.vgDetails),
                  Tab(text: loc.vgTeammates),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Flexible(
                child: TabBarView(
                  viewportFraction: 1,
                  children: [
                    const EventPatientsTab(patientsType: "default"),
                    EventDetailsTab(eventDetails: eventDetails),
                    const EventTeammatesTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
