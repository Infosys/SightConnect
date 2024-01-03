import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_member/presentation/widgets/vg_form_helper_widgets.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_onboarding/presentation/provider/vg_details_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VgOnboardingPersonalAddressCard extends HookConsumerWidget {
  const VgOnboardingPersonalAddressCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var data = ref.watch(visionGuardianDetailsProvider);

    return Card(
      elevation: 2,
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          customTextField(data.doorNo, "Adress Line 1"),
          const SizedBox(height: AppSize.klheight),
          customTextField(data.street, "Address Line 2"),
          const SizedBox(height: AppSize.klheight),
          customTextField(data.subDistrict, "Subdistrict"),
          const SizedBox(height: AppSize.klheight),
          customTextField(data.district, "District"),
          const SizedBox(height: AppSize.klheight),
          customTextField(data.city, "City"),
          const SizedBox(height: AppSize.klheight),
          customTextField(data.state, "State"),
          const SizedBox(height: AppSize.klheight),
          customTextField(data.pincode, "PIN Code"),
          const SizedBox(height: AppSize.klheight),
        ]),
      ),
    );
  }
}
