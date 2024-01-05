import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_vg_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_profile/presentation/widgets/vg_profile_name_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_profile/presentation/widgets/vg_profile_organisation_details_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_profile/presentation/widgets/vg_profile_personal_details_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_profile/presentation/widgets/vg_profile_training_certificate_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_profile/presentation/widgets/vg_profile_work_location_card.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
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
        actions: [
          //TODO : Uncomment this when edit profile is ready
          // IconButton(
          //   onPressed: () {
          //     Navigator.of(context).push(
          //       MaterialPageRoute(
          //         builder: (context) => const VgProfileEdit(),
          //       ),
          //     );
          //   },
          //   icon: const Icon(
          //     Icons.edit_outlined,
          //     color: AppColor.grey,
          //   ),
          // )
        ],
      ),
      body: ref.watch(getVGProfileProvider).when(
        data: (data) {
          return SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Photo",
                    style: applyFiraSansFont(fontSize: 18),
                  ),
                  const SizedBox(
                    height: AppSize.kmheight,
                  ),
                  const VgProfileNameCard(),
                  const SizedBox(
                    height: AppSize.kmheight,
                  ),
                  const VgProfilePersonalDetailsCard(),
                  const SizedBox(
                    height: AppSize.kmheight,
                  ),
                  const VgProfileWorkLocationCard(),
                  const SizedBox(
                    height: AppSize.kmheight,
                  ),
                  const VgProfileOrganisationDetailsCard(),
                  const SizedBox(
                    height: AppSize.kmheight,
                  ),
                  const VgProfileTrainingCertificateCard(),
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
