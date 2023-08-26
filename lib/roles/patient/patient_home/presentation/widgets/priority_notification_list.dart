import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/priority_notification_card.dart';
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
    "recommendation": "Dr. Jagadish Rana is recommended for Cataract surgery...",
    "image" : AppImages.doctor_2,
  },
  {
    "name": "Dr. Kamlesh Singh",
    "profession": "Ophthalmologist",
    "recommendation": "Dr. Kamlesh Singh is recommended for Retina treatment...",
    "image" : AppImages.doctor,
  },
  // {
  //   "name": "Dr. Manish Jain",
  //   "profession": "Optometrist",
  //   "recommendation": "Dr. Manish Jain is recommended for Contact lens fitting...",
  // }
];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Priority Notification",
          style: applyFiraSansFont(fontSize: 18),
        ),
        const SizedBox(height: AppSize.ksheight),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
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
    );
  }
}
