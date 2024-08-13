import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_profile/presentation/widgets/vg_profile_edit_organisation_tab.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_profile/presentation/widgets/vg_profile_edit_personal_tab.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VgProfileEdit extends ConsumerWidget {
  const VgProfileEdit({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: CustomAppbar(
        centerTitle: false,
        title: Text(
          "Edit Profile",
          style: applyFiraSansFont(fontWeight: FontWeight.w500),
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TabBar(
              dividerColor: AppColor.black,
              unselectedLabelColor: AppColor.grey,
              labelStyle: applyFiraSansFont(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              labelColor: AppColor.primary,
              tabs: const [
                Tab(
                  text: "Personal",
                ),
                Tab(text: "Organisation"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Flexible(
              child: TabBarView(viewportFraction: 1, children: [
                VgProfileEditPersonalTab(),
                VgProfileEditOrganisationTab(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
