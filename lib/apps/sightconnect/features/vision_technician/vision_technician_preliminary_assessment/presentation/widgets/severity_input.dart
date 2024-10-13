/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
// import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SeverityInput extends ConsumerWidget {
  const SeverityInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(preliminaryAssessmentHelperProvider);
    // final loc = context.loc!;
    return SizedBox(
      height: AppSize.kl * 5,
      width: Responsive.isMobile(context)
          ? double.infinity
          : AppSize.width(context) * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            // loc.vtSeverity,
            "Consultation Suggested",
            style: applyFiraSansFont(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppSize.ks),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: AppColor.lightGrey,
                  style: BorderStyle.solid,
                  width: 0.80,
                ),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: model.selectedSeverity.name,
                  isExpanded: true,
                  items: <String>[
                    "ROUTINE",
                    "URGENT",
                    "ASAP",
                    "STAT",
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    final severity = severityMapper(value);
                    model.setSeverity(severity);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  TriagePriority severityMapper(String? priority) {
    if (priority == "ROUTINE") {
      return TriagePriority.ROUTINE;
    } else if (priority == "URGENT") {
      return TriagePriority.URGENT;
    } else if (priority == "ASAP") {
      return TriagePriority.ASAP;
    } else if (priority == "STAT") {
      return TriagePriority.STAT;
    } else {
      return TriagePriority.ROUTINE;
    }
  }
}
