/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class PatientNotificationCard extends StatelessWidget {
  const PatientNotificationCard({
    super.key,
    required this.data,
    this.onTap,
  });

  final Map<String, dynamic> data;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: const Icon(Icons.notifications_none_outlined),
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: AppSize.width(context) * 0.5,
            ),
            child: Text(
              data["title"],
              maxLines: 2,
              softWrap: true,
              style: applyFiraSansFont(fontWeight: FontWeight.w500),
            ),
          ),
          Text(
            data["time"],
            style: applyRobotoFont(
              fontSize: 11,
              color: AppColor.grey,
            ),
          )
        ],
      ),
      subtitle: Column(
        children: [
          const SizedBox(height: AppSize.ks),
          Text(
            data["description"],
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
            style: applyRobotoFont(
              fontSize: 14,
            ),
          ),
          const SizedBox(height: AppSize.km),
        ],
      ),
    );
  }
}
