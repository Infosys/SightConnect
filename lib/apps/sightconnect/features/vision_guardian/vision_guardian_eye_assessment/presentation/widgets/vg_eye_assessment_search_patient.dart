/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_eye_assessment/presentation/providers/vg_eye_assessment_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_eye_assessment/presentation/widgets/vg_eye_assessment_patient_card.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_eye_assessment/presentation/widgets/vg_eye_assessment_search_bar.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionGuardianSearchPatient extends ConsumerWidget {
  const VisionGuardianSearchPatient({super.key, required this.search});
  final String search;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_outlined),
            onPressed: () {
              // ref.read(visionGuardianEyeAssessmentProvider).resetSearchFeild();
              ref
                  .read(visionGuardianEyeAssessmentProvider)
                  .setSearchPatientList("");
              Navigator.pop(context);
            },
          ),
          toolbarHeight: AppSize.kl * 3,
          title: const VisionGuardianPatientSearchBar(readOnly: false),
          actions: const [],
        ),
        body: const SingleChildScrollView(
          child: Center(
              child: VisionGuardianEyeAssessmentPatientsCard(
            type: "search",
          )),
        ));
  }
}
