/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_form_helper_widgets.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class VisionGuardianEventDateTimeCard extends ConsumerWidget {
  const VisionGuardianEventDateTimeCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var data = ref.watch(addEventDetailsProvider);
    final loc = context.loc!;
    return Container(
      padding: const EdgeInsets.all(AppSize.km),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: applyLightShadow(),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.km - 5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            loc.vgDateTime,
            style: applyFiraSansFont(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: AppSize.km),
          Row(
            children: [
              customTextFieldDatePicker(
                context: context,
                dateController: data.startDate,
                label: loc.vgStartDate,
                startDate: DateTime.now(),
                onDateChanged: (value) {
                  data.setStartDate(value);
                },
              ),
              const SizedBox(width: AppSize.ks),
              customTextFieldTimePicker(
                context,
                data.startTime,
                loc.vgStartTime,
                null,
              ),
            ],
          ),
          const SizedBox(height: AppSize.km),
          Row(
            children: [
              customTextFieldDatePicker(
                context: context,
                dateController: data.endDate,
                label: loc.vtEndDate,
                startDate: data.startDate.text.isEmpty
                    ? DateTime.now()
                    : DateFormat('d MMM yyyy').parse(data.startDate.text),
                onDateChanged: (value) {
                  data.setEndDate(value);
                },
              ),
              const SizedBox(width: AppSize.ks),
              customTextFieldTimePicker(context, data.endTime, loc.vtEndTime,
                  (value) {
                if (value == null || value.isEmpty) {
                  return loc.vgPleaseEnterEndTime;
                }

                if (data.startDate.text.isNotEmpty &&
                    data.startTime.text.isNotEmpty) {
                  if (data.startDate.text == data.endDate.text) {
                    if (DateFormat('HH:mm').parse(data.startTime.text).isAfter(
                        DateFormat('HH:mm').parse(data.endTime.text))) {
                      return loc.vgEndTimeGreaterThanStartTime;
                    }
                  }
                }

                return null;
              }),
            ],
          ),
        ],
      ),
    );
  }
}
