import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_onboarding/presentation/widgets/vg_onboarding_personal_address_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_onboarding/presentation/widgets/vg_onboarding_personal_name_card.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class VgOnboardingPersonal extends StatelessWidget {
  const VgOnboardingPersonal({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: AppSize.kmheight,
        ),
        const VgOnboardingPersonalNameCard(),
        const SizedBox(height: AppSize.klheight),
        Text(
          "Address",
          style: applyFiraSansFont(fontWeight: FontWeight.w500),
        ),
        const VgOnboardingPersonalAddressCard(),
      ]),
    );
  }
}
