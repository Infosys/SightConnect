import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_onboarding/presentation/widgets/vg_onboarding_organisation_details_card.dart';
import 'package:flutter/material.dart';

class VgOnboardingOrganisation extends StatelessWidget {
  const VgOnboardingOrganisation({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: AppSize.kmheight,
        ),
        VgOnboardingOrganisationDetailsCard(),
      ]),
    );
  }
}
