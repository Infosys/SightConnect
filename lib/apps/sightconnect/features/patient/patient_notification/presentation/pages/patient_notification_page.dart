/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_notification/presentation/widgets/patient_notification_card.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientNotificationPage extends ConsumerWidget {
  const PatientNotificationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Map<String, dynamic>> notification = [];
    final loc = context.loc!;
    return Scaffold(
      appBar: CustomAppbar(
        title: Text(loc.notificationsTitle),
        actions: const [],
      ),
      body: notification.isEmpty
          ? Center(
              child: Text(loc.notificationsNotAvailable),
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
