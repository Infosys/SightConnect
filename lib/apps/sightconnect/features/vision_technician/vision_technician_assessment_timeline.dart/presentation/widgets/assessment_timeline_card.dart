/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/widgets/assessment_timeline.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/widgets/list_of_encounters_chip.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AssessmentTimelineCard extends StatelessWidget {
  const AssessmentTimelineCard({super.key, required this.model});
  final VTPatientDto model;
  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          loc.vtAssessmentTimeline,
          style: applyFiraSansFont(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: AppSize.km),
        ListOfEncountersChip(patientId: model.id),
        const SizedBox(height: AppSize.km),
        AssessmentTimeline(patientDetail: model),
      ],
    );
  }
}
