/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_home/presentation/widgets/list_of_filter_chips.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_home/presentation/widgets/vt_patient_list.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AssessmentTable extends HookConsumerWidget {
  const AssessmentTable({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: AppSize.km),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSize.km),
          child: Text(
            loc.vtAssessments,
            style: applyFiraSansFont(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: AppSize.km),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSize.km),
          child: ListOfFilterChips(),
        ),
        const SizedBox(height: AppSize.km),
        const PatientAssessmentPaginatedTable(),
      ],
    );
  }
}
