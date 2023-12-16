import 'package:eye_care_for_all/features/patient/patient_notification/presentation/widgets/patient_notification_card.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientNotificationPage extends ConsumerWidget {
  const PatientNotificationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Map<String, dynamic>> notification = [];
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
      body: notification.isEmpty
          ? const Center(
              child: Text('No Notifications'),
            )
          : ListView.builder(
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: notification.length,
              itemBuilder: (BuildContext context, int index) {
                return PatientNotificationCard(
                  data: notification[index],
                  onTap: () {},
                );
              },
            ),
    );
  }
}
