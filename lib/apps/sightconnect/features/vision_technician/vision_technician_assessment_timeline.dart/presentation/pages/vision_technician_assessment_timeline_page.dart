/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/widgets/assessment_timeline_card.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/widgets/general_information.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/widgets/timeline_profile.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionTechnicianAssessmentTimeline extends ConsumerWidget {
  const VisionTechnicianAssessmentTimeline({
    this.patientDetails,
    super.key,
  });
  final VTPatientDto? patientDetails;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    if (patientDetails == null) {
      return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(
            loc.vtNoPatientFound,
            style: applyRobotoFont(
              fontSize: 14,
              color: AppColor.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppColor.scaffold,
      appBar: CustomAppbar(
        leadingWidth: 70,
        centerTitle: false,
        title: Text(
          "${patientDetails?.name ?? ""} - OP ${patientDetails?.id ?? ""}",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.km),
          child: Column(
            children: [
              TimelineProfile(model: patientDetails!),
              const SizedBox(height: AppSize.kl),
              GeneralInformation(model: patientDetails!),
              const SizedBox(height: AppSize.ks),
              AssessmentTimelineCard(model: patientDetails!),
              const SizedBox(height: AppSize.ks),
            ],
          ),
        ),
      ),
    );
  }
}
