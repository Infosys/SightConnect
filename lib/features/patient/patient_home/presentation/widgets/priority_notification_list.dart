import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/priority_notification_card.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class PriorityNotificationList extends StatelessWidget {
  const PriorityNotificationList({super.key});

  @override
  Widget build(BuildContext context) {
    var data = [];
    return Container(
      decoration: BoxDecoration(
        boxShadow: applyLightShadow(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
            child: Text(
              "My Action Items",
              style: applyFiraSansFont(fontSize: 18),
            ),
          ),
          const SizedBox(height: AppSize.ksheight),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ...data
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
