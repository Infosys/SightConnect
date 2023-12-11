import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/pages/vg_event_details_page.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_data_cards.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_member/presentation/pages/vg_member_details_form_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/branding_widget_h.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_icon.dart';
import '../../../../../core/constants/app_size.dart';
import '../widgets/vg_event_heder_chips.dart';

class VisionGuardianEventPage extends HookWidget {
  const VisionGuardianEventPage({super.key});

  final eventStatus = const [
    'All',
    'Ongoing',
    'Upcoming',
    'Completed',
  ];
  @override
  Widget build(BuildContext context) {
    var isSelected = useState<int>(-1);
    return Scaffold(
      appBar: CustomAppbar(
        title: const Text('Event'),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: AppColor.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppIcon.filterIcon),
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
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const VisionGuardianMemberDetailsPage(),
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            vgEventHeaderChips(isSelected, context, eventStatus),
            const SizedBox(height: AppSize.klheight),
            InkWell(onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const VisionGuardianEventDetailsPage(),
                ),
              );
            }, child: vgEventDataCards(context)),
            const Spacer(),
            const BrandingWidgetH(),
          ],
        ),
      ),
    );
  }
}
