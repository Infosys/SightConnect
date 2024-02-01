import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_home/presentation/widgets/vg_services_cards.dart';

class VisionGuardianServicesCardList extends StatelessWidget {
  const VisionGuardianServicesCardList({super.key});

  @override
  Widget build(BuildContext context) {
    var data = [
      {
        "icon": Icons.event_available,
        "textPrefix": "Create",
        "text": "Event",
        "color": AppColor.paleYellow,
      },
      {
        "icon": Icons.person_add_alt_outlined,
        "textPrefix": "Register",
        "text": "New Patient",
        "color": AppColor.orangeCream,
      },
      {
        "icon": AppIcon.navTriage,
        "textPrefix": "Eye",
        "text": "Assessment",
        "color": AppColor.cyan,
      },
    ];
    return SizedBox(
      width: Responsive.isMobile(context)
          ? AppSize.width(context) * 0.9
          : AppSize.width(context) * 0.95,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: AppSize.kmheight),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...data
                    .map(
                      (e) => VisionGuardianServicesCard(
                        data: e,
                      ),
                    )
                    .toList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
