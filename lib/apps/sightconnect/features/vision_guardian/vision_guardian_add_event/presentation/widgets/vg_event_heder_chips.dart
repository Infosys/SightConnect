/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../shared/constants/app_color.dart';
import '../../../../../../../shared/constants/app_size.dart';

Widget vgEventHeaderChips(ValueNotifier<int> isSelected, BuildContext context,
    List<String> eventStatus) {
  return Consumer(
    builder: (context, ref, child) {
      return SizedBox(
        height: AppSize.height(context) * 0.04,
        width: AppSize.width(context) * 0.95,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: eventStatus.length,
          itemBuilder: (BuildContext context, int index) {
            var data = eventStatus[index];

            return InkWell(
              onTap: () {
                if (isSelected.value != index) {
                  isSelected.value = index;
                  ref
                      .read(addEventDetailsProvider)
                      .filterListEvents(isSelected.value, data);
                }
              },
              child: Container(
                margin: const EdgeInsets.only(right: AppSize.ks),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: isSelected.value == index
                        ? AppColor.blue
                        : AppColor.grey,
                  ),
                  color: isSelected.value == index
                      ? const Color(0xFFC9DAFD)
                      : AppColor.white,
                  borderRadius: BorderRadius.circular(
                    AppSize.ks,
                  ),
                ),
                child: Center(
                  child: Text(
                    data,
                    style: applyRobotoFont(
                        fontSize: 14,
                        color: AppColor.black,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            );
          },
        ),
      );
    },
  );
}
