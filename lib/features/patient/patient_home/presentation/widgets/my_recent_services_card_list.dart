import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/my_recent_services_card.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class RecentServicesCardList extends StatelessWidget {
  const RecentServicesCardList({super.key});

  @override
  Widget build(BuildContext context) {
    var data = [
      {
        "icon": AppIcon.triage,
        "text": "Triage",
        "color": AppColor.paleYellow,
      },
      {
        "icon": AppIcon.acuityTest,
        "text": "Acuity test",
        "color": AppColor.lavanderBlue
      },
      {
        "icon": AppIcon.pledge,
        "text": "Pledge",
        "color": AppColor.teaGreen,
      },
      {
        "icon": AppIcon.eyeScanner,
        "text": "Eye Scanner",
        "color": AppColor.bisque
      },
    ];
    return SizedBox(
      width: Responsive.isMobile(context)
          ? AppSize.width(context) * 0.9
          : AppSize.width(context) * 0.7,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "My Recent Services",
                style: applyFiraSansFont(
                  fontSize: 18,
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  "See All",
                  style: applyRobotoFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.blue,
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...data
                    .map(
                      (e) => RecentServicesCard(
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
