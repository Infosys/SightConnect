import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_form_helper_widgets.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_onboarding/presentation/provider/vg_organisation_details_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VgOnboardingOrganisationDetailsCard extends HookConsumerWidget {
  const VgOnboardingOrganisationDetailsCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var data = ref.watch(visionGuardianOrganisationDetailsProvider);

    return Card(
      elevation: 2,
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          customTextField(context, data.orgID, "Org ID"),
          const SizedBox(height: AppSize.klheight),
          customTextField(context, data.visionCenterCode, "Vision Center Code"),
          const SizedBox(height: AppSize.klheight),
          customTextField(context, data.doorNo, "Adress Line 1"),
          const SizedBox(height: AppSize.klheight),
          customTextField(context, data.street, "Address Line 2"),
          const SizedBox(height: AppSize.klheight),
          customTextField(context, data.subDistrict, "Subdistrict"),
          const SizedBox(height: AppSize.klheight),
          customTextField(context, data.district, "District"),
          const SizedBox(height: AppSize.klheight),
          customTextField(context, data.city, "City"),
          const SizedBox(height: AppSize.klheight),
          customTextField(context, data.state, "State"),
          const SizedBox(height: AppSize.klheight),
          customTextField(context, data.pincode, "PIN Code"),
          const SizedBox(height: AppSize.klheight),
        ]),
      ),
    );
  }
}
