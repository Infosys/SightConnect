import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_vg_provider.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_profile/presentation/widgets/vg_profile_name_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_profile/presentation/widgets/vg_profile_organisation_details_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_profile/presentation/widgets/vg_profile_personal_details_card.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VgProfile extends ConsumerWidget {
  const VgProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    return Scaffold(
      appBar: CustomAppbar(
        centerTitle: false,
        title: Row(
          children: [
            Text(
              loc.profileTitle,
              textAlign: TextAlign.left,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                final navigator = Navigator.of(context);
                ref.read(initializationProvider).logout().then(
                  (value) async {
                    navigator.pushNamedAndRemoveUntil(
                      LoginPage.routeName,
                      (route) => false,
                    );
                    ref.invalidate(initializationProvider);
                  },
                ).catchError((e) {
                  Fluttertoast.showToast(msg: loc.vgLogoutErrorMessage);
                });
              },
              icon: const Icon(
                Icons.logout,
                color: AppColor.black,
              ),
            )
          ],
        ),
        actions: const [],
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
            child: CircularProgressIndicator.adaptive(),
          );
        },
      ),
    );
  }
}
