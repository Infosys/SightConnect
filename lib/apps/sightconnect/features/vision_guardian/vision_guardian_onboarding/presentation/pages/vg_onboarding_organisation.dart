/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_onboarding/presentation/widgets/vg_onboarding_organisation_details_card.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:flutter/material.dart';

class VgOnboardingOrganisation extends StatelessWidget {
  const VgOnboardingOrganisation({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: AppSize.km,
        ),
        VgOnboardingOrganisationDetailsCard(),
      ]),
    );
  }
}
