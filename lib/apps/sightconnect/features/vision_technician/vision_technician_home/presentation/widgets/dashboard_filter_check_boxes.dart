/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_home/presentation/provider/vision_technician_search_filter_provider.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DashboardFilterCheckBoxes extends StatelessWidget {
  final List<Map<String, Object>> items;
  final String name;
  const DashboardFilterCheckBoxes(
      {super.key, required this.items, required this.name});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Text(
          name,
          style: applyFiraSansFont(
            fontSize: 18,
            color: AppColor.black,
            fontWeight: FontWeight.w400,
          ),
        ),
        Consumer(
          builder: (context, ref, child) {
            return Wrap(
              children: [
                for (int index = 0; index < items.length; index++) ...[
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text(
                      items[index]["type"] as String,
                      style: applyRobotoFont(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: AppColor.grey),
                    ),
                    value: items[index]["checked"] as bool,
                    onChanged: (bool? value) {
                      ref
                          .read(visionTechnicianSearchFilterProvider.notifier)
                          .toggleFilterBoxes(name, index);
                    },
                  )
                ],
              ],
            );
          },
        ),
      ],
    );
  }
}
