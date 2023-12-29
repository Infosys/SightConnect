import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_model.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_search.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_icon.dart';
import '../../../../../core/constants/app_size.dart';
import '../../../../../shared/theme/text_theme.dart';
import '../../../vision_guardian_add_member/presentation/pages/vg_member_details_form_page.dart';
import '../../../vision_guardian_home/data/fake_data_source.dart';
import '../widgets/vg_event_details_tab.dart';
import '../widgets/vg_event_patients_tab.dart';
import '../widgets/vg_event_teammates_tab.dart';

class VisionGuardianEventDetailsPage extends HookWidget {
  VisionGuardianEventDetailsPage({super.key, required this.eventDetails});

  VisionGuardianEventModel eventDetails;
  @override
  Widget build(BuildContext context) {
    var tabIndex = useState(0);

    return Scaffold(
        appBar: CustomAppbar(
          title: Text(eventDetails.title!),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () {
                /*   Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const VisionGuardianSearchEvent(search:"Patient"),
                ),
              ); */
              },
              icon: const Icon(
                Icons.search,
                color: AppColor.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              // icon: SvgPicture.asset(AppIcon.filterIcon),
              icon: const Icon(
                Icons.filter_alt_outlined,
                color: AppColor.grey,
              ),
            ),
          ],
          leadingIcon: InkWell(
            onTap: () {
              Navigator.popUntil(context, (route) => route.isFirst);
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
                      builder: (context) =>
                          const VisionGuardianMemberDetailsPage(),
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
                        color: AppColor.black,
                        blurRadius: 10,
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
                                  fontSize: 21,
                                  color: AppColor.black,
                                  fontWeight: FontWeight.w300)),
                          TextSpan(
                            text: 'Add Member',
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
                    print(value);
                    tabIndex.value = value;
                  },
                  dividerColor: AppColor.black,
                  unselectedLabelColor: AppColor.grey,
                  labelStyle: applyFiraSansFont(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                  labelColor: AppColor.primary,
                  tabs: const [
                    Tab(text: "Patients"),
                    Tab(text: "Details"),
                    Tab(text: "Teammates"),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Flexible(
                  child: TabBarView(
                    viewportFraction: 1,
                    children: [
                      EventPatientsTab(
                        model: casesCritical,
                      ),
                      EventDetailsTab(eventDetails: eventDetails),
                      const EventTeammatesTab(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
