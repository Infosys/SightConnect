import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_vg_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_profile/presentation/widgets/vg_profile_name_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_profile/presentation/widgets/vg_profile_organisation_details_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_profile/presentation/widgets/vg_profile_personal_details_card.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VgProfile extends ConsumerWidget {
  const VgProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const CustomAppbar(
        centerTitle: false,
        title: Text(
          "Profile",
          textAlign: TextAlign.left,
        ),
        actions: [],
      ),
      body: ref.watch(getVGProfileProvider).when(
        data: (data) {
          return SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VgProfileNameCard(
                    profileData: data,
                  ),
                  const SizedBox(
                    height: AppSize.kmheight,
                  ),
                  VgProfilePersonalDetailsCard(profileData: data),
                  const SizedBox(
                    height: AppSize.kmheight,
                  ),
                  //VgProfileWorkLocationCard(profileData: data),
                  const SizedBox(
                    height: AppSize.kmheight,
                  ),
                  VgProfileOrganisationDetailsCard(profileData: data),
                  const SizedBox(
                    height: AppSize.kmheight,
                  ),
                  //VgProfileTrainingCertificateCard(profileData: data),
                ],
              ),
            ),
          );
        },
        error: (e, s) {
          return Center(
            child: Text("Error $e"),
          );
        },
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
