import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/priority_notification_card.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class PriorityNotificationList extends StatelessWidget {
  const PriorityNotificationList({super.key});

  @override
  Widget build(BuildContext context) {
    var doctor = [
      {
        "name": "Dr. Jagadish Rana",
        "profession": "Eye Surgeon",
        "recommendation":
            "Hey Raghavan, you have an upcoming appointment for your eye checkup on Sep 23rd at 2.00 PM.",
        'image': 'assets/images/dr_prashant_garg.png',
        "prefix": "PG",
      },
      {
        "name": "Dr. Jagadish Rana",
        "profession": "Eye Surgeon",
        "recommendation":
            "Hey Raghavan, It's time to perform your Acuity Test.\nPerform Test Now",
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
