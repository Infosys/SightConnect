import 'package:eye_care_for_all/roles/patient/patient_notification/presentation/widgets/patient_notification_card.dart';
import 'package:flutter/material.dart';

class PatientNotificationPage extends StatelessWidget {
  static const String routeName = "/patient-notification-page";
  const PatientNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    var data = [
      {
        "title": "Dolor voluptate irure",
        "description":
            "Dolore consectetur mollit officia est nisi nulla minim. Occaecat eiusmod eu id proident duis dolore. Culpa ullamco id velit anim labore id reprehenderit. Ullamco amet anim pariatur voluptate consectetur qui voluptate. Incididunt ex do eiusmod eiusmod cillum non eiusmod Lorem nulla aliquip sunt est in.",
        "time": "1:33 PM",
      },
      {
        "title":
            "Dolor voluptate irure nostrud minim dolore ad consectetur fugiat eu occaecat.",
        "description":
            "Dolore consectetur mollit officia est nisi nulla minim. Occaecat eiusmod eu id proident duis dolore. Culpa ullamco id velit anim labore id reprehenderit. Ullamco amet anim pariatur voluptate consectetur qui voluptate. Incididunt ex do eiusmod eiusmod cillum non eiusmod Lorem nulla aliquip sunt est in.",
        "time": "1:33 PM",
      },
      {
        "title":
            "Dolor voluptate irure nostrud minim dolore ad consectetur fugiat eu occaecat.",
        "description":
            "Dolore consectetur mollit officia est nisi nulla minim. Occaecat eiusmod eu id proident duis dolore. Culpa ullamco id velit anim labore id reprehenderit. Ullamco amet anim pariatur voluptate consectetur qui voluptate. Incididunt ex do eiusmod eiusmod cillum non eiusmod Lorem nulla aliquip sunt est in.",
        "time": "1:33 PM",
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          )
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
