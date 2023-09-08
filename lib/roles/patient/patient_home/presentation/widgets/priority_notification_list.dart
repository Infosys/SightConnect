import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/priority_notification_card.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class PriorityNotificationList extends StatelessWidget {
  const PriorityNotificationList({super.key});

  @override
  Widget build(BuildContext context) {
    var doctor = [
      {
        "name": "Dr. Prashant Garg",
        "profession": "Ophthalmologist",
        "recommendation":
            "Dr. Prashant Garg is recommended for Retina treatment...",
        'image': 'assets/images/dr_prashant_garg.png',
        "prefix": "PG",
      },
      {
        "name": "Dr. Rajeev Pappuru",
        "profession": "Ophthalmologist",
        "recommendation":
            "Dr. Rajeev Pappuru is recommended for Retina treatment...",
        'image': 'assets/images/dr_rajeev_r_pappuru.png',
        "prefix": "RP",
      },
    ];

    return Container(
      decoration: BoxDecoration(
        boxShadow: appShadow(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "My Action Items",
            style: applyFiraSansFont(fontSize: 18),
          ),
          const SizedBox(height: AppSize.kmheight),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ...doctor
                    .map(
                      (e) => PriorityNotificationCard(
                        data: e,
                      ),
                    )
                    .toList()
              ],
            ),
          )
        ],
      ),
    );
  }
}
