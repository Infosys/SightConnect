import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/your_appointment_card.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class YourAppointmentCardList extends StatelessWidget {
  const YourAppointmentCardList({super.key});

  @override
  Widget build(BuildContext context) {
    var data = [
      {
        "day": "Today",
        "Time": "8:00 PM - 8:45 PM",
        "appointment": "Avinash has an appointment with Dr. Rajkumar Williams",
      },
      {
        "day": "July 1, 2023",
        "Time": "8:00 PM - 8:45 PM",
        "appointment": "Karthik has an appointment with Dr. Isha Deol",
      },
      {
        "day": "July 1, 2023",
        "Time": "8:00 PM - 8:45 PM",
        "appointment": "Ganesh has an appointment with Dr. Rajkumar Balan",
      },
    ];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: Responsive.isMobile(context)
              ? AppSize.width(context) * 0.9
              : AppSize.width(context) * 0.7,
          decoration: BoxDecoration(
            boxShadow: appShadow(),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your Appointment",
                style: applyFiraSansFont(fontSize: 18),
              ),
              const SizedBox(height: AppSize.kmheight),
              ...data
                  .map(
                    (e) => YourAppointmentCard(
                      data: e,
                    ),
                  )
                  .toList(),
            ],
          ),
        ),
      ],
    );
  }
}
