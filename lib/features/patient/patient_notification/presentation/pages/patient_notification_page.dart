import 'package:eye_care_for_all/features/patient/patient_notification/presentation/widgets/patient_notification_card.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientNotificationPage extends ConsumerWidget {
  static const String routeName = "/patient-notification-page";
  const PatientNotificationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var data = [
      {
        "title": "Patient Report Alert",
        "description":
            "Your recent test results are available. Please review them.",
        "time": "9:00 AM"
      },
      {
        "title": "Appointment Alert",
        "description":
            "You have an upcoming appointment with Dr. Smith tomorrow.",
        "time": "2:30 PM"
      },
      {
        "title": "Insurance Alert",
        "description":
            "Your insurance claim has been processed. Please check the details.",
        "time": "4:45 PM"
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: ListView.builder(
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return PatientNotificationCard(
            data: data[index],
            onTap: () {},
          );
        },
      ),
    );
  }
}
