import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_profile/presentation/pages/vg_profile_edit.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_profile/presentation/widgets/vg_profile_name_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_profile/presentation/widgets/vg_profile_organisation_details_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_profile/presentation/widgets/vg_profile_personal_details_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_profile/presentation/widgets/vg_profile_training_certificate_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_profile/presentation/widgets/vg_profile_work_location_card.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class VgProfile extends StatelessWidget {
  const VgProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        centerTitle: false,
        leadingIcon: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new_sharp),
        ),
        title: const Text(
          "Profile",
          textAlign: TextAlign.left,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const VgProfileEdit(),
                ),
              );
            },
            icon: const Icon(Icons.edit),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
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
      ),
    );
  }
}
